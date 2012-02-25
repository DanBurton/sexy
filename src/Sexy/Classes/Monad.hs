module Sexy.Classes.Monad (
    Monad(..)
  , module X
  ) where

import Sexy.Classes.Applicative as X


class (Applicative m) => Monad m where
  join :: m (m a) -> m a
  join mma = mma >>= (\x -> x)

  (>>=) :: m a -> (a -> m b) -> m b
  x >>= f = join (f <$> x)

(>>) :: m a -> m b -> m b
f >> g = f >>= (\_ -> g)
