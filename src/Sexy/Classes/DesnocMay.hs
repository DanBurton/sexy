module Sexy.Classes.DesnocMay (DesnocMay(..)) where

import Sexy.Data (Maybe)


class DesnocMay l where
  desnocMay :: l a -> Maybe (a, l a)
