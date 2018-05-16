-- Redefinir la función scanr tal que scanr op e l pliega por la derecha la lista
-- l colocando el operador op entre sus elementos y el elemento e al final y escribe los resultados
-- acumulados. Es decir,
-- scanr op e [x1,x2,x3] <==> [x1 op (x2 op (x3 op e)),
--                                    x2 op (x3 op e),
--                                           x3 op e,
--                                                 e]
-- Por ejemplo,
-- scanr (+) 3 [2,3,5] = [13,11,8,3]


-- Definicion recursiva
scanr_1 :: (a -> b -> b) -> b -> [a] -> [b]
scanr_1 f e [] = [e]
scanr_1 f e (x:xs) = f x q : (q:qs)
                     where (q:qs) = scanr_1 f e xs

main = do {
    putStrLn ( show ( scanr (+) 3 [2,3,5] ) );
    putStrLn ( show ( scanr_1 (+) 3 [2,3,5] ) );

}