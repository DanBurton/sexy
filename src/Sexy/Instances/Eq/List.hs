module Sexy.Instances.Eq.List () where

import Sexy.Classes (Eq(..))
import Sexy.Data (Bool(..), otherwise)

instance (Eq a) => Eq [a] where
  [] == []      = True
  (x:xs) == (y:ys)
    | x == y    = xs == ys
    | otherwise = False
  _ == _        = False
