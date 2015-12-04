fst'::(a, b, c) -> a
fst' (x, _, _) = x

snd'::(a, b, c) -> b
snd' (_, y, _) = y

thd'::(a, b, c) -> c
thd' (_, _, z) = z


main::IO()
main = print (snd'(1,2,3))