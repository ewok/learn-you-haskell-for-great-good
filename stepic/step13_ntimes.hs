module NTimes where
-- GHCi> nTimes 42 3
-- [42,42,42]
-- GHCi> nTimes 'z' 5
-- "zzzzz"

nTimes x y = take y $ repeat x
