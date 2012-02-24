module Sexy.Instances.Show.List () where

import Sexy.Classes (Show(..))
import qualified Prelude as P

import Sexy.Classes (Plus(..))
import Sexy.Instances.Plus.List

instance Show a => Show [a] where
  show xs = "[" + showL xs + "]"
    where
      showL [] = ""
      showL (x:[]) = show x
      showL (x:xs) = show x + "," + showL xs
