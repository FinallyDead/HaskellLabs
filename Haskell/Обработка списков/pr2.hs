myButLast :: [a] -> a
myButLast [] = error "List empty!"
myButLast [x] = error "List contains only one"
myButLast [x,_] = x
myButLast (_:xs) = myButLast xs
