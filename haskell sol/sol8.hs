-- - (**) Eliminate consecutive duplicates of list elements.

-- - If a list contains repeated elements they should be replaced with a single 
-- - copy of the element. The order of the elements should not be changed.

compress :: [Char] -> [Char]
compress [x] = [x]
compress (x:ys@(y:_))
  | x == y = compress ys
  | otherwise = x : compress ys

--- [1, 2, 2, 3] ->  [1, 2, 3]