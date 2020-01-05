rts :: Int -> [a] -> [a]
rts x y
  | x > 0 = rtshelper [] y x
  | otherwise = rtshelper [] y (x + length y)

rtshelper :: [a] -> [a] -> Int -> [a]
rtshelper a b 0 = b ++ a
rtshelper a (b:bs) z = rtshelper(a++[b]) bs (z-1)