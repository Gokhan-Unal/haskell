-- -(**) Flatten a nested list structure.

-- - Transform a list, possibly holding lists as elements into a `flat' list by replacing 
-- - each list with its elements (recursively).

flatten :: NestedList a -> [a]
data NestedList a = Elem a | List [NestedList a]
flatten (Elem a) = [a]
flatten (List (x:xs)) = flatten x ++ flatten (List xs)
flatten (List []) = []

--- [1,2, 3, 4, [5, 6]] -> [1,2,3,4,5,6]