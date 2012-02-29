module Sexy.Instances.Empty.List () where

import Sexy.Classes (Empty(..), Nil(..))
import Sexy.Instances.Nil.List ()

instance Empty [] where
  empty = nil
