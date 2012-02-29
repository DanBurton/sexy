module Sexy.Classes.List (List, module X) where

import Sexy.Classes.Empty as X
import Sexy.Classes.Cons as X
import Sexy.Classes.UnconsMay as X
import Sexy.Classes.Functor as X

-- unwritten prereq: Plus (l a)

class (Empty l, Functor l, Cons l, UnconsMay l) => List l where
