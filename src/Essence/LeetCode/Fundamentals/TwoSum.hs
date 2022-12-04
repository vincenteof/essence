module Essence.LeetCode.Fundamentals.TwoSum
  ( twoSum
  ) where

import           Data.Map                       ( Map
                                                , empty
                                                , findWithDefault
                                                , insert
                                                )

twoSum :: [Int] -> Int -> (Int, Int)
twoSum xs = twoSumIter (zip xs [0 ..]) empty


twoSumIter :: [(Int, Int)] -> Map Int Int -> Int -> (Int, Int)
twoSumIter xs records target
  | anotherIndex >= 0 = (anotherIndex, curIdx)
  | otherwise         = twoSumIter (tail xs) (insert cur curIdx records) target
 where
  (cur, curIdx) = head xs
  another       = target - cur
  anotherIndex  = findWithDefault (-1) another records
