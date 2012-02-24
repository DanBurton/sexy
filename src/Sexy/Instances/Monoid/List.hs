module Sexy.Instances.Monoid.List () where

import Sexy.Classes (Monoid(..))
import Sexy.Instances.Nil.List ()
import Sexy.Instances.Plus.List ()

instance Monoid [a] where
