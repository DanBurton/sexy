module Sexy.Instances.Pure.Function () where

import Sexy.Classes (Pure(..))


instance Pure ((->) a) where
  pure x = \_ -> x
