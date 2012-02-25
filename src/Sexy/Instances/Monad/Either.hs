module Sexy.Instances.Monad.Either () where

import Sexy.Data (Either(..))
import Sexy.Classes (Monad(..))
import Sexy.Instances.Applicative.Either ()


instance Monad (Either e) where
  -- join :: Either e (Either e a) -> Either e a
  join (Right (Right x)) = Right x
  join (Right (Left e))  = Left e
  join (Left e)          = Left e
