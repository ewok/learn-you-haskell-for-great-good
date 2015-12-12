fact'::(Integral a) => a -> a
fact' 0 = 1
fact' x = x * fact'(x - 1)

main::IO()
main = print(fact' 50000)