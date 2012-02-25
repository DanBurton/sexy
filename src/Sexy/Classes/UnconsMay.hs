module Sexy.Classes.UnconsMay (
    UnconsMay(..)
  , module X
  ) where

import Sexy.Data (Maybe(..), seq)
import Sexy.Classes.HasElem as X


class HasElem list => UnconsMay list where
  unconsMay :: list -> Maybe (Elem list, list)

  foldr :: (Elem list -> b -> b) -> b -> list -> b
  foldr myCons myNil = go
    where go xs = case unconsMay xs of
            Nothing -> myNil
            Just (y,ys) -> myCons y (foldr myCons myNil ys)

  fromCons :: Elem list -> list -> Elem list
  fromCons x xs = case unconsMay xs of
    Nothing -> x
    Just (y,_) -> y


  foldr1 :: (a ~ Elem list) => (a -> a -> a) -> list -> Maybe a
  foldr1 myCons xs = case unconsMay xs of
    Nothing -> Nothing
    Just (y,ys) -> Just (foldr myCons y ys)

  foldl :: (b -> Elem list -> b) -> b -> list -> b
  foldl s = go
    where go z xs = case unconsMay xs of
            Nothing -> z
            Just (y,ys) -> go (s z y) ys

  foldl1 :: (a ~ Elem list) => (a -> a -> a) -> list -> Maybe a
  foldl1 s xs = case unconsMay xs of
    Nothing -> Nothing
    Just (y,ys) -> Just (foldl s y ys)

  foldl' :: (b -> Elem list -> b) -> b -> list -> b
  foldl' s = go
    where go z xs = z `seq` case unconsMay xs of
            Nothing -> z
            Just (y,ys) -> go (s z y) ys

  foldl1' :: (a ~ Elem list) => (a -> a -> a) -> list -> Maybe a
  foldl1' s xs = case unconsMay xs of
    Nothing -> Nothing
    Just (y,ys) -> Just (foldl' s y ys)

-- Law: uncons nil == Nothing
-- otherwise, it must always be Just
