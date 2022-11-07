# Обробка рядків та файлів мовами функціонального програмування

Варіант 1<br />
Завдання 7

## Мета

Опанувати теоретичні основи обробки рядків та текстових файлів мовами функціонального програмування та розробити програми їх реалізації.

## Умова задачі

Записати в текстовий файл n рядків тексту, що задаються програмою на функціональній мові програмування. Зчитати рядки із створеного програмою файлу, вивести їх на екран. Закодувати кожне друге слово в парному рядку за шифром Цезаря. У цьому шифрі кожна буква тексту замінюється на іншу, яка знаходиться на фіксовану кількість букв далі в алфавіті. Наприклад, якщо pi літера слова, k – ключ слова (зсув літер алфавіту на k позицій), то закодована літера визначається як ci = pi+k. Записати в новий текстовий файл зашифрований текст.

## Обгрунтування вибору середовища та мови функціонального програмування

Середовище програмування: Visual Studio Code<br/><br/>
Мова функціонального програмування: Haskell<br/><br/>

Безкоштовний та зручний редактор коду, який можна використовувати майже для будь-якої мови програмування, а також можна використовувати в комерційних цілях.
Має широкий спектр налаштувань та можливостей, які надають плагіни, для поліпшення процесу розробки в плані комфорту та швидкості.<br/>

## Код програми

```haskell
import System.IO
import Data.Char (toLower)
import Data.List ( elemIndex )
import Data.Maybe
import Data.Text
import Distribution.Simple.Program.HcPkg (list)

indexOf :: Eq a => a -> [a] -> Int
indexOf el list
  | isNothing (elemIndex el list) = -1
  | otherwise = fromMaybe (-1) $ elemIndex el list

getIndexWithOffset :: Foldable t => Int -> t a -> Int
getIndexWithOffset idx list
  | idx < Prelude.length list = idx
  | otherwise =  idx - Prelude.length list

caesar :: [Char] -> Int -> [Char]
caesar str k = [
    if indexOf x alphabet == -1
      then x
      else alphabet !! getIndexWithOffset (indexOf x alphabet + k) alphabet
  | x <- str]
  where alphabet = "abcdefghijklmnopqrstuvwxyz"

encrypt :: String -> String
encrypt contents = Prelude.unlines [Prelude.unwords [if even (lIdx + 1) && even (wIdx + 1) then caesar word 4 else word | (wIdx, word) <- line] | (lIdx, line) <- cLines]
  where cLines = Prelude.zip [0..] [Prelude.zip [0..] (Prelude.words x) | x <- Prelude.lines contents]

main = do
  writeFile "test.txt" "Depths morality free law deceptions convictions derive sexuality ocean.\nMoral grandeur sea chaos against faithful spirit play depths.\nHoliest depths play right deceptions enlightenment zarathustra christian.\nDeceptions mountains disgust of ascetic decrepit good gains hatred morality faith depths."

  contents <- readFile "test.txt"
  putStr contents

  writeFile "testencrypted.txt" (encrypt (Prelude.map Data.Char.toLower contents))

  putStr "\n\nEncrypted file:\n"
  contents <- readFile "testencrypted.txt"
  putStr contents
```

## Посилання на проект з вихідним кодом

https://github.com/Iangyl/functional-programming/blob/main/lab7/lab7.hs

## Результати

![результати](https://github.com/Iangyl/functional-programming/blob/main/lab7/images/results.png)

## Висновки

У ході виконання цієї лабораторної роботи було опановано теоретичні основи обробки рядків та текстових файлів мовою функціонального програмування haskell та розроблено програму їх реалізації. Зокрема, було розроблено програму, яка записує n рядків тексту, у файл, зчитує рядки із створеного програмою файлу, виводить їх на екран, а потім закодувує кожне друге слово в парному рядку за шифром Цезаря.
