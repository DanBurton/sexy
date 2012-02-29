module Sexy.Data.Basics (
    const
  , asTypeOf
  , asTypeIn
  , asAppliedTo
  , undefined
  , (.:)
  , fst
  , snd
  , flip
  , const2
  , module X
  ) where

import Prelude as X (seq, error)

(.:) :: (c -> d) -> (a -> b -> c) -> a -> b -> d
(.:) f g x y = f (g x y)

fst :: (a,b) -> a
fst (x,_) = x

snd :: (a,b) -> b
snd (_,x) = x

flip :: (a -> b -> c) -> b -> a -> c
flip f x y = f y x

const :: a -> b -> a
const x _ = x

const2 :: a -> b -> c -> a
const2 x _ _ = x

asTypeOf :: a -> a -> a
asTypeOf = const

asAppliedTo :: (a -> b) -> a -> a -> b
asAppliedTo = const

asTypeIn :: a -> (a -> b) -> a
asTypeIn = const

undefined :: a
undefined = X.error "Sexy.undefined"
