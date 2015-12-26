module Curry where

import Data.Function
avg :: (Double, Double) -> Double
avg p = (fst p + snd p) / 2

-- Wrong
test = avg `on` (^2)

-- Right
test2 = curry avg `on` (^2)
