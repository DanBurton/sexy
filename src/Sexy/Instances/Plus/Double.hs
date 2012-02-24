module Sexy.Instances.Plus.Double where

import Sexy.Classes (Plus(..))
import Sexy.Data (Double)
import qualified Prelude as P

instance Plus Double where
  (+) = (P.+)