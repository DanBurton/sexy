module Sexy.Instances.Applicative.List () where

import Sexy.Classes (Applicative(..), Functor(..), Monoid(..))
import Sexy.Instances.UnconsMay.List ()
import Sexy.Instances.Monoid.List ()
import Sexy.Instances.Functor.List ()
import Sexy.Instances.Pure.List ()


instance Applicative [] where
  -- (<*>) :: [(a -> b)] -> [a] -> [b]
  -- foreach function f, foreach value x, (f x)
  -- (\f -> (\x -> f x) <$> xs) <$> fs -- now eta reduce
  -- (\f -> f <$> xs) <$> fs           -- now use section
  fs <*> xs = concat ((<$> xs) <$> fs)
