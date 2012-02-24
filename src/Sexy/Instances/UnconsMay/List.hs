module Sexy.Instances.UnconsMay.List () where

import Sexy.Classes (UnconsMay(..))
import Sexy.Data (Maybe(..), list)
import Sexy.Instances.HasElem.List ()


instance UnconsMay [a] where
  unconsMay [] = Nothing
  unconsMay (x:xs) = Just (x,xs)

  foldr = list
