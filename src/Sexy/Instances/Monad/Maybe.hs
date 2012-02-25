module Sexy.Instances.Monad.Maybe () where

import Sexy.Data (Maybe(..))
import Sexy.Classes (Monad(..))
import Sexy.Instances.Applicative.Maybe ()


instance Monad Maybe where
  -- join :: Maybe (Maybe a) -> Maybe a
  join (Just (Just x)) = Just x
  join _ = Nothing

