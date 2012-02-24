module Sexy.Instances.FromInteger.Double () where

import Sexy.Classes (FromInteger(..))
import Sexy.Data (Double)

import qualified Prelude as P

instance FromInteger Double where
  fromInteger = P.fromInteger
