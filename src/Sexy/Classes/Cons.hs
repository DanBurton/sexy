module Sexy.Classes.Cons (Cons(..), module X) where

import Sexy.Classes.HasElem as X


class (HasElem list) => Cons list where
  (<|) :: Elem list -> list -> list
