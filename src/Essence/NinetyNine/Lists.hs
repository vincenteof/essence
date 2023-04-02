module Essence.NinetyNine.Lists where

-- (*) Find the last element of a list.
myLast :: [a] -> a
myLast [] = error "empty list"
myLast [x] = x
myLast (_ : xs) = myLast xs

-- (*) Find the last but one element of a list.

-- ** of course, we can also using previous **

myButLast :: [a] -> a
myButLast = last . init

-- (*) Find the K'th element of a list. The first element in the list is number 1.
elemAt :: [a] -> Int -> a
elemAt [] _ = error "index out of bounds"
elemAt (x : _) 1 = x
elemAt (_ : xs) k
  | k < 1 = error "index out of bounds"
  | otherwise = elemAt xs (k - 1)

elemAt' :: [a] -> Int -> a
elemAt' xs k = fst . last $ zip xs [1 .. k]

-- (*) Find the number of elements of a list.
myLength :: [a] -> Int
myLength = foldl (\ret _ -> ret + 1) 0

-- (*) Reverse a list.
myReverse :: [a] -> [a]
myReverse = foldl (flip (:)) []

-- straight recursive definition using ++, performance will be poor
myReverse' :: [a] -> [a]
myReverse' [] = []
myReverse' (x : xs) = myReverse' xs ++ [x]

-- (*) Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. (x a m a x).
