module Sexy.Data.Bool (
    Bool(..)
  , bool
  , otherwise
  ) where

data Bool = True | False

bool :: a -> a -> Bool -> a
bool x _ True  = x
bool _ x False = x

otherwise :: Bool
otherwise = True
