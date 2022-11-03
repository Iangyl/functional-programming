# Обробка раціональних та комплексних чисел мовами функціонального програмування

Варіант 1<br />
Завдання 5.2

## Мета

Опанувати технологію абстракції даних в мовах функціонального програмування. Реалізувати програму обробки раціональних та комплексних чисел мовами функціонального програмування, представивши ці числа конструкціями типу «пара».

## Умова задачі

![task](https://github.com/Iangyl/functional-programming/blob/main/lab5/images/pic2.png)

## Обгрунтування вибору середовища та мови функціонального програмування

Середовище програмування: Visual Studio Code<br/><br/>
Мова функціонального програмування: Haskell<br/><br/>

Безкоштовний та зручний редактор коду, який можна використовувати майже для будь-якої мови програмування, а також можна використовувати в комерційних цілях.
Має широкий спектр налаштувань та можливостей, які надають плагіни, для поліпшення процесу розробки в плані комфорту та швидкості.<br/>

## Код програми

```haskell
getR com = sqrt (fst com ** 2 + snd com ** 2)
getPhi com = acos (fst com / getR com)
asTrygonometric com = "z = " ++ show (getR com) ++ "(cos(" ++ phi ++ ") + isin(" ++ phi ++ "))"
  where phi = show (getPhi com)
asAgebraic :: (Show a1, Show a2) => (a1, a2) -> String 
asAgebraic com = "z = " ++ show (fst com) ++ " + " ++ show (snd com) ++ "i"

main = do
  let complex = [(1, 3), (4, 3)]
  putStrLn "Numbers in algebraic form"
  putStrLn (unlines [asAgebraic x | x <- complex])

  putStrLn "Numbers in trygonometric form"
  putStrLn (unlines [asTrygonometric x | x <- complex])
```

## Посилання на проект з вихідним кодом

https://github.com/Iangyl/functional-programming/blob/main/lab5/part_2/lab5.2.hs

## Результати

![результати](https://github.com/Iangyl/functional-programming/blob/main/lab5/images/results2.png)

## Висновки

В процесі виконання лабораторної роботи опанувано технологію абстракції даних в мовах функціонального програмування. Реалізувано програму обробки раціональних та комплексних чисел мовами функціонального програмування, представивши ці числа конструкціями типу «пара». У другому завданні реалізовано програму, яка представляє комплексні числа, задані типом "пара" у алгебраічній та тригонометричній формі.
