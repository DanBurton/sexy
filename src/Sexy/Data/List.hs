module Sexy.Data.List (
    foldr
  , fromCons
  ) where

foldr :: (a -> v -> v) -> v -> [a] -> v
foldr _      myNil []     = myNil
foldr myCons myNil (x:xs) = myCons x (foldr myCons myNil xs)

fromCons :: a -> [a] -> a
fromCons _ (x:_) = x
fromCons x []    = x
