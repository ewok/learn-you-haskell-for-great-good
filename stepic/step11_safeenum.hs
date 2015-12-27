module SafeEnum where

class (Eq a, Enum a, Bounded a ) => SafeEnum a where
  ssucc :: a -> a
  ssucc a | maxBound  == a = minBound
          | otherwise = succ a

  spred :: a -> a
  spred a | minBound == a = maxBound
          | otherwise = pred a
