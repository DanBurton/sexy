module Sexy.Functions.Bool (
    fromBool
  , toBool
  , (&&)
  , (||)
  , not
  ) where

import Sexy.Core

fromBool :: (BoolC b, BoolC b') => b -> b'
fromBool = bool true false

toBool :: (BoolC b) => b -> Bool
toBool = fromBool

(&&) :: BoolC b => b -> b -> b
x && y = bool y x x

(||) :: BoolC b => b -> b -> b
x || y = bool x y x

not :: BoolC b => b -> b
not = bool false true
