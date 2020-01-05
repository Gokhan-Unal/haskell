repli :: Int -> [a] -> [a]
repli z [] = []
repli z (x:xs) = (replicate z x) ++ repli z xs


replic :: Int -> [a] -> [a]
replic z xs = replicateHelper z z xs
replicateHelper :: Int -> Int -> [a] -> [a]
replicateHelper _ _ [] = []
replicateHelper z 0 (x:xs) = replicateHelper z z xs
replicateHelper z y (x:xs) = x:replicateHelper z (y-1) (x:xs)
