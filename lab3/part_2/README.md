# Форми lambda та let, вираз присвоєння set! для розв’язання нелінійних рівнянь та чисельного інтегрування функцій

Варіант 1<br />
Завдання 3.2

## Мета

Розв’язати нелінійні рівняння та здійснити чисельне інтегрування функцій наближеними методами, використовуючи мови функціонального програмування та `lambda`, `let` та `set!` форми.

## Умова задачі

За допомогою формули Сімпсона інтеграл функції `f(х)` від `a` до `b` наближено обчислюється у вигляді:

![формула](https://github.com/Iangyl/functional-programming/blob/main/lab3/images/pic2.png)
де `h = (b - a) / n`, для якогось парного цілого числа `n`, `yk = f (a + kh)`. (Збільшення n підвищує точність наближеного обчислення.) Визначити процедуру, яка приймає в якості аргументів `f`, `a`, `b`, `n`, та повертає значення інтеграла, обчисленого за формулою Сімпсона.

## Обгрунтування вибору середовища та мови функціонального програмування

Середовище програмування: Visual Studio Code<br/><br/>
Мова функціонального програмування: Haskell<br/><br/>

Безкоштовний та зручний редактор коду, який можна використовувати майже для будь-якої мови програмування, а також можна використовувати в комерційних цілях.
Має широкий спектр налаштувань та можливостей, які надають плагіни, для поліпшення процесу розробки в плані комфорту та швидкості.<br/>

## Код програми

```haskell
data Interval = I (Double,Double) Int
toXs :: Interval -> [Double]
toXs (I (a, b) n) = map (\x -> a + (b-a) / fromIntegral (n-1) * fromIntegral x) [0..n-1] -- make array from interval

wSimp h n number | (number == 1 || number == n) = (1/3) * h -- compute coefficients
                 | (number > 1 && number < n && even number) = (4/3) * h
                 | (number > 1 && number < n && odd number) = (2/3) * h
                 | otherwise = error "error"

integralSimp f (I (a,b) n) =
    let h = (b - a) / fromIntegral (n - 1)
        xs = toXs (I (a, b) n)
        fs = map f xs
        ws = map (wSimp h n) [1..n]
    in sum $ zipWith (*) fs ws

main = do
    let f = \x -> cos x / sqrt (1 - x ** 2)

    print (integralSimp f (I (0, pi/4) 100))
```

## Посилання на проект з вихідним кодом

https://github.com/Iangyl/functional-programming/blob/main/lab3/part_2/lab3.2.hs

## Результати

![результати](https://github.com/Iangyl/functional-programming/blob/main/lab3/images/results2.png)

## Висновки

У ході виконання цієї лабораторної роботи написано програму для чисельного інтегрування функцій за формулою Сімпсона.
