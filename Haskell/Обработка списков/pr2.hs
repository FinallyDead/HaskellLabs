module Main (main) where

main :: IO ()
main = print $ getButLast "abcde"

getButLast :: [a] -> a
getButLast a 
    |length a < 2 = error "Not Enough Elements"
    |otherwise = last $ init a