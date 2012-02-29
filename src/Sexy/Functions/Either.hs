module Sexy.Functions.Either where

import Sexy.Core

fromEither :: (EitherC e, EitherC e') => e a b -> e' a b
fromEither = either left right

toEither :: (EitherC e) => e a b -> Either a b
toEither = fromEither
