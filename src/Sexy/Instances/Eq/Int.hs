module Sexy.Instances.Eq.Int () where

import Sexy.Classes (Eq(..))
import Sexy.Data (Int, Bool(..))

import qualified Prelude as P


instance Eq Int where
 x == y = case x P.== y of
   P.True -> True
   P.False -> False
