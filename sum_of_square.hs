-- Definir la función suma_de_cuadrados tal que suma_de_cuadrados l es la suma de los cuadrados de los elementos de la lista l.

-- Utilizando comosicion de funciones
suma_de_cuadrados1 :: [Integer] -> Integer
suma_de_cuadrados1 = sum . map (^2)


-- Con sum y listas intencionales
suma_de_cuadrados2 :: [Integer] -> Integer
suma_de_cuadrados2 l = sum [x*x | x <- l]


-- Con sum, map y lambda
suma_de_cuadrados3 :: [Integer] -> Integer
suma_de_cuadrados3 l = sum ( map (\x -> x*x) l)


-- Por recursion
suma_de_cuadrados4 :: [Integer] -> Integer
suma_de_cuadrados4 [] = 0
suma_de_cuadrados4 (x:xs) = x*x + suma_de_cuadrados4 xs

main = do {
    putStrLn (show (suma_de_cuadrados1 [1..3]) );
    putStrLn (show (suma_de_cuadrados2 [1..3]) );
    putStrLn (show (suma_de_cuadrados3 [1..3]) );
    putStrLn (show (suma_de_cuadrados4 [1..3]) );
}