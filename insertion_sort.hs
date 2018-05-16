-- Definir la función insertion_sort tal que insertion_sort l es la lista l ordenada mediante inserción

insert_ord :: Ord a => a -> [a] -> [a]
insert_ord val [] = [val]
insert_ord val (x:xs)
    | val <= x  = val:x:xs
    | otherwise = x : insert_ord val xs


-- Definicion recursiva    
insertion_sort :: Ord a => [a] -> [a]
insertion_sort [] = []
insertion_sort (x:xs) = insert_ord x (insertion_sort xs)


-- Definicion por plegado
insertion_sort1 :: Ord a => [a] -> [a]
insertion_sort1 = foldr (insert_ord) []


main = do {
    putStrLn ( show (insertion_sort [2,4,3,6,3]) );
    putStrLn ( show (insertion_sort1 [2,4,3,6,3]) );
}