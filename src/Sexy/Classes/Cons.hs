module Sexy.Classes.Cons (Cons(..)) where


class Cons l where
  (<|) :: a -> l a -> l a
