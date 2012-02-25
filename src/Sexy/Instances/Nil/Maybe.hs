module Sexy.Instances.Nil.Maybe () where

import Sexy.Data (Maybe(..))
import Sexy.Classes (Nil(..))

instance Nil (Maybe a) where
  nil = Nothing
