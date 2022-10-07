-- The Eq typeclass defines equality (==) and inequality (/=)
-- The Fractional typeclass defines is equal to double or float
-- Num is a numeric typeclass
-- The line above means sum and interest equal to fractional, and periods any child of Num and Eq
-- the func return result the same type as value t2
deposit :: (Eq t1, Num t1, Fractional t2) => t2 -> t2 -> t1 -> t2
deposit sum _ 0 = sum
deposit sum interest periods = deposit (sum + (sum * interest/100)) interest (periods - 1)

main = do
    putStrLn "Input the sum"
    inputSum <- getLine
    let sum = read inputSum :: Double

    putStrLn "Input the interest"
    inputInterest <- getLine
    let interest = read inputInterest :: Double

    putStrLn "Input the periods number"
    inputPeriods <- getLine
    let periods = read inputPeriods :: Integer

    print (deposit sum interest periods)
