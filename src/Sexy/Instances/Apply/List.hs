module Sexy.Instances.Apply.List () where

import Sexy.Data (Maybe(..), Int)
import Sexy.Classes (Apply(..), Subtract(..))
import Sexy.Instances.Subtract.Int ()

instance Apply [a] where
  type In [a] = Int
  type Out [a] = Maybe a

  []     $ _ = Nothing
  (x:_)  $ 0 = Just x
  (_:xs) $ n = xs $ (n-1)
