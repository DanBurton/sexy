module Sexy.Instances.Monoid.Either () where

import Sexy.Data (Either)
import Sexy.Classes (Monoid(..), Nil)
import Sexy.Instances.Nil.Either ()
import Sexy.Instances.Plus.Either ()

instance (Nil e, Monoid a) => Monoid (Either e a) where
