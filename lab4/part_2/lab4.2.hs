
import Data.List

showIdle :: Show a => a -> [Char]
showIdle idle = "The idle is " ++ show idle ++ " hours"

showContent :: (Num t, Enum t, Show a) => a -> t -> String
showContent carType qty = "Train: " ++ intercalate "-" [show carType | x <- [0..qty]]
showIntervals :: Show a => a -> String
showIntervals int = "The interval is " ++ show int ++ " hours"
showCouplingDuration :: Int -> Int -> String
showCouplingDuration carType qty = "Train coupling duration: " ++ show (qty * (dur !! carType)) ++ " hours"
  where dur = [1, 2]
showInspectionDuration :: Int -> Int -> String
showInspectionDuration carType qty = 
  "Train coupling duration: " ++ show (qty * (dur !! carType)) ++ " hours"
  where dur = [2, 1]

showTrain :: [Int] -> String
showTrain train = unlines [
    showContent (head train) (train !! 1),
    showIntervals (train !! 2),
    showCouplingDuration (head train) (train !! 1),
    showInspectionDuration (head train) (train !! 1),
    showIdle (train !! 3),
    "-------------"
  ]

main = do
  -- (car type, cars quantity, interval, idle time)
  let trains = [[1, 7, 24, 3], [0, 8, 36, 2]]
  putStrLn (unlines [showTrain x | x <- trains])
