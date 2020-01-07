myLength1 :: [a] -> a
myLength1 =  foldl (\acc x -> acc + 1) 0

-- - [1, 2, 3]

