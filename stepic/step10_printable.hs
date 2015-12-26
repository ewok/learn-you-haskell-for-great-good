module Printable where

class Printable s where
    toString :: s -> String

instance Printable Bool where
    toString True = "true"
    toString False = "false"

instance Printable () where
    toString () = "unit type"

instance (Printable s1, Printable s2) => Printable (s1, s2) where
    toString (s1, s2) = "(" ++ toString s1 ++ "," ++  toString s2 ++ ")"
