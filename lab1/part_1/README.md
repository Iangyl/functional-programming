# Використання рекурсії для організації повторювальних процесів

Варіант 1<br />
Завдання 1.1

## Мета

Сформувати декларативне мислення в галузі програмування завдяки використанню чистих функцій, рекурсій замість циклів запобіганню даних, що змінюються. Опанувати застосування рекурсивних функцій для обчислювальних процесів.

## Умова задачі

Ввести з клавіатури натуральне число <i>n</i>. Знайти суму його цифр, використовуючи рекурентне означення функції <i>f(n)</i>:

![формула рекурентного означення функції](https://github.com/Iangyl/functional-programming/blob/main/lab1/images/pic1.png)

## Обгрунтування вибору середовища та мови функціонального програмування

Середовище програмування: Visual Studio Code <br/><br/>

Безкоштовний та зручний редактор коду, який можна використовувати майже для будь-якої мови програмування, а також можна використовувати в комерційних цілях.
Має широкий спектр налаштувань та можливостей, які надають плагіни, для поліпшення процесу розробки в плані комфорту та швидкості.<br/>
Мова функціонального програмування: Haskell

## Структура програми (HIPO діаграма)

![блок-схема](https://github.com/Iangyl/functional-programming/blob/main/lab1/images/scheme1.png)

## Код програми з коментарями

```haskell
func :: Integral p => p -> p -- Integral typeclass is a type that denotes all integer types in haskell: Integer, Int, Int64
func 0 = 0 -- if user enter zero than the answer would be zero too, aka overloading
func n = (n `mod` 10) + func (n `div` 10)

firstTask = do
    putStrLn "Input the number"
    input <- getLine -- receiving information from user to variable
    let a = read input :: Integer -- reading and converting received info from user
    print (func a)
```

## Посилання на проект з вихідним кодом

https://github.com/Iangyl/functional-programming/blob/main/lab1/part_2/lab1.1.hs

## Результати

![результати](https://github.com/Iangyl/functional-programming/blob/main/lab1/images/results1.png)

## Аналіз достовірності
Вважаю, що поточне завдання можливо перевірити наочно: так як потрібно порахувати суму цифр числа, навожу приклад:<br/>
<br/>
Дано: 125<br/>
Розкладаємо число на розряди та конвертуємо в одиниці. Отримуємо: `[1, 2, 5]`.<br/>
Далі сумуємо одиниці і отримуємо: 8

## Висновки

В ході роботи  було написано програму, що знаходить суму цифр введеного числа за допомогою рекурсивного процесу.
