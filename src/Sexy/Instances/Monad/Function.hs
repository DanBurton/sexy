module Sexy.Instances.Monad.Function () where

import Sexy.Classes (Monad(..))
import Sexy.Instances.Applicative.Function ()


instance Monad ((->) a) where
  -- join :: (a -> a -> b) -> a -> b
  join f = \x -> f x x
