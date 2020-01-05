filterandmap e f xs = map f (filter e xs)

sumOfEvenFM y = foldl (\acc x -> acc + x) 0 (filterandmap (even) (^2) [1..y])
sumOfEvenFM y = foldl (\acc x -> acc + (x * x)) 0 (filterandmap (even) (+0) [1..y])
sumOfEvenFM y = foldl (\acc x -> acc + x) 0 (filterandmap (even) (\x -> x * x) [1..y])