module Sexy.Instances.HasElem.List () where

import Sexy.Classes (HasElem(..))


instance HasElem [a] where
  type Elem [a] = a
