-- - (*) Find out whether a list is a palindrome. A palindrome can be read forward or backward.

isPalindrome :: Eq a => [a] -> Bool
isPalindrome []  = True
isPalindrome [_] = True
isPalindrome xs = xs == (reverse xs)

-- -
palindrome :: [Integer] -> Bool
palindrome [] = True
palindrome [x] = True
palindrome xs = xs == (reverse xs)   -- - karşılastırma