module Sexy.Instances.Eq.Char () where

import Sexy.Classes (Eq(..))
import Sexy.Data (Char, Bool(..))

import qualified Prelude as P


instance Eq Char where
 x == y = case x P.== y of
   P.True -> True
   P.False -> False
