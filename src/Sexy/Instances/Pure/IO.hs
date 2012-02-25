module Sexy.Instances.Pure.IO () where

import Sexy.Data (IO(..))
import Sexy.Classes (Pure(..))


instance Pure IO where
  pure x = IO (\rw -> (# rw, x #))
