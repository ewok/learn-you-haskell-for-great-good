showBMI::(RealFloat a) => a -> a -> a
showBMI height weight = bmi where bmi = weight / height ^ 2

main::IO()
main = print (showBMI 1.75 100)