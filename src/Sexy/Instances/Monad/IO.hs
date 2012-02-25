module Sexy.Instances.Monad.IO () where

import Sexy.Data (IO(..))
import Sexy.Classes (Monad(..))
import Sexy.Instances.Applicative.IO ()


instance Monad IO where
  -- join ::IO (IO a) -> IO a
  join (IO mma) =
    IO (\rw -> let (# rw', (IO ma) #) = mma rw 
                   (# rw'', a #) = ma rw'
               in (# rw'', a #))

