-- - (**) Pack consecutive duplicates of list elements into sublists. 
-- - If a list contains repeated elements they should be placed in separate sublists.

pack :: [Char] -> [[Char]]
pack x = packHelper x []

packHelper :: [Char] -> [Char] -> [[Char]]
packHelper [] y = [y]
packHelper (x:xs) [] = packHelper xs [x]
packHelper (x:xs) y
  | elem x y = packHelper xs (x:y)
  | otherwise = y:(packHelper (x:xs) [])