module Day3 where

import Test.Hspec
import Day3Lib (everyOther)

main :: IO ()
main = hspec $ do

  describe "Day 3: everyOther should return every other element of a list" $ do
    it "" $
        (everyOther even [1,2,3,4,5,6]) `shouldBe` [2,4,6]
