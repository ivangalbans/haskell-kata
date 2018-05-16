-- Redefinir la función map tal que map f l es la lista obtenida aplicando f a cada elemento de l.


-- Definicion recursiva
map1 :: (a -> b) -> [a] -> [b]
map1 f [] = []
map1 f (x:xs) = f x : map1 f xs


-- Con listas intensionales
map2 :: (a -> b) -> [a] -> [b]
map2 f xs = [f x | x <- xs]



main = do {
    putStrLn ( show (map (\x -> x*x) [1..5]) );    
    putStrLn ( show (map1 (\x -> x*x) [1..5]) );
    putStrLn ( show (map2 (\x -> x*x) [1..5]) );
    
}