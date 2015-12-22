module MultSecond where

import Data.Function

sumSquares = (+) `on` (^2)

multSecond = g `on` h

g = (*)

h = snd

test = multSecond ('A',2) ('E',7)
-- 14
