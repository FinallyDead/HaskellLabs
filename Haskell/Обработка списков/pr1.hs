module Main (main) where

main :: IO ()
main = print $ getLast ""

getLast ::[a] -> a
getLast a
    |null a = error "Not Enough Elements"
    |otherwise = last a