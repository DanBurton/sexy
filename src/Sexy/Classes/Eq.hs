module Sexy.Classes.Eq (Eq(..)) where

import Sexy.Data (Bool)


class Eq a where
  (==) :: a -> a -> Bool
