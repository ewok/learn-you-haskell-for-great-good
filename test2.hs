ifThenElse::Bool ->a ->a ->a
ifThenElse True t _ = t
ifThenElse False _ e = e

main :: IO()
main = print(ifThenElse True "Ttt" "Ell")