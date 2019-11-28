module Day2 where

import Utils (getInput, splitOn)
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

main :: IO ()
main = do
  input <- getInput 2
  let parsedIntList = map (\x -> map (\y -> read y :: Int) x) (map (splitOn 'x') (lines input))
  let gifts = map createGift parsedIntList

  let result1 = foldr (\element acc -> acc + getWrappingPaperNeeded element) 0 gifts
  putStrLn $ "Part 1 result is: " ++ show result1

  let result2 = foldr (\element acc -> acc + getRibbonLength element) 0 gifts
  putStrLn $ "Result of part 2 is: " ++ show result2

