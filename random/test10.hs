main::IO()
main =
  print [ (x,y) | x <- [1..100], y <- [1..100], x + y == 20 ]