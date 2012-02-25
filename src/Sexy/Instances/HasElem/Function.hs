module Sexy.Instances.HasElem.Function () where

import Sexy.Classes (HasElem(..))


instance HasElem (a -> b) where
  type Elem (a -> b) = b
