# Програмування списків мовами функціонального програмування

Варіант 1<br />
Завдання 4.1

## Мета

Опанувати теоретичні основи використання списків функціональними мовами та розробити програми обробки списків.

## Умова задачі

Створити список натуральних чисел (натуральні числа `>= 1`), кратних 3, задавши їх кількість. Вивести створений список. Виконати такі операції:
- додати елементи в список на задану позицію в списку;
- підрахувати кількість парних елементів в списку;
- замінити усі парні значення списку на середнє арифметичне елементів списку.

## Обгрунтування вибору середовища та мови функціонального програмування

Середовище програмування: Visual Studio Code<br/><br/>
Мова функціонального програмування: Haskell<br/><br/>

Безкоштовний та зручний редактор коду, який можна використовувати майже для будь-якої мови програмування, а також можна використовувати в комерційних цілях.
Має широкий спектр налаштувань та можливостей, які надають плагіни, для поліпшення процесу розробки в плані комфорту та швидкості.<br/>

## Код програми

```haskell
import Data.List
import System.IO
import Distribution.Compat.CharParsing (integral)

createList :: Int -> [Int]
createList a = [x * 3 | x <- [1..a]]

insertIntoList :: [Int] -> Int -> [Int] -> [Int]
insertIntoList el index list = left ++ el ++ right
  where (left, right) = splitAt index list

countEven :: [Int] -> Int
countEven list = length [x | x <- list, even x]

getMean :: [Int] -> Int
getMean list = ceiling (fromIntegral (sum list) / fromIntegral (length list))

replaceEvenWithMean:: [Int] -> [Int]
replaceEvenWithMean list = [ if even x then getMean list else x | x <- list]

main = do
    putStrLn "Input length of list"
    input <- getLine
    let length = read input :: Int
    let list = createList length
    putStrLn "Result"
    print list

    putStrLn "List after inserting elements 1, 2, 3 index 4"
    print (insertIntoList [1, 2, 3] 4 list)

    putStrLn "Even numbers quantity in list:"
    print (countEven list)

    putStrLn "After replace all even elements by mean:"
    print (replaceEvenWithMean list)
```

## Посилання на проект з вихідним кодом

https://github.com/Iangyl/functional-programming/blob/main/lab4/part_1/lab4.1.hs

## Результати

![результати](https://github.com/Iangyl/functional-programming/blob/main/lab4/images/results1.png)

## Висновки

В процесі виконання лабораторної роботи було опановано практичні основи використання списків функціональними мовами та розробити програми обробки списків.
