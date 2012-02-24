module Sexy.Classes.Plus (Plus(..)) where

infixr 5 +

class Plus a where
  (+) :: a -> a -> a
