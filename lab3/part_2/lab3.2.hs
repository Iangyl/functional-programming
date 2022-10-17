data Interval = I (Double,Double) Int
toXs :: Interval -> [Double]
toXs (I (a, b) n) = map (\x -> a + (b-a) / fromIntegral (n-1) * fromIntegral x) [0..n-1] -- make array from interval

wSimp h n number | (number == 1 || number == n) = (1/3) * h -- compute coefficients
                 | (number > 1 && number < n && even number) = (4/3) * h
                 | (number > 1 && number < n && odd number) = (2/3) * h
                 | otherwise = error "error"

integralSimp f (I (a,b) n) = 
    let h = (b - a) / fromIntegral (n - 1)
        xs = toXs (I (a, b) n)
        fs = map f xs
        ws = map (wSimp h n) [1..n]
    in sum $ zipWith (*) fs ws

main = do
    let f = \x -> cos x / sqrt (1 - x ** 2)

    print (integralSimp f (I (0, pi/4) 100))
