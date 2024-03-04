import Euterpea

f1 :: Int -> [Pitch] -> [Pitch]
f1 n ps = 
    let f p = trans n p
    in map f ps

f2 :: [Dur] -> [Music a]
f2 ds = map rest ds

f3 :: [Music Pitch] -> [Music Pitch]
f3 ms = 
    let f (Prim (Note d p)) = (note (d/2) p) :+: (rest (d/2))
    in map f ms

listToMusic :: [Music a] -> Music a
listToMusic [] = rest 0
listToMusic (m : ms) = m :+: (listToMusic ms)