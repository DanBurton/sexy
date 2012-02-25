module Sexy.Instances.Plus.Either () where

import Sexy.Data (Either(..))
import Sexy.Classes (Plus(..))

instance (Plus a) => Plus (Either e a) where
  (Left _) + my        = my
  mx + (Left _)        = mx
  (Right x) + (Right y) = Right (x + y)
