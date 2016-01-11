module IsPalindrome where
-- GHCi> isPalindrome []
-- True
-- GHCi> isPalindrome [1]
-- True
-- GHCi> isPalindrome [1, 2]
-- False

isPalindrome xs = xs == reverse xs
