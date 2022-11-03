filterIndex :: Eq b => [b] -> ([b] -> b) -> Int
filterIndex xs predicate = head $ filter ((== predicate xs) . (xs !!)) [0..]

main = do
  let v = [10, 2, 4, 5, 9]

  print ("Maximum element is " ++ show (maximum v))
  print ("Maximum element index is " ++ show (filterIndex v maximum))

  print ("Minimum element is " ++ show (minimum v))
  print ("Minimum element index is " ++ show (filterIndex v minimum))
