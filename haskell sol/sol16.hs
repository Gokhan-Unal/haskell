dropnth :: [a] -> Int -> [a]
dropnth xs n = dropnthhelper xs n 1
dropnthhelper [] _ _ = []
dropnthhelper (x:xs) n m
  | n == m = dropnthhelper xs n 1
  | otherwise = x : dropnthhelper xs n (m+1)
