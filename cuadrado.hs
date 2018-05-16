-- Definir la función cuadrado tal que cuadrado x es el cuadrado del número x.

cuadrado1 :: Num a => a -> a
cuadrado1 x = x*x

cuadrado2 :: Num a => a -> a
cuadrado2 x = x^2

cuadrado3 :: Num a => a -> a
cuadrado3 = (^2)

cuadrado = cuadrado1

main = do {
    putStrLn ( show (cuadrado1 5) );
    putStrLn ( show (cuadrado2 5) );
    putStrLn ( show (cuadrado3 5) );
    putStrLn ( show (cuadrado 5) );
}