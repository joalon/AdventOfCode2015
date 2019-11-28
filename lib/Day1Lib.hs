module Day1Lib (ElevatorDirection (..), parseToDirections) where

data ElevatorDirection = Up | Down deriving (Show, Eq)


parseToDirections :: String -> [Maybe ElevatorDirection]
parseToDirections input = map (\x -> case x of {
                            '(' -> Just Up;
                            ')' -> Just Down;
                            _ -> Nothing }) input



  {-

  input <- getInput 1
  let intermediate = scanl (+) 0 parsed
  let result1 = last intermediate
  let result2 = length $ takeWhile (\x -> x /= -1) intermediate
  putStrLn $ "Result of first part is: " ++ show result1
  putStrLn $ "Result of second part is: " ++ show result2

  -}
