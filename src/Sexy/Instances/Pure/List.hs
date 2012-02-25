module Sexy.Instances.Pure.List () where

import Sexy.Classes (Pure(..))


instance Pure [] where
  pure x = [x]
