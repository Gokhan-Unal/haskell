---(*) Modified run-length encoding.
--Modify the result of problem 10 in such a way that if an element has no 
--duplicates it is simply copied into the result list. Only elements with
--duplicates are transferred as (N E) lists.

-- encodeModified "aaaabccaadeeee"
--[Multiple 4 'a',Single 'b',Multiple 2 'c',
--Multiple 2 'a',Single 'd',Multiple 4 'e']

data ListItem a = Single a | Multiple Int a
  deriving (Show)

encodeDirect :: (Eq a) => [a] -> [ListItem a]
encodeDirect [] = []
encodeDirect (x:xs) = encodeDirect' 1 x xs
encodeDirect' n y [] = [encodeElement n y]
encodeDirect' n y (x:xs) | y == x    = encodeDirect' (n+1) y xs
                         | otherwise = encodeElement n y : (encodeDirect' 1 x xs)
encodeElement 1 y = Single y
encodeElement n y = Multiple n y