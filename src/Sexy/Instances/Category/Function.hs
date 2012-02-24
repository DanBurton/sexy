module Sexy.Instances.Category.Function () where

import Sexy.Classes (Category(..))


instance Category (->) where
  -- id :: a -> a
  id x = x
  -- (.) :: (b -> c) -> (a -> b) -> (a -> c)
  f . g = \x -> f (g x)
