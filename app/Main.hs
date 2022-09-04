module Main where

import qualified ListTricks                     ( someFunc )

main :: IO ()
main = do
  putStrLn "Hello, Haskell!"
  ListTricks.someFunc
