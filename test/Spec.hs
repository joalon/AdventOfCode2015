module Spec where

import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "add" $ do
    it "Adds two and two" $
      (+) 2 2 `shouldBe` 4


