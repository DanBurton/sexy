module Sexy.Instances.Show.Maybe () where

import Sexy.Classes (Show(..))
import Sexy.Data (Maybe(..))

import Sexy.Classes (Plus(..))
import Sexy.Instances.Plus.List

instance (Show a) => Show (Maybe a) where
  show (Just x) = "Just " + show x
  show Nothing  = "Nothing"
