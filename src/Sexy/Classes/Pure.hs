module Sexy.Classes.Pure (Pure(..)) where


class Pure f where
  pure :: a -> f a
