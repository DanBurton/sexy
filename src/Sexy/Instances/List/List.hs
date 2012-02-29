module Sexy.Instances.List.List where

import Sexy.Classes (List)
import Sexy.Instances.Empty.List ()
import Sexy.Instances.Functor.List ()
import Sexy.Instances.Cons.List ()
import Sexy.Instances.UnconsMay.List ()

instance List [] where
