module Day1 where

import Utils (getInput)
import Day1Lib (ElevatorDirection, parseToDirections)

main :: IO ()
main = do
  input <- getInput 1
  let parsed = map (\x -> case x of {
                            '(' -> 1;
                            ')' -> -1;
                            _ -> 0}) input
  let intermediate = scanl (+) 0 parsed
  let result1 = last intermediate
  let result2 = length $ takeWhile (\x -> x /= -1) intermediate
  putStrLn $ "Result of first part is: " ++ show result1
  putStrLn $ "Result of second part is: " ++ show result2
