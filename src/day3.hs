module Day3 where

import Utils (getInput)
import Data.List (sort, head, length, group)

data Dir = North | South | East | West deriving (Show)

step :: Dir -> (Int, Int) -> (Int, Int)
step West (x, y) = (x - 1, y)
step East (x, y) = (x + 1, y)
step North (x, y) = (x, y + 1)
step South (x, y) = (x, y - 1)

parse :: Char -> Dir
parse '<' = West
parse '>' = East
parse '^' = North
parse 'v' = South

visitedLocations :: [Dir] -> [(Int, Int)]
visitedLocations directions = foldl (\list@(head:_) dir -> step dir head : list) [(0, 0)] directions

locationsVisitedAtLeastOnce :: [(Int, Int)] -> Int
locationsVisitedAtLeastOnce locations = length . group $ sort locations

main :: IO ()
main = do
  input <- getInput 3
  let directions = map parse . head $ lines input
  let allVisitedLocations = visitedLocations directions

  let result1 = locationsVisitedAtLeastOnce allVisitedLocations

  let santasVisitedLocations = map snd $ filter (\(ind, _) -> even ind) $ zip [0..] allVisitedLocations
  let robosantasVisitedLocations = map snd $ filter (\(ind, _) -> odd ind) $ zip [0..] allVisitedLocations
  print $ tail santasVisitedLocations
  let result2 = locationsVisitedAtLeastOnce $ santasVisitedLocations ++ robosantasVisitedLocations

  putStrLn $ "Part 1 result is: " ++ show result1
  putStrLn $ "Part 2 result is: " ++ show result2
