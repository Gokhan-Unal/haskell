maximum' :: [Integer] -> Integer
maximum' [x] = x
maximum' (x:y:xs) 
  | x > y = maximum' (x:xs)
  | otherwise = maximum' (y:xs)