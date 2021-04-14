module Day2 where

import Utils (getInput, splitOn)
import Day2Lib (Gift, createGift, getWrappingPaperNeeded, getRibbonLength)

main :: IO ()
main = do
  input <- getInput 2
  let parsedIntList = map (\x -> map (\y -> read y :: Int) x) (map (splitOn 'x') (lines input))
  let gifts = map createGift parsedIntList

  let result1 = foldr (\element acc -> acc + getWrappingPaperNeeded element) 0 gifts
  putStrLn $ "Part 1 result is: " ++ show result1

  let result2 = foldr (\element acc -> acc + getRibbonLength element) 0 gifts
  putStrLn $ "Result of part 2 is: " ++ show result2

