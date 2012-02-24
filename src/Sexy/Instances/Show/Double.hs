module Sexy.Instances.Show.Double () where

import Sexy.Classes (Show(..))
import Sexy.Data (Double)

import qualified Prelude as P

instance Show Double where
  show = P.show
