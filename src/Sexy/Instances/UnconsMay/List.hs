module Sexy.Instances.UnconsMay.List () where

import Sexy.Classes (UnconsMay(..))
import Sexy.Data (Maybe(..), list', fromCons')
import Sexy.Instances.HasElem.List ()


instance UnconsMay [a] where
  unconsMay [] = Nothing
  unconsMay (x:xs) = Just (x,xs)

  foldr = list'
  fromCons = fromCons'
