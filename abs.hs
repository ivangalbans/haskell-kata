-- Redefinir la función abs tal que abs x es el valor absoluto de x.

abs_1 :: (Num a, Ord a) => a -> a
abs_1 x = if x > 0 then x else (-x)

abs_2 :: (Num a, Ord a) => a -> a
abs_2 x
    | x > 0     = x
    | otherwise = -x

main = do {
    putStrLn ( show( abs_1 12 ) );
    putStrLn ( show( abs_1 (-12) ) );
    putStrLn ("");
    
    putStrLn ( show( abs_2 12 ) );
    putStrLn ( show( abs_2 (-12) ) );
    putStrLn ("");
}