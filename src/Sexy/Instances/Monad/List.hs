module Sexy.Instances.Monad.List () where

import Sexy.Classes (Monad(..), Monoid(..))
import Sexy.Instances.Monoid.List ()
import Sexy.Instances.Applicative.List ()


instance Monad [] where
  -- join :: [[a]] -> [a]
  join = concat
