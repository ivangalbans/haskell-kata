-- Redefinir la función sum tal que sum l es la suma de los elementos de l.


-- Definicion recursiva
sum1 :: Num a => [a] -> a
sum1 [] = 0
sum1 (x:xs) = x + sum1 xs

-- Definicion con plegado
sum2 :: Num a => [a] -> a
sum2 = foldr (+) 0


main = do {
    putStrLn ( show (sum [1..9]) );
    putStrLn ( show (sum1 [1..9]) );
    putStrLn ( show (sum2 [1..9]) );
    
}