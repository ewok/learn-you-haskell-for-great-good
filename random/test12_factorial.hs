fact'::(Integral a) => a -> a
fact' x = product [1..x]

main::IO()
main = print(fact' 50000)