import Euterpea

data BluesPitchClass = Ro | MT | Fo | Fi | MS

type BluesPitch = (BluesPitchClass, Octave)

ro, mt, fo, fi, ms :: Octave -> Dur -> Music BluesPitch
ro o d = note d (Ro, o)
mt o d = note d (MT, o)
fo o d = note d (Fo, o)
fi o d = note d (Fi, o)
ms o d = note d (MS, o)

fromBlues :: Music BluesPitch -> Music Pitch

fromBlues (Prim (Note d p)) = case p of (Ro, o) -> c o d
                                        (MT, o) -> ef o d
                                        (Fo, o) -> f o d
                                        (Fi, o) -> g o d
                                        (MS, o) -> bf o d
fromBlues (Prim (Rest d)) = rest d
fromBlues (m1 :+: m2) = (fromBlues m1) :+: (fromBlues m2)
fromBlues (m1 :=: m2) = (fromBlues m1) :=: (fromBlues m2)
fromBlues (Modify c m) = Modify c (fromBlues m)

m1 = (ro 4 qn) :+: (fo 4 qn) :+: (fo 4 qn) :+: (ms 3 wn) :+: (ro 4 qn)

doPlay = play (fromBlues m1)