sieveEnd :: Integer -> Integer
sieveEnd n = end n
(sieveSundaram n)

sieveSundaram :: Integer -> [Integer]
sieveSundaram = map (\(x,y) -> x + y + (2 * x * y)) 
             (cartProd [1..n] [1..n])
sieve = filter (\x -> not (x `elem` sieveSundaram)) [1..]
      takeWhile (\x -> x <= n) $ map (\x -> 2 * x + 1) sieve


cartProd :: [a] -> [b] -> [(a, b)]
cartProd xs ys = [(x,y) | x <- xs, y <- ys]

end :: Integer -> Integer
end = map(\n -> 2 * n + 2)

