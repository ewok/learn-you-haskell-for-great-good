module On3 where

-- GHCi> let sum3squares = (\x y z -> x+y+z) `on3` (^2)
-- GHCi> sum3squares 1 2 3
-- 14

on3 :: (b -> b -> b -> c) -> (a -> b) -> a -> a -> a -> c
on3 op f x y z = op (f x) (f y) (f z)

sum3squares = (\x y z -> x+y+z) `on3` (^2)
