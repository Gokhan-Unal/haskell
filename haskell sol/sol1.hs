-- - (*) Find the last element of a list.

-- - λ> myLast [1,2,3,4]
-- - 4
-- - λ> myLast ['x','y','z']
-- - 'z'

findlast :: [a] -> a
findlast [] = error "Empty"
findlast [x] = x
findlast (_:xs) = findlast xs


-- - [1,2,3]