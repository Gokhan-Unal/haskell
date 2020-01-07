-- - (*) Find the last but one element of a list.
-- - λ> myButLast [1,2,3,4]
-- - 3
-- - λ> myButLast ['a'..'z']
-- - 'y'

butlast :: [a] -> a
butlast [x,y] = x
butlast (x:xs) = butlast xs

-- - [1, 2, 3]

myButLast = head . tail . reverse
-- [1, 2, 3]