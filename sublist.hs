-- Definir la función sublists tal que sublists l es la lista de las sublistas de
-- la lista l. 

-- Por ejemplo:
-- sublists [2,3,4] = [[2,3,4],[2,3],[2,4],[2],[3,4],[3],[4],[]]


sublists :: [a] -> [[a]]
sublists [] = [[]]
sublists (x:xs) = [x:ys | ys <- sub] ++ sub
                    where sub = sublists xs


main = do {
    putStrLn ( show (sublists [2, 3, 4]) );
}