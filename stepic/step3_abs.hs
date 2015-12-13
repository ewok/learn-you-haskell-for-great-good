module Abs where

infixl 6 |-|

(|-|) a b = if (a - b) < 0 then (b - a) else if (a - b) == 0 then 0 else (a - b)
