-- Реализуйте функцию, находящую значение определённого интеграла от
-- заданной функции f на заданном интервале [a,b] методом трапеций.
-- (Используйте равномерную сетку; достаточно 1000 элементарных
-- отрезков.)
-- GHCi> integration sin pi 0
-- -2.0
-- Результат может отличаться от -2.0, но не более чем на 1e-4.
module Integration where

-- Формула Котеса: h * ((f(a) + f(n)) / 2) + sum(f(1)..f(n-1))
integration :: (Double -> Double) -> Double -> Double -> Double
integration f a b | a < b = helper f a b
                  | a > b = helper f b a
                  | otherwise = 0
    where
-- TODO: переделать, ошибка на inregration id 0 1
        helper fun a b = h * ((fun a + fun n) / 2 + sum (map fun [a+1*h,a+2*h..a+(n-1)*h])) where
            n = 1000
            h = (b - a) / n

