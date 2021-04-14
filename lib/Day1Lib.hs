module Day1Lib (ElevatorDirection (..), parseToDirections) where

data ElevatorDirection = Up | Down deriving (Show, Eq)


parseToDirections :: String -> [Maybe ElevatorDirection]
parseToDirections input = map (\x -> case x of {
                            '(' -> Just Up;
                            ')' -> Just Down;
                            _ -> Nothing }) input
