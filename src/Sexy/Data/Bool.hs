module Sexy.Data.Bool (
    bool
  , otherwise
  , module X
  ) where

import GHC.Types as X (Bool(..))

bool :: a -> a -> Bool -> a
bool x _ True  = x
bool _ x False = x

otherwise :: Bool
otherwise = True
