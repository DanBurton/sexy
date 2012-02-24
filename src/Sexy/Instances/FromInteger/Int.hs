module Sexy.Instances.FromInteger.Int () where

import Sexy.Classes (FromInteger(..))
import Sexy.Data (Int)

import qualified Prelude as P

instance FromInteger Int where
  fromInteger = P.fromInteger
