module Day5 where

import Utils (getInput)
import Day5Lib (isNice)

main = do

    input <- getInput 5

    let result1 = length $ filter isNice $ lines input

    putStrLn $ "First part is: " ++ show result1
