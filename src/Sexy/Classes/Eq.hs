module Sexy.Classes.Eq (Eq(..)) where

import Sexy.Classes.BoolC (BoolC)

class Eq a where
  (==) :: BoolC b => a -> a -> b
