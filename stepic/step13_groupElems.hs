module GroupElems where
-- GHCi> groupElems []
-- []
-- GHCi> groupElems [1,2]
-- [[1],[2]]
-- GHCi> groupElems [1,2,2,4]
-- [[1],[2,2],[4]]
-- GHCi> groupElems [1,2,3,2,4]
-- [[1],[2],[3],[2],[4]]

groupElems [] = []
groupElems (x:xs) = helper x (x:xs) [[]]

helper _ [] out = reverse out
helper p (x:xs) (o:out) | p == x = helper x xs ([x:o]++out)
                        | otherwise = helper x xs ([x]:o:out)
