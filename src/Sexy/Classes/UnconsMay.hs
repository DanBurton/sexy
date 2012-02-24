module Sexy.Classes.UnconsMay (
    UnconsMay(..)
  , module X
  ) where

import Sexy.Data (Maybe(..))
import Sexy.Classes.HasElem as X


class HasElem list => UnconsMay list where
  unconsMay :: list -> Maybe (Elem list, list)

  foldr :: (Elem list -> b -> b) -> b -> list -> b
  foldr myCons myNil = go
    where go xs = case unconsMay xs of
            Nothing -> myNil
            Just (y,ys) -> myCons y (foldr myCons myNil ys)

  foldr1 :: (a ~ Elem list) => (a -> a -> a) -> list -> Maybe a
  foldr1 myCons xs = case unconsMay xs of
    Nothing -> Nothing
    Just (y,ys) -> Just (foldr myCons y ys)

-- Law: uncons nil == Nothing
-- otherwise, it must always be Just
