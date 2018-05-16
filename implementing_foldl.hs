-- Redefinir la función foldl tal que foldl op e l pliega por la izquierda la lista
-- l colocando el operador op entre sus elementos y el elemento e al principio. Es decir,
-- foldl op e [x1,x2,x3] <==> (((e op x1) op x2) op x3
-- foldl op e [x1,x2,...,xn] <==> (...((e op x1) op x2) ... op xn
-- Por ejemplo,
-- foldl (+) 3 [2,3,5] = 13
-- foldl (-) 3 [2,3,5] = -7


-- Definicion recursiva
foldl_1 :: (a -> b -> a) -> a -> [b] -> a
foldl_1 f e [] = e
foldl_1 f e (x:xs) = foldl_1 f (f e x) xs


main = do {

    putStrLn ( show ( foldl (+) 3 [2,3,5] ) );
    putStrLn ( show ( foldl (-) 3 [2,3,5] ) );
    putStrLn("");

    putStrLn ( show ( foldl_1 (+) 3 [2,3,5] ) );
    putStrLn ( show ( foldl_1 (-) 3 [2,3,5] ) );
    putStrLn("");

}