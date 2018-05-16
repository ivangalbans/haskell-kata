-- Definir la función permutations tal que permutationspermutaciones l es la lista de las
-- permutaciones de la lista l

import Data.List

permutations1 :: Eq a => [a] -> [[a]]
permutations1 [] = [[]]
permutations1 xs = [a:p | a <- xs , p <- permutations1 (xs \\ [a])]

main = do {
    putStrLn (show (permutations [1..3]) );
    putStrLn (show (permutations1 [1..3]) );
    putStrLn ( show (permutations1 [1, 1, 2, 3]) );
}