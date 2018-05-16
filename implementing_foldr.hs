-- Redefinir la función foldr tal que foldr op e l pliega por la derecha la lista
-- l colocando el operador op entre sus elementos y el elemento e al final. Es decir,
-- foldr op e [x1,x2,x3] <==> x1 op (x2 op (x3 op e))
-- foldr op e [x1,x2,...,xn] <==> x1 op (x2 op (... op (xn op e)))
-- Por ejemplo,
-- foldr (+) 3 [2,3,5] = 13
-- foldr (-) 3 [2,3,5] = 1


-- Definicion recursiva
foldr_1 :: (a -> b -> b) -> b -> [a] -> b
foldr_1 f e [] = e
foldr_1 f e (x:xs) = f x (foldr_1 f e xs)


main = do {

    putStrLn ( show ( foldr (+) 3 [2,3,5] ) );
    putStrLn ( show ( foldr (-) 3 [2,3,5] ) );
    putStrLn("");

    putStrLn ( show ( foldr_1 (+) 3 [2,3,5] ) );
    putStrLn ( show ( foldr_1 (-) 3 [2,3,5] ) );
    putStrLn("");
}