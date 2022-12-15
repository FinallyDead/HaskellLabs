mysplit' :: [a] -> [a] -> Int -> ([a], [a])
mysplit' xs ys 0 = (xs, ys)
mysplit' xs [] _ = (xs, [])
mysplit' xs (y:ys) i = mysplit' (xs ++ [y]) ys (i-1)

mysplit = mysplit' []