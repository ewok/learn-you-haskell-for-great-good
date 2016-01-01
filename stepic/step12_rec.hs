module Rec where

mySum acc 0 = acc
mySum (result, ()) n = (mySum $! (result + n, ())) $ n - 1

goSum = mySum (0, ())
