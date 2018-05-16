-- Definir la función factoriales tal que factoriales n es la lista de los factoriales
-- desde el factorial de 0 hasta el factorial de n.

import Factorial (fact1)

-- Definicion recursiva
factoriales :: Integer -> [Integer]
factoriales n = factorials 0 n

factorials :: Integer -> Integer -> [Integer]
factorials k n
    | k < n     = fact1 k : factorials (k+1) n
    | k == n    = [fact1 n]
    | otherwise = [-1]


-- Definición recursiva con acumuladores
factoriales_2 :: Integer -> [Integer]
factoriales_2 n =
    reverse (aux (n+1) 0 [1])
    where aux n m (x:xs) =  if n==m then xs
                            else aux n (m+1) (((m+1)*x):x:xs)


-- Definicion con listas intensionales
factoriales_3 :: Integer -> [Integer]
factoriales_3 n = [fact1 x | x <- [0..n]]


-- Definicion con map
factoriales_4 :: Integer -> [Integer]
factoriales_4 n = map fact1 [0..n]


-- Definicion con scanl
factoriales_5 :: Integer -> [Integer]
factoriales_5 n = scanl (*) 1 [1..n]

main = do {
    putStrLn ( show (factoriales 5) );
    putStrLn ( show (factoriales_2 5) );
    putStrLn ( show (factoriales_3 5) );
    putStrLn ( show (factoriales_4 5) );
    putStrLn ( show (factoriales_5 5) );
    
}