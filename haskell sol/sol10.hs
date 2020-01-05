--- (*) Run-length encoding of a list. Use the result of problem P09 to implement the so-called run-length
---  encoding data compression method. Consecutive duplicates of elements are encoded as lists (N E)
--- where N is the number of duplicates of the element E.

encode :: [Char] -> [(Integer, Char)]
encode x = encodeHelper x [] 0

encodeHelper [] [y] z = [(z,y)]
encodeHelper (x:xs) [] 0 = encodeHelper xs [x] 1
encodeHelper (x:xs) [y] z
  | y == x = encodeHelper xs [y] (z+1)
  | otherwise = (z,y) : (encodeHelper (x:xs) [] 0)


--- "aaaabbbccde"