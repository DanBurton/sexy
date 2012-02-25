module Sexy.Classes.Monoid (Monoid(..), module X) where

import Sexy.Classes.Nil as X
import Sexy.Classes.Plus as X
import Sexy.Classes.UnconsMay as X

class (Nil a, Plus a) => Monoid a where
  concat :: (UnconsMay l) => l a -> a
  concat = foldr (+) nil
