module Sexy.Classes.UnconsMay (UnconsMay(..)) where

import Sexy.Data (Maybe(..), seq)


class UnconsMay l where
  unconsMay :: l a -> Maybe (a, l a)

  foldr :: (a -> b -> b) -> b -> l a -> b
  foldr myCons myNil = go
    where go xs = case unconsMay xs of
            Nothing -> myNil
            Just (y,ys) -> myCons y (foldr myCons myNil ys)

  fromCons :: a -> l a -> a
  fromCons x xs = case unconsMay xs of
    Nothing -> x
    Just (y,_) -> y


  foldr1 :: (a -> a -> a) -> l a -> Maybe a
  foldr1 myCons xs = case unconsMay xs of
    Nothing -> Nothing
    Just (y,ys) -> Just (foldr myCons y ys)

  foldl :: (b -> a -> b) -> b -> l a -> b
  foldl s = go
    where go z xs = case unconsMay xs of
            Nothing -> z
            Just (y,ys) -> go (s z y) ys

  foldl1 :: (a -> a -> a) -> l a -> Maybe a
  foldl1 s xs = case unconsMay xs of
    Nothing -> Nothing
    Just (y,ys) -> Just (foldl s y ys)

  foldl' :: (b -> a -> b) -> b -> l a -> b
  foldl' s = go
    where go z xs = z `seq` case unconsMay xs of
            Nothing -> z
            Just (y,ys) -> go (s z y) ys

  foldl1' :: (a -> a -> a) -> l a -> Maybe a
  foldl1' s xs = case unconsMay xs of
    Nothing -> Nothing
    Just (y,ys) -> Just (foldl' s y ys)

-- Law: uncons nil == Nothing
-- otherwise, it must always be Just
