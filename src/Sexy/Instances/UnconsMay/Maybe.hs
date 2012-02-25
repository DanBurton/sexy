module Sexy.Instances.UnconsMay.Maybe () where

import Sexy.Classes (UnconsMay(..))
import Sexy.Data (Maybe(..), fromJust')
import Sexy.Instances.HasElem.Maybe ()


instance UnconsMay (Maybe a) where
  unconsMay Nothing  = Nothing
  unconsMay (Just x) = Just (x, Nothing)

  fromCons = fromJust'
