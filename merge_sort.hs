-- Definir la función merge_sort tal que merge_sort l es la lista l ordenada mediante mezclas


merge1 :: Ord a => [a] -> [a] -> [a]
merge1 [] ys = ys
merge1 xs [] = xs
merge1 (x:xs) (y:ys)
    | x <= y    = x : merge1 xs (y:ys)
    | otherwise = y : merge1 (x:xs) ys

-- -- Definicion recursiva
merge_sort :: Ord a => [a] -> [a]
merge_sort [] = []
merge_sort [x] = [x]
merge_sort xs = merge1 (merge_sort ys) (merge_sort zs)
    where   mid = length xs `div` 2
            ys = take mid xs
            zs = drop mid xs


main = do {
    putStrLn ( show (merge_sort [2,4,3,6,3]) );
}