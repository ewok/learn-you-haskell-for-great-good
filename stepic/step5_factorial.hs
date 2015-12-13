module Factorial where

factorial :: (Eq a, Num a) => a -> a
factorial n = if n == 0 then 1 else n * factorial(n - 1)

factorial' :: (Eq a, Num a) => a -> a
factorial' 0 = 1
factorial' n = n * factorial(n - 1)

factorial''' :: (Num a, Ord a) => a -> a
factorial''' 0 = 1
factorial''' n | n < 0 = error "args must be >= 0"
               | n > 0 = n * factorial''' (n - 1)
factorial''' _ = undefined

factorial4 :: (Num a, Ord a) => a -> a
factorial4 0 = 1
factorial4 n | n == 0 = 1
             | n > 0 = n * factorial4 (n - 1)
             | otherwise = error "args must be >= 0"

factorial5 :: (Num a, Ord a) => a -> a
factorial5 n | n >= 0 = helper 1 n
             | otherwise = error "arg must ne >= 0"

helper :: (Eq a, Num a) => a -> a -> a
helper acc 0 = acc
helper acc n = helper (acc * n) (n - 1)

