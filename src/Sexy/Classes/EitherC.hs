module Sexy.Classes.EitherC (EitherC(..)) where

class EitherC e where
  left :: a -> e a b
  right :: b -> e a b
  either :: (a -> c) -> (b -> c) -> e a b -> c
  fromLeft :: a -> e a b -> a
  fromRight :: b -> e a b -> b
