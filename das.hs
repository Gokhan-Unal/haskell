toDigits :: Integer -> [Integer]
toDigits n
 | n < 1    = []
 | otherwise = toDigits (div n 10) ++ [mod n 10]

toDigitsRev :: Integer -> [Integer]
toDigitsRev n 
    | n < 1     = []
    | otherwise =  mod n 10 : toDigitsRev (div n 10)