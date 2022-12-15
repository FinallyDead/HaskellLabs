myLast :: [a] -> a
myLast [] = error "List empty!"
myLast [x] = x
myLast (_:xs) = myLast xs
