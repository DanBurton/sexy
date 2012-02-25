module Sexy.Instances.Pure.Either () where

import Sexy.Data (Either(..))
import Sexy.Classes (Pure(..))

instance Pure (Either a) where
  pure = Right
