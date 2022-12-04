module Main where
import           Essence                        ( twoSum )

main :: IO ()
main = do
  putStrLn "Hello, Haskell!"
  print (twoSum [1, 2] 3)
