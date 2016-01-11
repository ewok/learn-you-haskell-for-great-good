module SndHead where

sndHead = snd . head

-- +
sndHead1 ((:) ((,) _ x) y) = x
-- +
sndHead2 ((_, x) : _) = x
-- -
sndHead3 ((,) x y : z) = x
-- +
sndHead4 ((,) y x : z) = x
-- -
sndHead5 ((,) ((:) _ _) x) = x
-- -
sndHead6 ((,) y z : x) = x
