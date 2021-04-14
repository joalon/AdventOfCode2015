module Day2Lib (Gift (..), createGift, getWrappingPaperNeeded, getSmallestArea, getRibbonLength) where

import Data.List (sort)

data Gift = Gift Int Int Int deriving (Show)

createGift :: [Int] -> Gift
createGift [a, b, c] = Gift a b c
createGift anythingElse = error $ "Expected a three element list but got: " ++ show anythingElse

getWrappingPaperNeeded:: Gift -> Int
getWrappingPaperNeeded (Gift h w l) = 2 * l * w + 2 * w * h + 2 * h * l + getSmallestArea h w l

getSmallestArea :: Int -> Int -> Int -> Int
getSmallestArea h w l = min (h*w) $ min (w*l) (l*h)

getRibbonLength :: Gift -> Int
getRibbonLength (Gift h l w) = do
  let sortedByLength = sort [h, l, w]
  let first = head sortedByLength
  let second = head $ tail sortedByLength
  let ribbonWrap = first + first + second + second
  let ribbonBow = h * l * w
  ribbonWrap + ribbonBow
