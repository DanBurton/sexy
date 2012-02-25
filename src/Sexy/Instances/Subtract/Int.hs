module Sexy.Instances.Subtract.Int () where

import Sexy.Classes (Subtract(..))
import Sexy.Data (Int)

import qualified Prelude as P

instance Subtract Int where
  (-) = (P.-)
