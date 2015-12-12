import Text.Printf (toChar)

list = [2,6,23,6,8]

double::Integer ->Integer
double x = x + x

doubleList::[Integer] ->[Integer]
doubleList x = do
  i <- map double x
  return i

main::IO()
main = do
  print(doubleList list)