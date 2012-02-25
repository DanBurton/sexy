module Sexy.Instances.Plus.Maybe () where

import Sexy.Data (Maybe(..))
import Sexy.Classes (Plus(..))

instance (Plus a) => Plus (Maybe a) where
  Nothing + my        = my
  mx + Nothing        = mx
  (Just x) + (Just y) = Just (x + y)
