module SummAndCount where

-- GHCi> sum'n'count (-39)
-- (12,2)
sum'n'count :: Integer -> (Integer, Integer)
sum'n'count x | x > 0 = helper x (0, 0)
              | x < 0 = helper (-x) (0, 0)
              | otherwise = (0, 1)
    where
        helper 0 (a, b) = (a, b)
        helper x (a, b) = helper (x `div` 10) (a + (x `mod` 10), b + 1)

