# Програмування списків мовами функціонального програмування

Варіант 1<br />
Завдання 4.2

## Мета

Опанувати теоретичні основи використання списків функціональними мовами та розробити програми обробки списків.

## Умова задачі

Написати код, що моделює роботу сортувального вузла на залізниці в процесі формування складу потягу. На сортувальному вузлі формуються потяги. Нехай існує два типи вагонів. На кожний напрямок потяг складається з вагонів одного типу. Відомі такі часові характеристики для кожного потягу: інтервали між потягами, кількість вагонів у потягу, тривалість причеплення вагону до потягу, тривалість огляду сформованого потягу, загальна тривалість простою потягу до його відправлення. Вивести на екран склад кожного потягу та сценарій виконання дій з урахування часових характеристик.

## Обгрунтування вибору середовища та мови функціонального програмування

Середовище програмування: Visual Studio Code<br/><br/>
Мова функціонального програмування: Haskell<br/><br/>

Безкоштовний та зручний редактор коду, який можна використовувати майже для будь-якої мови програмування, а також можна використовувати в комерційних цілях.
Має широкий спектр налаштувань та можливостей, які надають плагіни, для поліпшення процесу розробки в плані комфорту та швидкості.<br/>

## Код програми

```haskell

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
```

## Посилання на проект з вихідним кодом

https://github.com/Iangyl/functional-programming/blob/main/lab4/part_2/lab4.2.hs

## Результати

![результати](https://github.com/Iangyl/functional-programming/blob/main/lab4/images/results2.png)

## Висновки

В процесі виконання лабораторної роботи було опановано практичні основи використання списків функціональними мовами та розробити програми обробки списків.
