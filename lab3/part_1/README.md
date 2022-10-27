# Форми lambda та let, вираз присвоєння set! для розв’язання нелінійних рівнянь та чисельного інтегрування функцій

Варіант 1<br />
Завдання 3.1

## Мета

Розв’язати нелінійні рівняння та здійснити чисельне інтегрування функцій наближеними методами, використовуючи мови функціонального програмування та lambda, let та set! форми.

## Умова задачі

Розв’язати нелінійне рівняння <code>x = cos(x)</code> методами перебору та хорд, визначивши інтервал <code>[a, b]</code>, на якому існує рішення рівняння. Значення <code>a, b</code> інтервалу вибрати самостійно. Порівняти результати розв’язків двома методами.

## Обгрунтування вибору середовища та мови функціонального програмування

Середовище програмування: Visual Studio Code<br/><br/>
Мова функціонального програмування: Haskell<br/><br/>

Безкоштовний та зручний редактор коду, який можна використовувати майже для будь-якої мови програмування, а також можна використовувати в комерційних цілях.
Має широкий спектр налаштувань та можливостей, які надають плагіни, для поліпшення процесу розробки в плані комфорту та швидкості.<br/>

## Код програми

```haskell
chordMethod :: (Ord t, Fractional t) => t -> (t -> t) -> t -> t -> t
chordMethod eps f a b
    | abs (f x) <= eps = x
    | f a * f x < 0 = chordMethod eps f a x
    | otherwise = chordMethod eps f x b
    where x = a + abs (f a / (f b - f a)) * (b - a)

iterationMethod :: (Num a1, Num a2, Ord a1, Ord a2) => a2 -> (a2 -> a2) -> (t -> a1) -> a2 -> t -> t -> a2
iterationMethod eps f df x0 a b
    | df a >= df b || df b >= 1 = -1
    | abs (x1 - x0) >= eps = iterationMethod eps f df x1 a b
    | otherwise = x1
    where x1 = f x0

main = do
    let f1 = \x -> cos x
    let df1 = \ x -> sin x

    print (iterationMethod 0.000001 f1 df1 0.5 0 1.5)

    let f2 = \x -> x - cos x
    print (chordMethod 0.000001 f2 0 1.5)
```

## Посилання на проект з вихідним кодом

https://github.com/Iangyl/functional-programming/blob/main/lab3/part_1/lab3.1.hs

## Результати

![результати](https://github.com/Iangyl/functional-programming/blob/main/lab3/images/results1.png)

## Висновки

Під час виконання цієї лабораторної роботи написано програму для розвязання нелінійних рівнянь методами перебору та хорд, порівняно результати їх роботи.
