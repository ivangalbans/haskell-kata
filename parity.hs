-- Definir la función impar tal que impar x se verifica si el número x es impar.

impar1 :: Integer -> Bool
impar1 = odd

parity :: Integer -> String
parity n = if n `mod` 2 == 0 then "Even" else "Odd"

main = do {
    putStrLn( parity 5 );
    putStrLn( parity 6 );
}