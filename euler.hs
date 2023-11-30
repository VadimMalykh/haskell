-- 1 https://projecteuler.net/problem=1
multiples :: Integer -> [Integer] -> [Integer]
multiples n xs = [i | i <- [1 .. n-1], foldl (||) False (map (\x -> i `mod` x == 0) xs)]

answer = sum $ multiples 1000 [3,5]
