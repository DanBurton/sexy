module Sexy.Instances.BoolC.Bool () where

import Sexy.Classes (BoolC(..))
import Sexy.Data (Bool(..), bool')

instance BoolC Bool where
  true = True
  false = False
  bool = bool'
