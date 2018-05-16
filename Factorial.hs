-- Definir la función factorial tal que factorial n es el factorial de n.

module Factorial (fact1) where

-- Con condicionales
fact1 :: Integer -> Integer
fact1 n = if n == 0 then 1
                    else n * fact1 (n-1)


-- Mediante guardas
fact2 :: Integer -> Integer
fact2 n
    | n == 0    = 1
    | otherwise = n * fact2 (n-1)


-- Mediante patrones
fact3 :: Integer -> Integer
fact3 0 = 1
fact3 n = n * fact3 (n-1)


-- Mediante predefinidas
fact6 :: Integer -> Integer
fact6 n = product [1..n]


-- Mediante plegado
fact7 :: Integer -> Integer
fact7 n = foldr (*) 1 [1..n]

main = do {
    putStrLn ( show (fact1 8) );
    putStrLn ( show (fact2 8) );
    putStrLn ( show (fact3 8) );
    putStrLn ( show (fact6 8) );
    putStrLn ( show (fact7 8) );
    
}