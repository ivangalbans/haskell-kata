-- Redefinir la función filter tal que filter p l es la lista de los elementos de l que cumplen la propiedad p.


-- Definicion recursiva
filter1 :: (a -> Bool) -> [a] -> [a]
filter1 p [] = []
filter1 p (x:xs)
    | p x       = x : tail
    | otherwise = tail
    where tail = filter1 p xs


-- Definicion con listas intensionales
filter2 :: (a -> Bool) -> [a] -> [a]
filter2 p xs = [x | x <- xs , p x]


main = do {

    putStrLn ( show (filter even [1,3,5,4,2,6,1]) );
    putStrLn ( show (filter (>3) [1,3,5,4,2,6,1]) );
    putStrLn ("");

    putStrLn ( show (filter1 even [1,3,5,4,2,6,1]) );
    putStrLn ( show (filter1 (>3) [1,3,5,4,2,6,1]) );
    putStrLn ("");

    putStrLn ( show (filter2 even [1,3,5,4,2,6,1]) );
    putStrLn ( show (filter2 (>3) [1,3,5,4,2,6,1]) );
    putStrLn ("");
}