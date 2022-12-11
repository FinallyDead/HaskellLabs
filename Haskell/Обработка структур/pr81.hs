module Main (main) where
main::IO()
main =  do print $ show (path 1 2 n1)
           print $ show (path 2 4 n2)
           print $ show (path 5 6 n1)
           print $ show (path 1 5 n2)

n1 = [(1,2),(2,3),(1,3),(3,4),(4,2),(5,6)]
n2 = [(1,2),(1,3),(1,4),(3,4),(4,5)]       

path :: Eq a => a -> a -> [(a, a)] -> [[a]]
path x y z
    | x == y = [[y]]
    | otherwise = [ [x] ++ via | up <- z, (fst up) == x, via <- path (snd up) y [e | e <- z, e /= up]