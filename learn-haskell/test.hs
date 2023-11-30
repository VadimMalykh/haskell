doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
                      then x
                      else doubleMe x

factorial :: Integer -> Integer
factorial n = product [1..n]


maximum' :: (Ord a) => [a] -> a
maximum' [] = error "Maximum of empty"
maximum' [x] = x
maximum' (x:xs)
          | x > maxTail = x
          | otherwise = maxTail
          where maxTail = maximum' xs


applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

fact :: (Integral a) => a -> a
fact 0 = 1
fact x = x * fact (pred x)

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = smallerSorted ++ [x] ++ biggerSorted
    where smallerSorted = quicksort [a | a <- xs, a <= x]
          biggerSorted = quicksort [a | a <- xs, a > x]
