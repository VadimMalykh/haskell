f x = x + 2
g x = x * 2
h x = x - 10

preCompose :: (a -> b) -> (b -> c) -> a -> c
preCompose f = flip (.) f

postCompose :: (b -> c) -> (a -> b) -> a -> c
postCompose f = (.) f

-- show pre-compose is composable with reverse order
pref = preCompose f
preg = preCompose g
pre_gf = preCompose (g . f)
pref_preg = pref . preg
-- pre_gf h 10
-- pref_preg h 10

-- show post-compose is composable
postf = postCompose f
postg = postCompose g
post_gf = postCompose (g . f)
postg_postf = postg . postf

-- post_gf h 10
-- postg_postf h 10
