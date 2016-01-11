module ZipSum where
-- Составьте список сумм соответствующих элементов трех заданных
-- списков. Длина результирующего списка должна быть равна длине самого
-- длинного из заданных списков, при этом «закончившиеся» списки не
-- должны давать вклада в суммы.

-- GHCi> sum3 [1,2,3] [4,5] [6]
-- [11,7,3]
import Prelude hiding (zip3)

zip3 :: [a] -> [b] -> [c] -> [(a,b,c)]
zip3 (a:as) (b:bs) (c:cs) = (a,b,c) : zip3 as bs cs
zip3 _ _ _ = []

sum3 (a:as) (b:bs) (c:cs) = a+b+c : sum3 as bs cs
sum3 [] (b:bs) (c:cs) = b+c : sum2 bs cs
sum3 (a:as) [] (c:cs) = a+c : sum2 as cs
sum3 (a:as) (b:bs) [] = a+b : sum2 as bs
sum3 [] [] (c:cs) = sum' cs
sum3 [] (b:bs) [] = sum' bs
sum3 (a:as) [] [] = sum' as
sum3 [] [] [] = []

sum2 (a:as) (b:bs) = a+b : sum2 as bs
sum2 [] (b:bs) = b : sum' bs
sum2 (a:as) [] = a : sum' as
sum2 [] [] = []

sum' (a:as) = a : sum' as
sum' [] = []

-- sum3' as bs cs = better way
