module Sexy.Instances.Monoid.Maybe () where

import Sexy.Data (Maybe)
import Sexy.Classes (Monoid(..), Plus)
import Sexy.Instances.Nil.Maybe ()
import Sexy.Instances.Plus.Maybe ()

instance (Plus a) => Monoid (Maybe a) where
