removeAt :: Int -> [a] -> [a]
removeAt x (y:ys)
  | x == 1 = ys
  | otherwise = y : (removeAt (x-1) ys)