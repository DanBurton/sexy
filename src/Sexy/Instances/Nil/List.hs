module Sexy.Instances.Nil.List where

import Sexy.Classes (Nil(..))


instance Nil [a] where
  nil = []
