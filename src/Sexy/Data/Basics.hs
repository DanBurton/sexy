module Sexy.Data.Basics (
    const
  , asTypeOf
  , asTypeIn
  , asAppliedTo
  , undefined
  , module Prelude
  ) where

import Prelude (seq, error)

const :: a -> b -> a
const x _ = x

asTypeOf :: a -> a -> a
asTypeOf = const

asAppliedTo :: (a -> b) -> a -> a -> b
asAppliedTo = const

asTypeIn :: a -> (a -> b) -> a
asTypeIn = const

undefined :: a
undefined = error "Sexy.undefined"
