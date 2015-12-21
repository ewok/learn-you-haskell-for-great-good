module SeqA where

-- a0=1;a1=2;a2=3;ak+3=ak+2+ak+1−2*ak

seqA :: (Num a, Num a1, Ord a1) => a1 -> a
seqA n
    | n == 0 = 1
    | n == 1 = 2
    | n == 2 = 3
    | n >= 3 = seqA(n - 1) + seqA(n - 2) - 2 * seqA(n - 3)
    | otherwise = error "arg must be >= 3"


seqA' n
    | n == 0 = 1
    | n == 1 = 2
    | n == 2 = 3
    | n >= 3 = let
            helper p1 p2 acc 0 = acc
            helper p1 p2 acc z = helper p2 acc (acc + p2 - (2 * p1)) (z - 1)
        in helper 1 2 3 (n - 2)
    | otherwise = error "arg must be >= 3"

