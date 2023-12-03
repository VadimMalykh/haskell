import Euterpea

twoFiveOne :: Pitch -> Dur -> Music Pitch

twoFiveOne p d =    let minorCord :: Music a -> Music a
                        minorCord n = n :=: transpose 3 n :=: transpose 7 n
                        majorCord :: Music a -> Music a
                        majorCord n = n :=: transpose 4 n :=: transpose 7 n
                        two = transpose 2 (note d p)
                        five = transpose 7 (note d p)
                        one = note (d*2) p
                    in minorCord two :+: majorCord five :+: majorCord one

doPlay = play (twoFiveOne ((C, 4) :: Pitch) wn)
