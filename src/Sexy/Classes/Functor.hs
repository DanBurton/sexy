module Sexy.Classes.Functor (Functor(..)) where

class Functor f where
  (<$>) :: (a -> b) -> f a -> f b

