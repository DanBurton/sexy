module Sexy.Instances.Monoid.Function () where

import Sexy.Classes (Monoid(..))
import Sexy.Instances.Nil.Function ()
import Sexy.Instances.Plus.Function ()

instance (Monoid b) => Monoid (a -> b) where
