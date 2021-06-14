module Day1 where

import Test.Hspec
import Day1Lib (ElevatorDirection(..), parseToDirections)

main :: IO ()
main = hspec $ do

  describe "Day 1: parsing from string to the data type works" $ do
    it "Turns \"(())\" into the elevator directions Up, Up, Down, Down" $
      parseToDirections "(())" `shouldBe` [Just Up, Just Up, Just Down, Just Down]


  -- describe "(()) and ()() both result in floor 0" $ do


  -- describe "((( and (()(()( both result in floor 3" $ do


  -- describe "))((((( also results in floor 3" $ do


  -- describe "()) and ))( both result in floor -1 (the first basement level)" $ do


  -- describe "))) and )())()) both result in floor -3" $ do

