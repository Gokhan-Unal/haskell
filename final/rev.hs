reverse' xs = foldr (\acc x -> x ++ [acc]) [] xs
-- reverse' = foldl (\a x -> x:a) []
