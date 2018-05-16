-- Definir la función primos_por_criba tal que primos_por_criba es la lista
-- de los números primos mediante la criba de Erastótenes.


sieve :: [Int]
sieve =
    criba [2..]
    where criba (p:xs) = p : criba [n | n <- xs , n `mod` p /= 0]

main = do {
    putStrLn ( show (take 100 sieve) )
}