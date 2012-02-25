module Sexy.Instances.UnconsMay.Maybe () where

import Sexy.Classes (UnconsMay(..))
import Sexy.Data (Maybe(..), fromJust')


instance UnconsMay Maybe where
  unconsMay Nothing  = Nothing
  unconsMay (Just x) = Just (x, Nothing)

  fromCons = fromJust'
