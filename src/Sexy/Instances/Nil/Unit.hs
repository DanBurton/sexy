module Sexy.Instances.Nil.Unit () where

import Sexy.Classes (Nil(..))


instance Nil () where
  nil = ()
