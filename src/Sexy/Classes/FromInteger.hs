module Sexy.Classes.FromInteger (FromInteger(..)) where

import Sexy.Data.Integer (Integer)

class FromInteger a where
  fromInteger :: Integer -> a
