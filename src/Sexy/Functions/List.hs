module Sexy.Functions.List where

import Sexy.Core
import Sexy.Functions.Maybe
import Sexy.Functions.Bool

fromList :: (List l, List f) => f a -> l a
fromList = foldr (<|) empty

unsafeMay :: MaybeC m => (a -> m b) -> String -> a -> b
unsafeMay f msg = fromJust (error msg) . f

-- Basic Functions

head :: (UnconsMay l) => l a -> Maybe a
head xs = fst <$> unconsMay xs

unsafeHead :: (UnconsMay l) => l a -> a
unsafeHead = unsafeMay head "Sexy.unsafeHead"

tail :: (UnconsMay l) => l a -> Maybe (l a)
tail xs = snd <$> unconsMay xs

unsafeTail :: (UnconsMay l) => l a -> l a
unsafeTail = unsafeMay tail "Sexy.unsafeTail"

init :: (DesnocMay l) => l a -> Maybe (l a)
init xs = snd <$> desnocMay xs

unsafeInit :: (DesnocMay l) => l a -> l a
unsafeInit = unsafeMay init "Sexy.unsafeInit"

last :: (DesnocMay l) => l a -> Maybe a
last xs = fst <$> desnocMay xs

unsafeLast :: (DesnocMay l) => l a -> a
unsafeLast = unsafeMay last "Sexy.unsafeLast"

null :: (UnconsMay l, BoolC b) => l a -> b
null = foldr (const2 false) true

null' :: (UnconsMay l) => l a -> Bool
null' = null

-- length :: (UnconsMay l, Integral i) => l a -> i
-- length = foldr (+1) 0

length' :: (UnconsMay l) => l a -> Int
length' = foldr (const (+1)) 0

-- List transformations

reverse :: (List l) => l a -> l a
reverse = foldl (flip (<|)) empty

intersperse :: (List l) => a -> l a -> l a
intersperse = undefined

transpose :: (List l, List f) => l (f a) -> f (l a)
transpose = foldr (zipWith (<|)) (repeat empty)

subsequences :: (List l) => l a -> l (l a)
subsequences = undefined

permutations :: (List l) => l a -> l (l a)
permutations = undefined

-- special folds

concatMap :: (Monoid b, Functor f, UnconsMay f) => (a -> b) -> f a -> b
concatMap f = concat . (f <$>)

and :: (UnconsMay l, BoolC b) => l b -> b
and = foldr (&&) true

or :: (UnconsMay l, BoolC b) => l b -> b
or = foldr (||) false

any :: (UnconsMay l, Functor l, BoolC b) => (a -> b) -> l a -> b
any = or .: (<$>)

all :: (UnconsMay l, Functor l, BoolC b) => (a -> b) -> l a -> b
all = and .: (<$>)

sum :: (UnconsMay l, Monoid a) => l a -> a
sum = concat

product :: (UnconsMay l) => l a -> a
product = undefined

maximum :: (UnconsMay l, MaybeC m) => l a -> m a
maximum = undefined

maximum' :: (UnconsMay l) => l a -> Maybe a
maximum' = maximum

minimum :: (UnconsMay l, MaybeC m) => l a -> m a
minimum = undefined

minimum' :: (UnconsMay l) => l a -> Maybe a
minimum' = minimum

-- Building lists
-- Scans

scanl :: (List l) => (a -> b -> a) -> a -> l b -> l a
scanl f q ls = q <| (case unconsMay ls of
  Nothing -> empty
  Just (x,xs) -> scanl f (f q x) xs)

scanl1 :: (List l) => (a -> a -> a) -> l a -> l a
scanl1 f ls = case unconsMay ls of
  Nothing -> empty
  Just (x,xs) -> scanl f x xs

scanr :: (List l) => (a -> b -> b) -> b -> l a -> l b
scanr f q0 ls = case unconsMay ls of
  Nothing -> q0 <| empty
  Just (x,xs) -> f x q <| qs
    where qs = scanr f q0 xs
          q = unsafeHead qs

scanr1 :: (List l) => (a -> a -> a) -> l a -> l a
scanr1 f ls = case unconsMay ls of
  Nothing -> empty
  Just (x,xs) -> case unconsMay xs of
    Nothing -> x <| empty
    Just _  -> f x q <| qs
      where qs = scanr1 f xs
            q = unsafeHead qs

iterate :: (Cons l) => (a -> a) -> a -> l a
iterate = iterateWith (<|)

iterate' :: (a -> a) -> a -> [a]
iterate' = iterate

iterateWith :: (a -> b -> b) -> (a -> a) -> a -> b
iterateWith c f = go
  where go x = x `c` go (f x)

repeat :: (List l) => a -> l a
repeat = repeatWith (<|)

repeat' :: a -> [a]
repeat' = repeat

repeatWith :: (a -> b -> b) -> a -> b
repeatWith c x = xs where xs = x `c` xs

replicate :: (List l) => Int -> a -> l a
replicate n x = take n (repeat x)

replicate' :: Int -> a -> [a]
replicate' = replicate

