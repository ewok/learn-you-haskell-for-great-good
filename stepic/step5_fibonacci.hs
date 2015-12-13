module Fibonacci where

fibonacci' :: (Eq a1, Num a, Num a1) => a1 -> a
fibonacci' 0 = 0
fibonacci' 1 = 1
fibonacci' n = fibonacci' (n - 1) + fibonacci' (n - 2)

fibonacci :: (Num a, Num a1, Ord a1) => a1 -> a
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci (-1) = 1
fibonacci n | n > 0 = fibonacci (n - 1) + fibonacci (n - 2)
            | n < 0 = fibonacci (n + 2) - fibonacci (n + 1)

-- Effectiv
fibonacci'' n | n > 0 = helper 1 1 0 n
              | n < 0 = helper2 1 (-1) 0 n
              | n == 0 = 0
              | otherwise = undefined

helper p1 p2 acc 0 = acc
helper p1 p2 acc n = helper p2 acc (acc + p2) (n - 1)

helper2 p1 p2 acc 0 = - acc
helper2 p1 p2 acc n = helper2 p2 acc (p2 - acc) (n + 1)
