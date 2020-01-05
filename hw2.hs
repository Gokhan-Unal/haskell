cartProd :: [a] -> [(a, a)]
cartProd xs = [(x,y) | x <- xs, y <- xs]

sieveSundaram :: Integer -> [Integer]
sieveSundaram n = map ((+1) . (*2)) $ filter valid [1..n]
  where valid x = not . any (\(i,j) -> i + j + 2*i*j == x) . filter (uncurry (<=)) $ cartProd [1..x]