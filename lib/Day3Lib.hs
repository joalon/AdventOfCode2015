module Day3Lib (everyOther) where

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

everyOther f list = map snd $ filter (\(ind, _) -> f ind) $ zip [0..] list
