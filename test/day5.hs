module Day5 where

import Test.Hspec
import Day5Lib (isNice, containsAtleastThreeVowels, containsImmediatelyRepeatingChar)

main :: IO ()
main = hspec $ do

  describe "Day 5: Nice string" $ do
    it "\"ugknbfddgicrmopn\" is a nice string" $
      isNice "ugknbfddgicrmopn" `shouldBe` True


  describe "Day 5: Naughty string" $ do
    it "\"haegwjzuvuyypxyu\" is a naughty string" $
      isNice "haegwjzuvuyypxyu" `shouldBe` False

  describe "Day 5: string contains vowels" $ do
    it "\"aeiou\" contains at least 3 vowels" $
      containsAtleastThreeVowels "aeiou" `shouldBe` True

  describe "Day 5: string contains repeating chars" $ do
    it "\"asdfaadf\" contains an immediately repeating char (aa)" $
      containsImmediatelyRepeatingChar "asdfaadf" `shouldBe` True

  describe "Day 5: string contains no repeating chars" $ do
    it "\"asdfadf\" contains no immediately repeating char" $
      containsImmediatelyRepeatingChar "asdfadf" `shouldBe` False
