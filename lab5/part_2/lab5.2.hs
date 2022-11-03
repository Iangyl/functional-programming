getR com = sqrt (fst com ** 2 + snd com ** 2)
getPhi com = acos (fst com / getR com)
asTrygonometric com = "z = " ++ show (getR com) ++ "(cos(" ++ phi ++ ") + isin(" ++ phi ++ "))"
  where phi = show (getPhi com)
asAgebraic :: (Show a1, Show a2) => (a1, a2) -> String 
asAgebraic com = "z = " ++ show (fst com) ++ " + " ++ show (snd com) ++ "i"


main = do
  let complex = [(1, 3), (4, 3)]
  putStrLn "Numbers in algebraic form"
  putStrLn (unlines [asAgebraic x | x <- complex])

  putStrLn "Numbers in trygonometric form"
  putStrLn (unlines [asTrygonometric x | x <- complex])
