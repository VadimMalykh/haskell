import Euterpea

twoFiveOne :: Pitch -> Dur -> Music Pitch

twoFiveOne p d =    let minorCord :: Music a -> Music a
                        minorCord m = m :=: transpose 3 m :=: transpose 7 m
                        majorCord :: Music a -> Music a
                        majorCord m = m :=: transpose 4 m :=: transpose 7 m
                        two = transpose 2 (note d p)
                        five = transpose 7 (note d p)
                        one = note (d*2) p
                    in minorCord two :+: majorCord five :+: majorCord one

doPlay = play (twoFiveOne ((C, 4) :: Pitch) wn)
