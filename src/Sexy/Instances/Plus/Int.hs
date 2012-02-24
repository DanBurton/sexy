module Sexy.Instances.Plus.Int () where

import Sexy.Classes (Plus(..))
import Sexy.Data (Int)
import qualified Prelude as P

instance Plus Int where
  (+) = (P.+)
