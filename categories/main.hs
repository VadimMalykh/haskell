revrt :: (a,b) -> (b,a)
revrt (a,b) = (b,a)

main = print (revrt (5,6))