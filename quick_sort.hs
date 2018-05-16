-- Definir la función quickSort tal que quickSort xs es la lista xs ordenada
-- mediante el procedimiento de Quick Sort.


quickSort :: Ord a => [a] -> [a]
quickSort []     = []
quickSort (x:xs) =  quickSort minor ++ [x] ++ quickSort major
                    where   minor = [n | n <- xs , n < x]
                            major = [n | n <- xs , n >= x]

main = do {
    putStrLn ( show (quickSort [5,2,7,7,5,19,3,8,6]) ); -- [2,3,5,5,6,7,7,8,19]
}