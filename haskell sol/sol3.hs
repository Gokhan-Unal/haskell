-- - (*) Find the K'th element of a list. The first element in the list is number 1.
-- - λ> elementAt [1,2,3] 2
-- - 2
-- - λ> elementAt "haskell" 5
-- - 'e'


klist :: [a] -> Integer -> a  
klist (x:xs) 1 = x
klist (x:xs) y = klist xs (y-1)     -- recursive 1 olana kadar satır 9 a giriyor

-- - [1,2,3] 2