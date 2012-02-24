module Sexy.Instances.Functor.Function () where

import Sexy.Classes (Functor(..))

instance Functor ((->) a) where
  -- (<$>) :: (b -> c) -> (a -> b) -> a -> c
  (f <$> g) x = f (g x)
