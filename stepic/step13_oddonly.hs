module OddsOnly where
-- GHCi> oddsOnly [2,5,7,10,11,12]
-- [5,7,11]

oddsOnly xs | xs == [] = []
            | otherwise = helper xs []
    where helper [] y = y
          helper (x:xs) y | odd x = helper xs (y ++ [x])
                          | otherwise = helper xs y

oddsOnly' xs = filter odd xs
