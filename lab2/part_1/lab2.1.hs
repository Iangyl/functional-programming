factorial :: Double -> Double
factorial 0 = 1
factorial n = n * factorial (n - 1)

uCos :: Double -> Double -> Double -> Double
uCos x n precision =
    if (x ** n) / factorial n > precision then (x ** n) / factorial n - uCos x (n + 2) precision
    else 0

y x
  | x >= -1 && x <= 0 = uCos (x / 2) 0 0.0001 / uCos (x ** 2) 0 0.0001
  | x > 0 = (uCos (x / 2) 0 0.0001 ** 2) * uCos (2 * x) 0 0.0001
  | otherwise = -11111111111

main = do 
    putStrLn "The error is:"
    let custom = uCos 5 1 0.00000000001
    let buildin = cos 5
    print (abs (custom - buildin))

    putStrLn "The result is:"
    print (map y [-2, -1.5 .. 2])
