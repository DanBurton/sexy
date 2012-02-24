module Sexy.Instances.Applicative.Function () where

import Sexy.Classes (Applicative(..))
import Sexy.Instances.Functor.Function ()
import Sexy.Instances.Pure.Function ()


instance Applicative ((->) a) where
  -- (<*>) :: (a -> b -> c) -> (a -> b) -> (a -> c)
  f <*> g = \x -> f x (g x)
