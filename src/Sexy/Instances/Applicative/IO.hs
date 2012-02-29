module Sexy.Instances.Applicative.IO () where

import Sexy.Data (IO(..))
import Sexy.Classes (Applicative(..))
import Sexy.Instances.Functor.IO ()
import Sexy.Instances.Pure.IO ()


instance Applicative IO where
  -- (<*>) :: IO (a -> b) -> IO a -> IO b
  (IO f) <*> (IO x) =
    IO (\rw -> let (# rw', f' #) = f rw
                   (# rw'', x' #) = x rw'
               in (# rw'', f' x' #))
