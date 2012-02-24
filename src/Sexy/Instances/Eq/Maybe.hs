module Sexy.Instances.Eq.Maybe () where

import Sexy.Classes (Eq(..))
import Sexy.Data (Maybe(..), Bool(..))


instance (Eq a) => Eq (Maybe a) where
  Nothing == Nothing = True
  Just x  == Just y  = x == y
  _       == _       = False
