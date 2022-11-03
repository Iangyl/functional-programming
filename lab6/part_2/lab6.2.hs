showReverse :: Integral a => [a] -> a -> [a]
showReverse stack m = filter (\x -> x `mod` m /= 0) (reverse stack)

main = do
  let stack = [10, 9 .. 1] 

  putStrLn "Stack:" 
  print stack

  putStrLn "Input the number"
  input <- getLine
  
  let m = read input :: Int

  putStrLn "Reverse stack:"
  print (showReverse stack m)
