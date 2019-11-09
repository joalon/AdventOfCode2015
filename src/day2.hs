module Day2 where

import Utils (getInput, splitOn)

main :: IO ()
main = do
  input <- getInput 2

  let bce = map (splitOn 'x') (lines input)

  print bce
