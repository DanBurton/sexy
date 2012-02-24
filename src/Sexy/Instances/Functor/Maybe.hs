module Sexy.Instances.Functor.Maybe () where

import Sexy.Classes (Functor(..))
import Sexy.Data (Maybe(..))

instance Functor Maybe where
  -- (<$>) :: (a -> b) -> Maybe a -> Maybe b
  _ <$> Nothing  = Nothing
  f <$> (Just x) = Just (f x)
