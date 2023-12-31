import Euterpea

t251 :: Music Pitch
t251 =  let dMinor = d 4 wn :=: f 4 wn :=: a 4 wn
            gMajor = g 4 wn :=: b 4 wn :=: d 5 wn
            cMajor = c 4 bn :=: e 4 bn :=: g 4 bn
        in dMinor :+: gMajor :+: cMajor

doPlay = play t251
