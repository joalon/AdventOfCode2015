module Day2 where

import Test.Hspec
import Day2Lib (Gift(..), getWrappingPaperNeeded, createGift)

main :: IO ()
main = hspec $ do

  describe "Day 2: get the right amount of wrapping paper for a present" $ do
    it "A gift with the dimensions 2, 3, 4 should require 58 units of wrapping paper" $
        (getWrappingPaperNeeded $ createGift [2,3,4]) `shouldBe` 58
