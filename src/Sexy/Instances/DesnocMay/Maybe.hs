module Sexy.Instances.DesnocMay.Maybe () where

import Sexy.Data (Maybe(..))
import Sexy.Classes (MaybeC(..), DesnocMay(..))
import Sexy.Instances.MaybeC.Maybe ()


instance DesnocMay Maybe where
  desnocMay Nothing = nothing
  desnocMay (Just x) = just (x, nothing)
