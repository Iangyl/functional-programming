# Обробка структур типу векторів і матриць, стеків та черг мовами функціонального програмування

Варіант 1<br />
Завдання 6.1

## Мета

Опанувати теоретичні основи обробки структур типу векторів і матриць, стеків та черг мовами функціонального програмування та розробити програми їх реалізації.

## Умова задачі

Створити вектор. Визначити максимальне та мінімальне значення серед елементів із парними та непарними індексами. Вивести мінімальний, максимальний елементи та їх індекси.

## Обгрунтування вибору середовища та мови функціонального програмування

Середовище програмування: Visual Studio Code<br/><br/>
Мова функціонального програмування: Haskell<br/><br/>

Безкоштовний та зручний редактор коду, який можна використовувати майже для будь-якої мови програмування, а також можна використовувати в комерційних цілях.
Має широкий спектр налаштувань та можливостей, які надають плагіни, для поліпшення процесу розробки в плані комфорту та швидкості.<br/>

## Код програми

```haskell
filterIndex :: Eq b => [b] -> ([b] -> b) -> Int
filterIndex xs predicate = head $ filter ((== predicate xs) . (xs !!)) [0..]

main = do
  let v = [10, 2, 4, 5, 9]

  print ("Maximum element is " ++ show (maximum v))
  print ("Maximum element index is " ++ show (filterIndex v maximum))

  print ("Minimum element is " ++ show (minimum v))
  print ("Minimum element index is " ++ show (filterIndex v minimum))
```

## Посилання на проект з вихідним кодом

https://github.com/Iangyl/functional-programming/blob/main/lab6/part_1/lab6.1.hs

## Результати

![результати](https://github.com/Iangyl/functional-programming/blob/main/lab6/images/results1.png)

## Висновки

В процесі виконання лабораторної роботи опановано теоретичні основи обробки структур типу векторів і матриць, стеків та черг мовами функціонального програмування та розробити програми їх реалізації.
