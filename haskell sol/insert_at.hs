insertat :: a -> [a] -> Int -> [a]
insertat x y 1 = (x:y)
insertat x (y:ys) z = y:insertat x ys (z-1)

-- x girdiğimiz değer
-- y listemiz
-- 1 başlangıç

-- - 4 [1,2,3] 4
-- -  3 [24, 3, 22,11,34, 56] 2
