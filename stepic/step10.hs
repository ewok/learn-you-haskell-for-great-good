module Demo where

class Eq a where
    (==) :: a -> a -> Bool
    (/=) :: a -> a -> Bool
    x /= y = not (x==y)
    x == y = not (x/=y)
-- or
-- (==), (/=) :: a -> a -> Bool

instance Eq Bool where
    True == True = True
    False == False = False
    _ == _ = False


