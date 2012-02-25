module Sexy.Instances.Applicative.Either () where

import Sexy.Classes (Applicative(..))
import Sexy.Data (Either(..))
import Sexy.Instances.Functor.Either ()
import Sexy.Instances.Pure.Either ()


instance Applicative (Either e) where
  -- (<*>) :: Either e (a -> b) -> Either e a -> Either e b
  Left x <*> _ = Left x
  _ <*> Left x = Left x
  (Right f) <*> (Right x) = Right (f x)
