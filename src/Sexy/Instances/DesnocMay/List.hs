module Sexy.Instances.DesnocMay.List () where

import Sexy.Data (Maybe(..))
import Sexy.Classes (MaybeC(..), DesnocMay(..))
import Sexy.Instances.MaybeC.Maybe ()


instance DesnocMay [] where
  desnocMay [] = nothing
  desnocMay [x] = just (x, [])
  desnocMay (x:xs) = let Just (y, ys) = desnocMay xs
                     in just (y, x:ys)
