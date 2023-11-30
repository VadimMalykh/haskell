coin_change :: (Integral a, Integral b) => a -> [a] -> b

coin_change _ [] = 0
coin_change amount coins@(coin : coins_left)
          | amount == 0 = 1
          | amount < 0 = 0
          | otherwise = coin_change amount coins_left + coin_change (amount-coin) coins
