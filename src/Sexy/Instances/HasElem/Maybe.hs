module Sexy.Instances.HasElem.Maybe () where

import Sexy.Data (Maybe)
import Sexy.Classes (HasElem(..))


instance HasElem (Maybe a) where
  type Elem (Maybe a) = a
