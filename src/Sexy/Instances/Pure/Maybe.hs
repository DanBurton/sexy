module Sexy.Instances.Pure.Maybe () where

import Sexy.Data (Maybe(..))
import Sexy.Classes (Pure(..))


instance Pure Maybe where
  pure = Just
