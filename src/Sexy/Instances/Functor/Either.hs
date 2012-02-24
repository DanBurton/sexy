module Sexy.Instances.Functor.Either () where

import Sexy.Classes (Functor(..))
import Sexy.Data (Either(..))

instance Functor (Either a) where
  -- (<$>) :: (b -> c) -> Either a b -> Either a c
  _ <$> (Left x) = Left x
  f <$> (Right x) = Right (f x)
