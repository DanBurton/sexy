module Sexy.Instances.Nil.Either () where

import Sexy.Data (Either(..))
import Sexy.Classes (Nil(..))

instance (Nil e) => Nil (Either e a) where
  nil = Left nil
