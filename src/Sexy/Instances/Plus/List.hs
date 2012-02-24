module Sexy.Instances.Plus.List () where

import Sexy.Classes (Plus(..))

instance Plus [a] where
  [] + ys = ys
  (x:xs) + ys = x : (xs + ys)
