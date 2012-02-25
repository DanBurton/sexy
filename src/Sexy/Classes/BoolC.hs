module Sexy.Classes.BoolC (BoolC(..)) where

class BoolC b where
  true :: b
  false :: b
  bool :: a -> a -> b -> a
