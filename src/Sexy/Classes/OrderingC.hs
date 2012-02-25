module Sexy.Classes.OrderingC (OrderingC(..)) where

class OrderingC o where
  lt :: o
  eq :: o
  gt :: o
  ordering :: a -> a -> a -> o -> a
