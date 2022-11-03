asRational rat = show (fst rat) ++ "/" ++ show (snd rat)

ratLcm rat1 rat2 = z `div` gcd (b*d) z
  where a = fst rat1
        b = snd rat1
        d = snd rat2
        z = lcm (a*d) (b * fst rat2) 

main = do
  let fRat = (1, 2)
  let sRat = (3, 4)
  let res = "Least common multiple of " ++ asRational fRat ++ " and " ++ asRational sRat ++ " is " ++ show (ratLcm fRat sRat)
  putStrLn res
