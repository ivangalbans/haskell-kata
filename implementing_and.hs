-- Redefinir la función all tal que all l verifica si todos los elementos de l son verdaderos.


-- Definicion recursiva
and1 :: [Bool] -> Bool
and1 [] = True
and1 (x:xs) = x && and1 xs


-- Definicion con plegado
and2 :: [Bool] -> Bool
and2 = foldr (&&) True


main = do {
    
    putStrLn ( show ( and [1<2, 2<3, 1 /= 0] ) );
    putStrLn ( show ( and [1<2, 2<3, 1 == 0] ) );
    putStrLn ("");

    putStrLn ( show ( and1 [1<2, 2<3, 1 /= 0] ) );
    putStrLn ( show ( and1 [1<2, 2<3, 1 == 0] ) );
    putStrLn ("");

    putStrLn ( show ( and2 [1<2, 2<3, 1 /= 0] ) );
    putStrLn ( show ( and2 [1<2, 2<3, 1 == 0] ) );
    putStrLn ("");
}