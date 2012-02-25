module Sexy.Data.Maybe (
    Maybe(..)
  , maybe'
  , fromJust'
  ) where

data Maybe a = Just a | Nothing

maybe' :: (a -> b) -> b -> Maybe a -> b
maybe' f _ (Just x) = f x
maybe' _ x Nothing  = x

-- fromJust = maybe id
fromJust' :: a -> Maybe a -> a
fromJust' _ (Just x) = x
fromJust' x Nothing  = x

