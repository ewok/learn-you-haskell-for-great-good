import Prelude hiding ((+), (==), (/=), Eq)

class Eq a where
  (==)::a ->a ->Bool
  (/=)::a ->a ->Bool

class Show a where
  show::a ->String

class Group a where
  e::a
  (+)::a ->a ->a
  inv::a ->a

twice::Group a =>a ->a
twice a = a + a

isE::(Group a, Eq a) =>a ->Bool
isE x = (x == e)

main::IO()
main = print "main"