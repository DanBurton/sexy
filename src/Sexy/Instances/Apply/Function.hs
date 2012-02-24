module Sexy.Instances.Apply.Function () where

import Sexy.Classes (Apply(..))

instance Apply (a -> b) where
  type In (a -> b) = a
  type Out (a -> b) = b
  f $ x = f x
