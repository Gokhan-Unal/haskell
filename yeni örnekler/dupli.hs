dupli = foldl (\acc x -> acc ++ [x,x]) []
dupli = foldr (\x xs -> x : x : xs) []