module Main where
import           NinetyNine.Lists               ( myLast )

main :: IO ()
main = do
  putStrLn "Hello, Haskell!"
  print (myLast [1, 2, 3])
