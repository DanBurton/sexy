module Sexy.Instances.Eq.Char () where

import Sexy.Classes (Eq(..), BoolC(..))
import Sexy.Data (Char)

import qualified Prelude as P


instance Eq Char where
 x == y = case x P.== y of
   P.True -> true
   P.False -> false
