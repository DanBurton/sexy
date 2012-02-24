module Sexy.Instances.Show.List () where

import Sexy.Classes (Show(..), (+))
import qualified Prelude as P
import Sexy.Instances.Plus.List ()


instance Show a => Show [a] where
  show xs = "[" + showL xs + "]"
    where
      showL [] = ""
      showL (y:[]) = show y
      showL (y:ys) = show y + "," + showL ys
