module Sexy.Classes.Applicative (
    Applicative(..)
  , (<**>)
  , module X
  ) where

import Sexy.Classes.Functor as X
import Sexy.Classes.Pure as X


class (Functor f, Pure f) => Applicative f where
  (<*>) :: f (a -> b) -> f a -> f b
  (*>) :: f a -> f b -> f b
  u *> v = pure (\_ -> (\x -> x)) <*> u <*> v
  (<*) :: f a -> f b -> f a
  u <* v = pure (\x _ -> x) <*> u <*> v


(<**>) :: Applicative f => f a -> f (a -> b) -> f b
x <**> f = f <*> x
