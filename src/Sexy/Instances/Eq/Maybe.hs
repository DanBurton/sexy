module Sexy.Instances.Eq.Maybe () where

import Sexy.Classes (Eq(..), BoolC(..))
import Sexy.Data (Maybe(..))
import Sexy.Instances.BoolC.Bool ()


instance (Eq a) => Eq (Maybe a) where
  Nothing == Nothing = true
  Just x  == Just y  = x == y
  _       == _       = false
