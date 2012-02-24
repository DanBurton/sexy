module Sexy.Instances.Show.Char () where

import Sexy.Classes (Show(..))
import Sexy.Data (Char)

import qualified Prelude as P

instance Show Char where
  show = P.show