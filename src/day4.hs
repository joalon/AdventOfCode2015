module Day4 where

import Utils (getInput)
import Data.Digest.Pure.MD5
import Data.ByteString.Lazy.UTF8 as BLU
import Data.List

mineAdventCoin secret prefix = head $ filter (\(secretSalt, partialCoin) -> isPrefixOf prefix $ show partialCoin) $ map (\secretSalt -> (secretSalt, md5 $ BLU.fromString $ secret ++ show secretSalt)) [0..]

main :: IO ()
main = do

  input <- getInput 4

  let parsed = head $ Data.List.lines input

  let result1 = fst $ mineAdventCoin parsed "00000"
  let result2 = fst $ mineAdventCoin parsed "000000"

  putStrLn $ "Result of first part is: " ++ show result1
  putStrLn $ "Result of second part is: " ++ show result2
