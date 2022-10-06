func :: Integral p => p -> p -- Integral typeclass is a type that denotes all integer types in haskell: Integer, Int, Int64
func 0 = 0 -- if user enter zero than the answer would be zero too, aka overloading
func n = (n `mod` 10) + func (n `div` 10)

main = do
    putStrLn "Input the number"
    input <- getLine -- receiving information from user to variable
    let num = read input :: Integer -- reading and converting received info from user
    print (func num)
