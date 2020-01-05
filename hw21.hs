sieveSundaram :: Integer -> [Integer]       -- signature
sieveSundaram n =
  let
    end =
      2 * n + 2             -- Cartesian multiplication of numbers from 1 to 2n + 2 to perform.
    sundaram =
      map (\(x,y) -> x + y + (2 * x * y))       -- i + j + (2ij)
        (cartProd [1..end] [1..end])            -- Cartesian function is called for these values
    sieve =
      filter (\x -> not (x `elem` sundaram)) [1..]  -- As a result of the sundaram function operations we write, the numbers are eliminated from all numbers in the list.
  in
   takeWhile (\x -> x <= end) (map (\x -> 2 * x + 1) sieve) -- take numbers where x less than or equal to 2n + 2 and multiply the remaining numbers by 2, and add 1. After that list is send to sieve function again.


cartProd :: [a] -> [b] -> [(a, b)]          -- This is given in question which makes cartesian multiplication.
cartProd xs ys = [(x,y) | x <- xs, y <- ys]