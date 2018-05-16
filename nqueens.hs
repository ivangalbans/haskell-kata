-- El problema de las N queens consiste en colocar N queens en un Board rectangular
-- de dimensiones N por N de forma que not se encuentren más de una en la misma línea: horizontal,
-- vertical o diagonal.
-- Definir la función queens tal que queens n es la lista de las soluciones del problema de las N
-- queens.
-- Por ejemplo, queens 4 = [[3,1,4,2],[2,4,1,3]]

-- La primera solución [3,1,4,2] se interpreta como

--      . R . .
--      . . . R
--      R . . .
--      . . R .

import Data.List ((\\))


type Board = [Int]

queens :: Int -> [Board]
queens n = queensAux n
    where   queensAux 0 = [[]]
            queensAux m = [r:rs | rs <- queensAux (m-1), r <- ([1..n] \\ rs), notAttack r rs 1]


notAttack :: Int -> Board -> Int -> Bool
notAttack _ [] _ = True
notAttack r (a:rs) distH = abs(r-a) /= distH && notAttack r rs (distH+1)

main = do {
    putStrLn ( show (queens 4) );
}