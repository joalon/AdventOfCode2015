module Day3 where

import Utils (getInput)

data Dir = North | South | East | West deriving (Show)

step :: Dir -> (Int, Int) -> (Int, Int)
step West (x, y) = (x - 1, y)
step East (x, y) = (x + 1, y)
step North (x, y) = (x, y + 1)
step South (x, y) = (x, y - 1)

main :: IO ()
main = do

  input <- getInput 3

  --let parsedInput = map parse . head $ lines input where
  --    parse :: Char -> Dir
  --    parse '<' = West
  --    parse '>' = East
  --    parse '^' = North
  --    parse 'v' = South

  --let result = foldl' deliverGift [(0,0)] parsedInput where
  --  deliverGift :: Dir -> [(Int, Int)] -> [(Int,Int)]
  --  deliverGift Dir listOfLocations = [(1,1)]


  print input
