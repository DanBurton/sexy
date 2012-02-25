module Sexy.Instances.Cons.List () where

import Sexy.Classes (Cons(..))


instance Cons [] where
  (<|) = (:)
