-- - (*) Find the last element of a list.

-- - λ> myLast [1,2,3,4]
-- - 4
-- - λ> myLast ['x','y','z']
-- - 'z'


myLast' = head . reverse