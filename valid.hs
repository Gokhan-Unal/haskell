doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther ([])   = []
doubleEveryOther (x:[]) = [x]
doubleEveryOther (x:y:z:t:xs)
  | length xs `mod` 4 == 0 = [x, y, z, t*2] ++ doubleEveryOther xs 
  | otherwise =[x,y,z, t*2] ++ doubleEveryOther xs