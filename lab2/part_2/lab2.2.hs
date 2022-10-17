fraction :: Double -> Double
fraction 0 = 1
fraction n = (2*n - 1) + (1 / fraction  (n - 1))

main = do
  putStrLn "The result is:"
  print (fraction 300)

