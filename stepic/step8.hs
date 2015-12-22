module GetSecond where

getSecondFrom :: t -> t2 -> t1 -> t2
getSecondFrom _ a _ = a

test = getSecondFrom True 'x' "Hello"
test2 = getSecondFrom 'x' 42 True

tt :: a -> a -> b -> a -> a
tt a b c d  = a
tt a b c d  = b
tt a b c d  = d

la :: a -> a -> b
la a b = "1"
