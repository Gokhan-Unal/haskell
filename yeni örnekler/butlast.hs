-- - (*) Find the last but one element of a list.
-- - λ> myButLast [1,2,3,4]
-- - 3
-- - λ> myButLast ['a'..'z']
-- - 'y'

myButLast = head . tail . reverse