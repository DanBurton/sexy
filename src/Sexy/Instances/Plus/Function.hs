module Sexy.Instances.Plus.Function () where

import Sexy.Classes (Plus(..))


instance (Plus b) => Plus (a -> b) where
  f + g = \x -> f x + g x
