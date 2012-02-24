module Sexy.Instances.Show.Integer () where

import Sexy.Classes (Show(..))
import Sexy.Data (Integer)
import qualified Prelude as P

instance Show Integer where
  show = P.show
