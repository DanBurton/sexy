module Sexy.Instances.MaybeC.Maybe () where

import Sexy.Data (Maybe(..), maybe', fromJust')
import Sexy.Classes (MaybeC(..))

import Sexy.Instances.Empty.Maybe ()
import Sexy.Instances.Pure.Maybe ()


instance MaybeC Maybe where
  maybe = maybe'
  fromJust = fromJust'
