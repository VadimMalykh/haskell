isPrime :: Integer -> Bool
isPrime n = (length (filter (\x -> n `mod` x == 0) [2..n `div` 2])) == 0

f :: Integer -> [(Integer, Integer)]
f n = [(i,j) | i <- [2..n-1], j <- [1..i-1], isPrime (i+j)]
