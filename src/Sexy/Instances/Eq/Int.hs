module Sexy.Instances.Eq.Int () where

import Sexy.Classes (Eq(..), BoolC(..))
import Sexy.Data (Int)
import Sexy.Instances.BoolC.Bool ()

import qualified Prelude as P


instance Eq Int where
 x == y = case x P.== y of
   P.True -> true
   P.False -> false
