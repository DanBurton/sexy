module Sexy.Functions.Maybe (
    fromMaybe
  , isJust
  , isNothing
  , listToMaybe
  , maybeToList
  , catMaybes
  , mapMaybe
  ) where

import Sexy.Core

fromMaybe :: (MaybeC m, MaybeC f) => f a -> m a
fromMaybe = maybe just nothing

isJust :: MaybeC m => m a -> Bool
isJust = maybe (const True) False

isNothing :: MaybeC m => m a -> Bool
isNothing = maybe (const False) True

listToMaybe :: UnconsMay l => l a -> Maybe a
listToMaybe xs = fst <$> unconsMay xs

maybeToList :: MaybeC m => m a -> [a]
maybeToList = maybe (\x -> [x]) []

catMaybes :: (List l, MaybeC m) => l (m a) -> l a
catMaybes = foldr step empty
  where step v acc = maybe (<| acc) acc v

mapMaybe :: (List l, MaybeC m) =>  (a -> m b) -> l a -> l b
mapMaybe f = foldr step empty
  where step v acc = maybe (<| acc) acc (f v)
