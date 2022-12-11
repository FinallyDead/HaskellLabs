module Main (main) where

main :: IO ()
main = do
    print $ myLength ""
--  > 0
    print $ myLength "abcde"
--  > 5
    print $ myLength [1, 2, 3]
--  > 3

myLength :: [a] -> Int
myLength = foldr (const (+1)) 0