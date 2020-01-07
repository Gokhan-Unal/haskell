myFirst :: [a] -> a
myFirst = head

myFirst' :: [a] -> a
myFirst' =  foldl1 (\acc x -> acc)

-- - [1, 2, 3]

