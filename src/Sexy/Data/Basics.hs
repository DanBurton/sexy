module Sexy.Data.Basics (
    const
  , asTypeOf
  , asTypeIn
  , asAppliedTo
  , undefined
  , module X
  ) where

import Prelude as X (seq, error)

const :: a -> b -> a
const x _ = x

asTypeOf :: a -> a -> a
asTypeOf = const

asAppliedTo :: (a -> b) -> a -> a -> b
asAppliedTo = const

asTypeIn :: a -> (a -> b) -> a
asTypeIn = const

undefined :: a
undefined = X.error "Sexy.undefined"
