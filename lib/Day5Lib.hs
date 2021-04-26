module Day5Lib (isNice, containsAtleastThreeVowels, containsImmediatelyRepeatingChar) where

import Data.List

isNice :: String -> Bool
isNice str =
    not (containsNaughtyCombo str) && containsImmediatelyRepeatingChar str && containsAtleastThreeVowels str

containsNaughtyCombo :: String -> Bool
containsNaughtyCombo str
  | "ab" `isInfixOf` str = True
  | "cd" `isInfixOf` str = True
  | "pq" `isInfixOf` str = True
  | "xy" `isInfixOf` str = True
  | otherwise = False

containsImmediatelyRepeatingChar :: String -> Bool
containsImmediatelyRepeatingChar [] = False
containsImmediatelyRepeatingChar [single] = False
containsImmediatelyRepeatingChar (head : tail@(second : _))
    | head == second = True
    | otherwise = containsImmediatelyRepeatingChar tail

containsAtleastThreeVowels :: String -> Bool
containsAtleastThreeVowels str = do
    let len = length str
    let newLen = length $ filter (`notElem` "aeiou") str
    newLen < len - 2
