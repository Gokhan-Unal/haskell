-- - (*) Find the number of elements of a list.
-- - λ> myLength [123, 456, 789]
-- - 3
-- - λ> myLength "Hello, world!"
-- - 13

-- myLength :: [a] -> Int
-- myLength [] = 0
-- myLength (x:xs) = 1 + myLength xs

myLength1 :: [a] -> Int
myLength1 =  foldl (\acc x -> acc + 1) 0

-- - [1, 2, 3]

