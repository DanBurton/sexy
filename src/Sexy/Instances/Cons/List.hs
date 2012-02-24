module Sexy.Instances.Cons.List () where

import Sexy.Classes (Cons(..))
import Sexy.Instances.HasElem.List ()

instance Cons [a] where
  (<|) = (:)
