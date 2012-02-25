module Sexy.Instances.Nil.Function where

import Sexy.Classes (Nil(..))


instance (Nil b) => Nil (a -> b) where
  nil = (\_ -> nil)
