import Data.List
import System.IO

maxInt = maxBound :: Int


num9 = 9 :: Int
sqrtOf9 = sqrt (fromIntegral num9)

primeNumbers = [1,2,3,5,7,11]
morePrime = primeNumbers ++ [13,17,19,23,29]

favNums = 1 : 5 : 10 : 50 : []

infPow10 = [10,20..]
first10Pows10 = take 10 infPow10
somePow10 = infPow10 !! 2050

divisibleBy9And13 = [x | x <- [1..5000], x `mod` 13 == 0, x `mod` 9 == 0]

pow3 = [3^n | n <- [1..10]]

sumMe x y = x + y
addTuples (x,y) (x2,y2) = (x+x2, y+y2)
