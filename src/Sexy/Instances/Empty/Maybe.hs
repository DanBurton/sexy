module Sexy.Instances.Empty.Maybe () where

import Sexy.Data (Maybe)
import Sexy.Classes (Empty(..), Nil(..))
import Sexy.Instances.Nil.Maybe ()

instance Empty Maybe where
  empty = nil
