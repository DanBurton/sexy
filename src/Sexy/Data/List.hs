module Sexy.Data.List (
    list
  , fromCons
  ) where

list :: (a -> v -> v) -> v -> [a] -> v
list _      myNil []     = myNil
list myCons myNil (x:xs) = myCons x (list myCons myNil xs)

-- fromCons = list const
fromCons :: a -> [a] -> a
fromCons _ (x:_) = x
fromCons x []    = x
