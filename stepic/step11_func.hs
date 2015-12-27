module Func where

-- GHCi> avg 3 4 8
-- 5.0
avg :: Int -> Int -> Int -> Double
avg a b c  = (/3) $ fromIntegral $ sum [a, b, c]
