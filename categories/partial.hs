-- Construct the Kleisli category for partial functions (define composition and identity).

data Optional a = Empty | Some a deriving (Show)
id :: a -> Optional a
id a = Some a
compose :: (b -> Optional c) -> (a -> Optional b) -> (a -> Optional c)
compose f2 f1 = \a ->
  let res1 = f1 a in
    case res1 of
      Empty -> Empty
      Some b -> f2 b

safe_root :: Double -> Optional Double
safe_root x
  | x < 0 = Empty
  | otherwise = Some (sqrt x)

safe_reciprocal :: Double -> Optional Double
safe_reciprocal x
  | x == 0 = Empty
  | otherwise = Some (1 / x)

safe_root_reciprocal = safe_root `compose` safe_reciprocal

-- safe_root_reciprocal 0.01    = Some 10.0
-- safe_root_reciprocal (-0.01) = Empty
-- safe_root_reciprocal 0       = Empty
