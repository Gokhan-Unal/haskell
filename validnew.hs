-- Exercise 1
toDigitsRev :: Integer -> [Integer]
toDigitsRev 0 = []
toDigitsRev x = x `mod` 10 : toDigitsRev (x `div` 10)

toDigits :: Integer -> [Integer]
toDigits 0 = []
toDigits x = reverse(toDigitsRev x)

-- Exercise 2
doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther ([])   = []
doubleEveryOther (x:[]) = [x]
doubleEveryOther (x:y:xs)
  | length xs `mod` 2 == 0 = [x*2,y] ++ doubleEveryOther xs 
  | otherwise =[x,y*2] ++ doubleEveryOther xs


-- Exercise 3
sumDigits :: [Integer] -> Integer
sumDigits [] = 0
sumDigits (x:xs)  = sum (toDigits x) + sumDigits xs

-- Exercise 4
validate :: Integer -> Bool
validate creditnumber = 
  sumDigits (doubleEveryOther (toDigits creditnumber)) `mod` 10 == 0