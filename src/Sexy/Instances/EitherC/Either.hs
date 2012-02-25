module Sexy.Instances.EitherC.Either () where

import Sexy.Data (Either(..), either', fromLeft', fromRight')
import Sexy.Classes (EitherC(..))

instance EitherC Either where
  left = Left
  right = Right
  either = either'
  fromLeft = fromLeft'
  fromRight = fromRight'
