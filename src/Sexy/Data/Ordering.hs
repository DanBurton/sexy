module Sexy.Data.Ordering (
    Ordering(..)
  , ordering
  ) where

data Ordering = LT | EQ | GT

ordering :: a -> a -> a -> Ordering -> a
ordering x _ _ LT = x
ordering _ x _ EQ = x
ordering _ _ x GT = x
