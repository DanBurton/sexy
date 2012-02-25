module Sexy.Instances.Nil.Int () where

import Sexy.Data (Int(..))
import Sexy.Classes (Nil(..))


instance Nil Int where
  nil = 0
