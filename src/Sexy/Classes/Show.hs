module Sexy.Classes.Show (Show(..)) where

import Sexy.Data.String (String)

class Show a where
  show :: a -> String

