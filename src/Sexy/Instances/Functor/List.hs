module Sexy.Instances.Functor.List () where

import Sexy.Classes (Functor(..))

instance Functor [] where
  -- (<$>) :: (a -> b) -> [a] -> [b]
  _ <$> [] = []
  f <$> (x:xs) = f x : (f <$> xs)
