-- Redefinir la función or tal que or l verifica si algún elemento de l es verdadero.


-- Definicion recursiva
or1 :: [Bool] -> Bool
or1 [] = False
or1 (x:xs) = x || or1 xs


-- Definicion por plegado
or2 :: [Bool] -> Bool
or2 = foldr (||) False


main = do {
    
    putStrLn ( show ( or [1<2, 2<3, 1 /= 0] ) );
    putStrLn ( show ( or [3<2, 4<3, 1 == 0] ) );
    putStrLn ("");

    putStrLn ( show ( or1 [1<2, 2<3, 1 /= 0] ) );
    putStrLn ( show ( or1 [3<2, 4<3, 1 == 0] ) );
    putStrLn ("");

    putStrLn ( show ( or2 [1<2, 2<3, 1 /= 0] ) );
    putStrLn ( show ( or2 [3<2, 4<3, 1 == 0] ) );
    putStrLn ("");
}