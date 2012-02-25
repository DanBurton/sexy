module Sexy.Instances.UnconsMay.Either () where

import Sexy.Classes (UnconsMay(..))
import Sexy.Data (Maybe(..), Either(..), fromRight', undefined)


instance UnconsMay (Either e) where
  unconsMay (Left _) = Nothing
  unconsMay (Right x) = Just (x, Left undefined)

  fromCons = fromRight'
