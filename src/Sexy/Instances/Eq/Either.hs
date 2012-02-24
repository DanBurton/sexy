module Sexy.Instances.Eq.Either () where

import Sexy.Classes (Eq(..))
import Sexy.Data (Either(..), Bool(..))


instance (Eq a, Eq b) => Eq (Either a b) where
  Left x  == Left y  = x == y
  Right x == Right y = x == y
  _       == _       = False
