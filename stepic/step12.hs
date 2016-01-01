module Module2Step4 where

foo a = a
bar = const foo
baz x = const True
quux = let x = x in x
-- corge = 10
grault x 0 = x
grault x y = x
garply = grault 'q'
waldo = foo

test1 = foo undefined
test2 = bar undefined undefined
test3 = baz undefined undefined
test4 = quux undefined
-- test5 = corge undefined
test6 = grault undefined undefined
test7 = grault undefined 0
test8 = garply undefined
test9 = waldo undefined
