# Використання рекурсії для організації повторювальних процесів

Варіант 1<br />
Завдання 1.2

## Мета

Сформувати декларативне мислення в галузі програмування завдяки використанню чистих функцій, рекурсій замість циклів запобіганню даних, що змінюються. Опанувати застосування рекурсивних функцій для обчислювальних процесів.

## Умова задачі

Вкладник поклав в банк <i>sum</i> грошових одиниць під <i>pr</i> відсотків за один період. Усі дані вводити з клавіатури. Використовуючи рекурсію, визначити величину вкладу по звершенні <i>m</i> періодів часу.
<b>Контрольний тест:</b> введені дані: сума вкладу 1000, відсотки за період 1.25, кількість періодів 12, отриманий результат: 1160.75

## Обгрунтування вибору середовища та мови функціонального програмування

Середовище програмування: Visual Studio Code <br/><br/>

Безкоштовний та зручний редактор коду, який можна використовувати майже для будь-якої мови програмування, а також можна використовувати в комерційних цілях.
Має широкий спектр налаштувань та можливостей, які надають плагіни, для поліпшення процесу розробки в плані комфорту та швидкості.<br/>
Мова функціонального програмування: Haskell

## Структура програми (HIPO діаграма)

![блок-схема](https://github.com/Iangyl/functional-programming/blob/main/lab1/images/scheme2.png)

## Код програми з коментарями

```haskell
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

```

## Посилання на проект з вихідним кодом

https://github.com/Iangyl/functional-programming/blob/main/lab1/part_1/lab1.2.hs

## Результати

![результати](https://github.com/Iangyl/functional-programming/blob/main/lab1/images/results2.png)

## Аналіз достовірності

Аналізом достовірності є проходження контрольного тесту.

## Висновки

В ході роботи було написано програму, що визначає величину депозиту по завершенню заданих користувачем періодів. Застосована хвостова рекурсія.
