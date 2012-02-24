module Sexy.Classes.Category (
    Category(..)
  , (<<<)
  , (>>>)
  ) where


class Category (~>) where
  id :: a ~> a
  (.) :: (b ~> c) -> (a ~> b) -> (a ~> c)

(<<<) :: Category (~>) => (b ~> c) -> (a ~> b) -> (a ~> c)
(<<<) = (.)

(>>>) :: Category (~>) => (a ~> b) -> (b ~> c) -> (a ~> c)
a >>> b = b . a
