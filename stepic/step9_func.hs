module Test where

test :: a -> (a,b) -> a -> (b,a,a)
test x (y,z) v = (z, x, x)
test x (y,z) v = (z, x, y)
test x (y,z) v = (z, x, v)
test x (y,z) v = (z, y, x)
test x (y,z) v = (z, y, y)
test x (y,z) v = (z, y, v)
test x (y,z) v = (z, v, x)
test x (y,z) v = (z, v, y)
test x (y,z) v = (z, v, v)
