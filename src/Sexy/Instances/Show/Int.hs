module Sexy.Instances.Show.Int () where

import Sexy.Classes (Show(..))
import Sexy.Data (Int)

import qualified Prelude as P

instance Show Int where
  show = P.show