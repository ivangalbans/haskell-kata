-- Redefinir la función flip que intercambia el orden de sus argumentos.


flip1 :: (a -> b -> c) -> b -> a -> c
flip1 f a b = f b a


main = do {

    putStrLn (show (flip (-) 5 2) ); -- -3
    putStrLn (show (flip (/) 5 2) ); -- 0.4
    putStrLn ("");

    putStrLn (show (flip1 (-) 5 2) ); -- -3
    putStrLn (show (flip1 (/) 5 2) ); -- 0.4
    putStrLn ("");

}