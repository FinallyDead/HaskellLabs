module Main (main) where

main :: IO ()
main = print $ elementAt [1,2,3] 2

elementAt :: [a] -> Int -> a
elementAt a b 
    |   b < 0 || b >= length a = error "Current Index not Allowed"
    |   otherwise = a !! b