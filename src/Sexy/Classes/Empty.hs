module Sexy.Classes.Empty (Empty(..)) where

import Sexy.Classes.Nil (Nil(..))

class Empty f where
  empty :: (Nil (f a)) => f a
  empty = nil
