module Sexy.Classes.Apply (Apply(..)) where

class Apply a where
  type In a
  type Out a
  ($) :: a -> In a -> Out a
