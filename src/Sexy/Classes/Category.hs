module Sexy.Classes.Category (
    Category(..)
  , (<<<)
  , (>>>)
  ) where


class Category cat where
  id :: cat a a
  (.) :: cat b c -> cat a b -> cat a c

(<<<) :: Category cat => cat b c -> cat a b -> cat a c
(<<<) = (.)

(>>>) :: Category cat => cat a b -> cat b c -> cat a c
a >>> b = b . a
