module Sexy.Instances.Applicative.Maybe () where

import Sexy.Classes (Applicative(..))
import Sexy.Data (Maybe(..))
import Sexy.Instances.Functor.Maybe ()
import Sexy.Instances.Pure.Maybe ()


instance Applicative Maybe where
  -- (<*>) :: Maybe (a -> b) -> Maybe a -> Maybe b
  Nothing <*> _ = Nothing
  _ <*> Nothing = Nothing
  (Just f) <*> (Just x) = Just (f x)
