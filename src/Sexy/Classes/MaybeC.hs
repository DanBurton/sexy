module Sexy.Classes.MaybeC (MaybeC(..)) where

import Sexy.Classes.Pure (Pure(..))
import Sexy.Classes.Empty (Empty(..))

class (Pure m, Empty m) => MaybeC m where
  just :: a -> m a
  just = pure
  
  nothing :: m a
  nothing = empty

  maybe :: (a -> b) -> b -> m a -> b

  fromJust :: a -> m a -> a
  fromJust = maybe (\x -> x)
