-- Los números de Hamming forman una sucesión estrictamente creciente de nú-
-- meros que cumplen las siguientes condiciones:
-- 1. El número 1 está en la sucesión.
-- 2. Si x está en la sucesión, entonces 2 × x, 3 × x y 5 × x también están.
-- 3. Ningún otro número está en la sucesión.
-- Definir la función hamming tal que hamming es la sucesión de Hamming. Por ejemplo,
-- take 15 hamming = [1,2,3,4,5,6,8,9,10,12,15,16,18,20,24]


merge2 :: [Int] -> [Int] -> [Int]
merge2 [] ys = ys
merge2 xs [] = xs
merge2 l@(x:xs) r@(y:ys)    | x < y     = x : merge2 xs r
                            | y < x     = y : merge2 l ys
                            | otherwise = x : merge2 xs ys


-- mezcla las 3 listas y elimina elementos duplicados
merge3 :: [Int] -> [Int] -> [Int] -> [Int]
merge3 xs ys zs = merge2 xs (merge2 ys zs)

hamming :: [Int]
hamming = 1 : merge3    [2*i | i <- hamming]
                        [3*i | i <- hamming]
                        [5*i | i <- hamming]




main = do {
    putStrLn ( show (take 15 hamming) );
}