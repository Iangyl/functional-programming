# Обробка структур типу векторів і матриць, стеків та черг мовами функціонального програмування

Варіант 1<br />
Завдання 6.2

## Мета

Опанувати теоретичні основи обробки структур типу векторів і матриць, стеків та черг мовами функціонального програмування та розробити програми їх реалізації.

## Умова задачі

Побудувати стек натуральних чисел. Вивести на екран створений стек. Надрукувати в зворотному порядку числа стеку, пропускаючи кратні заданому користувачем числу.

## Обгрунтування вибору середовища та мови функціонального програмування

Середовище програмування: Visual Studio Code<br/><br/>
Мова функціонального програмування: Haskell<br/><br/>

Безкоштовний та зручний редактор коду, який можна використовувати майже для будь-якої мови програмування, а також можна використовувати в комерційних цілях.
Має широкий спектр налаштувань та можливостей, які надають плагіни, для поліпшення процесу розробки в плані комфорту та швидкості.<br/>

## Код програми

```haskell
showReverse :: Integral a => [a] -> a -> [a] showReverse stack m = filter (\x -> xmod` m /= 0) (reverse stack)

main = do let stack = [10, 9 .. 1] putStrLn "Stack:" print stack

putStrLn "Input the number" input <- getLine let m = read input :: Int

putStrLn "Reverse stack:" print (showReverse stack m)
```

## Посилання на проект з вихідним кодом

https://github.com/Iangyl/functional-programming/blob/main/lab6/part_2/lab6.2.hs

## Результати

![результати](https://github.com/Iangyl/functional-programming/blob/main/lab6/images/results2.png)

## Висновки

В процесі виконання лабораторної роботи опановано теоретичні основи обробки структур типу векторів і матриць, стеків та черг мовами функціонального програмування та розробити програми їх реалізації.