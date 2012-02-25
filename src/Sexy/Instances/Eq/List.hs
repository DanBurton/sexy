module Sexy.Instances.Eq.List () where

import Sexy.Classes (Eq(..), BoolC(..))
import Sexy.Instances.BoolC.Bool ()
import Sexy.Data (otherwise)


instance (Eq a) => Eq [a] where
  [] == []      = true
  (x:xs) == (y:ys)
    | x == y    = xs == ys
    | otherwise = false
  _ == _        = false
