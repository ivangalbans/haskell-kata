-- Definir la función comb tal que comb n k es el número de combinaciones de n elementos tomados de k en k.

import Factorial (fact1)

factorial :: Integer -> Integer
factorial = fact1

comb :: Integer -> Integer -> Integer
comb n k = (factorial n) `div` ( factorial (n-k) * factorial(k) )


main = do {
    putStrLn( show (comb 5 2) );
}