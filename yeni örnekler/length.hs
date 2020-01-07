myLength1 :: [a] -> Int
myLength1 =  foldl (\acc x -> acc + 1) 0

-- - [1, 2, 3]

