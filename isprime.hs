-- Definir la función isPrimo tal que isPrimo x verifica si x es primo.



isPrime :: Integer -> Bool
isPrime n = [x | x <- [1..n] , n `mod` x == 0] == [1, n]

main = do {
    putStrLn ( show (filter isPrime [0..100]) );
}