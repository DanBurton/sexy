module Sexy.Instances.OrderingC.Ordering () where

import Sexy.Classes (OrderingC(..))
import Sexy.Data (Ordering(..), ordering')

instance OrderingC Ordering where
  lt = LT
  eq = EQ
  gt = GT
  ordering = ordering'
