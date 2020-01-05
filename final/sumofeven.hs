-- * ilk soru

-- int sağdan
sumOfEvenSq y = foldr (\x acc -> acc + (x*x)) 0 (filter (even) [1..y])

-- soldan
sumOfEvenSq y = foldl (\acc x -> acc + (x*x)) 0 (filter (even) [1..y])

-- liste
sumOfEvenSq xs = foldl (\acc x -> acc + (x*x)) 0 (filter (even) xs)