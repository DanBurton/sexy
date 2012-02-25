module Sexy.Instances.HasElem.Either () where

import Sexy.Data (Either)
import Sexy.Classes (HasElem(..))


instance HasElem (Either e a) where
  type Elem (Either e a) = a
