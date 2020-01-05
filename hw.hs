-- Helper Functions
myreverse :: [a] -> [a]  
myreverse [] = []  
myreverse (x:xs) = myreverse xs ++ [x]

-- Problem 1
isPalindrome :: [a] -> Bool
isPalindrome []  = True
isPalindrome [_] = True
isPalindrome xs = xs == (myreverse xs)


-- Problem 2
flatten :: NestedList a -> [a]
data NestedList a = Elem a | List [NestedList a]
flatten (Elem a) = [a]
flatten (List (x:xs)) = flatten x ++ flatten (List xs)
flatten (List []) = []

-- Problem 3
pack [] = []
pack [x] = [[x]]
pack (x:xs)
  | elem x (head (pack xs)) = (x:head (pack xs)):tail (pack xs)
  | otherwise = [x]:pack xs


-- Problem 4
encode :: Eq a => [a] -> [(Int, a)]
encode [] = []
encode x = encodePack (pack x)
encodePack [] = []
encodePack (x:xs) = (length x, head x):encodePack xs