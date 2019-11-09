module Utils (getInput, splitOn) where

getInput :: Int -> IO String
getInput day = readFile $ "inputs/day" ++ show day ++ ".txt"

splitOn :: Char -> String -> [String]
splitOn char string = splitOnImpl char string []

splitOnImpl :: Char -> String -> [String] -> [String]
splitOnImpl char [] acc = reverse acc
splitOnImpl char string acc = do
  let splittedString = takeWhile (/= char) string
  splitOnImpl char (drop ((length splittedString) + 1) string) (splittedString : acc)
