module Sexy.Data.Unit (
    unit
  ) where

unit :: a -> () -> a
unit x () = x
