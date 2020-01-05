slice :: [a] -> Int -> Int -> [a]
slice [] _ _  = []
slice (x:xs) i k
 | i > 1      = slice xs (i - 1) (k - 1)
 | k < 1      = []
 | otherwise  = x:slice xs (i - 1) (k - 1)


-- - [1,2,3,4] 2 3