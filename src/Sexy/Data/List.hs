module Sexy.Data.List (
    list'
  , fromCons'
  ) where

list' :: (a -> v -> v) -> v -> [a] -> v
list' myCons myNil = go
  where go [] = myNil
        go (x:xs) = myCons x (go xs)

-- fromCons = list const
fromCons' :: a -> [a] -> a
fromCons' _ (x:_) = x
fromCons' x []    = x
