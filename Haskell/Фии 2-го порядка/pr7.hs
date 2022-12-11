module Main (main) where

main :: IO ()
main = do print $ show (flatten (Elem 5))
          print $ show (flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]]))

myMap :: (a -> b) -> [a] -> [b]
myMap _ [] = []
myMap f (x:xs) = f x : myMap f xs

myFoldr :: (a -> b -> b) -> b -> [a] -> b
myFoldr con temp = \x -> case x of
    a:as -> a `con` myFoldr con temp as
    []   -> temp  

data List a = Elem a | List [List a]
flatten :: List a -> [a]
flatten (Elem x) = [x]

flatten (List xs) =  myFoldr (++) [] $ myMap flatten xs