cycle :: (Plus (l a), List l) => l a -> l a
cycle xs = case unconsMay xs of
  Nothing -> error "Sexy.cycle: empty list"
  Just _ -> xs' where xs' = xs + xs'

-- note the similarity between unfoldr and unconsMay
unfoldr :: (List l, MaybeC m) => (b -> m (a, b)) -> b -> l a
unfoldr f seed = maybe (\(x,seed') -> x <| unfoldr f seed')
                       empty
                       (f seed)

-- extracting sublists

take :: (List l) => Int -> l a -> l a
take 0 _ = empty
take n xs = case unconsMay xs of
  Nothing -> empty
  Just (y,ys) -> y <| take (n-1) ys

drop :: (UnconsMay l, Empty l) => Int -> l a -> l a
drop 0 xs = xs
drop n xs = case unconsMay xs of
  Nothing -> empty
  Just (_,ys) -> drop (n-1) ys

splitAt :: (List l,Empty l) => Int -> l a -> (l a, l a)
splitAt 0 xs = (empty, xs)
splitAt n xs = case unconsMay xs of
  Nothing -> (empty, empty)
  Just (y,ys) -> let (l, r) = splitAt (n-1) ys
                 in (y <| l, r)

takeWhile :: (List l, BoolC b) => (a -> b) -> l a -> l a
takeWhile f xs = case unconsMay xs of
  Nothing -> empty
  Just (y,ys) -> bool (y <| takeWhile f ys) empty (f y)

dropWhile :: (UnconsMay l, Empty l, BoolC b) => (a -> b) -> l a -> l a
dropWhile f xs = case unconsMay xs of
  Nothing -> empty
  Just (y,ys) -> bool (dropWhile f ys) xs (f y)

dropWhileEnd :: (List l, BoolC b) => (a -> b) -> l a -> l a
dropWhileEnd p = foldr step empty
  where step x xs = bool empty (x <| xs) (toBool (p x) && null xs)

span :: (List l, BoolC b) => (a -> b) -> l a -> (l a, l a)
span f xs = case unconsMay xs of
  Nothing -> (empty, empty)
  Just (y,ys) -> bool (let (l,r) = span f ys
                       in (y <| l, r))
                      (empty, xs)
                      (f y)

break :: (List l, BoolC b) => (a -> b) -> l a -> (l a, l a)
break p = span (not . p)

stripPrefix :: (Eq a, List l) => l a -> l a -> Maybe (l a)
stripPrefix xs ys = case unconsMay xs of
  Nothing -> just ys
  Just (x',xs') -> case unconsMay ys of
    Just (y',ys') | x' == y' -> stripPrefix xs' ys'
    _ -> nothing

group :: (Eq a, List l) => l a -> l (l a)
group xs = case unconsMay xs of
  Nothing -> empty
  Just (y,_) -> let (l,r) = span (==y) xs
                in l <| group r

inits :: (List l) => l a -> l (l a)
inits = (reverse <$>) . tails . reverse

tails :: (List l) => l a -> l (l a)
tails xs = xs <| case unconsMay xs of
  Nothing -> empty
  Just (_,ys) -> tails ys

-- Predicates

-- TODO: can be written exclusively with UnconsMay
-- TODO: let the lists be different
isPrefixOf :: (Eq a, List l) => l a -> l a -> Bool
isPrefixOf = and .: zipWith (==)

isSuffixOf :: (Eq a, List l) => l a -> l a -> Bool
isSuffixOf xs ys = isPrefixOf (reverse xs) (reverse ys)

isInfixOf :: (Eq a, List l) => l a -> l a -> Bool
isInfixOf = undefined

-- Searching lists

-- searching by equality

elem :: (Eq a, List l) => a -> l a -> Bool
elem a xs = case unconsMay xs of
  Nothing -> false
  Just (y,ys) -> (y == a) || elem a ys

notElem :: (Eq a, List l) => a -> l a -> Bool
notElem = not .: elem

lookup :: Eq a => a -> [(a, b)] -> Maybe b
lookup = undefined

-- searching with a predicate

find :: (BoolC b, List l) => (a -> b) -> l a -> Maybe a
find = listToMaybe .: filter

filter :: (BoolC b, List l) => (a -> b) -> l a -> l a
filter f = foldr step empty
  where step x acc = bool (x <| acc) acc (toBool $ f x)

partition :: (BoolC b, List l) => (a -> b) -> l a -> (l a, l a)
partition p xs = (filter p xs, filter (not . p) xs)

-- indexing lists

-- use $ instead of !!

-- todo: integral Int. lol.
elemIndex :: (Eq a, List l, MaybeC m) => a -> l a -> m Int
elemIndex = undefined

-- ...

zipWith :: List l => (a -> b -> c) -> l a -> l b -> l c
zipWith f xs ys = case unconsMay xs of
  Nothing       -> empty
  Just (x',xs') -> case unconsMay ys of
    Nothing -> empty
    Just (y',ys') -> f x' y' <| zipWith f xs' ys'

zip :: List l => l a -> l b -> l (a,b)
zip = zipWith (,)
