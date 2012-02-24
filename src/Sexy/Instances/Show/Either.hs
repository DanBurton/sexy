module Sexy.Instances.Show.Either () where

import Sexy.Classes (Show(..))
import Sexy.Data (Either(..))

import Sexy.Classes (Plus(..))
import Sexy.Instances.Plus.List

instance (Show a, Show b) => Show (Either a b) where
  show (Left x) = "Left " + show x
  show (Right y) = "Right " + show y
