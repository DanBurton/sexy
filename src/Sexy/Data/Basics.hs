module Sexy.Data.Basics (
    id
  , const
  , undefined
  ) where

id :: a -> a
id x = x

const :: a -> b -> a
const x _ = x

undefined :: a
undefined = undefined
