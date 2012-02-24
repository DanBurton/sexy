module Sexy.Instances.Show.Bool () where

import Sexy.Classes (Show(..))
import Sexy.Data (Bool(..))

instance Show Bool where
  show True = "True"
  show False = "False"
