module Sexy.Data.Either (
    Either(..)
  , either'
  , fromLeft'
  , fromRight'
  ) where

data Either a b = Left a | Right b

either' :: (a -> c) -> (b -> c) -> Either a b -> c
either' f _ (Left x)  = f x
either' _ g (Right x) = g x

fromLeft' :: a -> Either a b -> a
fromLeft' _ (Left x)  = x
fromLeft' x (Right _) = x

fromRight' :: b -> Either a b -> b
fromRight' _ (Right x) = x
fromRight' x (Left _)  = x
