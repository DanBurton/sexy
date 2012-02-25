module Sexy.Instances.Functor.IO () where

import Sexy.Data (IO(..))
import Sexy.Classes (Functor(..))

instance Functor IO where
  -- (<$>) :: (a -> b) -> IO a -> IO b
  f <$> (IO io) = IO (\rw -> let (# rw', a #) = io rw
                             in (# rw', f a #))

