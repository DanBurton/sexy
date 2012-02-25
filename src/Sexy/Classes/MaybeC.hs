module Sexy.Classes.MaybeC (MaybeC(..)) where

import Sexy.Classes.Pure (Pure(..))
import Sexy.Classes.Empty (Empty(..))
import Sexy.Classes.Nil (Nil(..))

class (Pure m, Empty m) => MaybeC m where
  just :: a -> m a
  just = pure
  
  nothing :: (Nil c, c ~ m a) => c
  nothing = nil

  maybe :: (a -> b) -> b -> m a -> b