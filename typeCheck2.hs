data A = Aa
data B = Bb
data C = Cc

  q :: Aa -> Bb
  q Aa = Bb
 {- 
  w :: B -> C
  w B = C

  e :: A -> C
  e = w $ q
  -}
