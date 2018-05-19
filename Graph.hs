module Graph where

-- -- Un grafo de tipo v es un tipo de datos compuesto por la lista de vértices y la
-- -- función que asigna a cada vértice la lista de sus sucesores
-- data Graph v = G [v] (v -> [v])

-- ej_grafo = Graph [1..5] suc
--     where   suc 1 = [2,3]
--             suc 2 = [4]
--             suc 3 = [4]
--             suc _ = []

-- -- Nota. camino g u v es un camino (i.e una lista de vértices tales que cada uno es un
-- -- sucesor del anterior) en el grafo g desde el vértice u al v. Por ejemplo,
-- -- camino ej_grafo 1 4 = [4,2,1]

-- path :: Eq a => Graph a -> a -> a -> [a]
-- path g u v = head (pathFrom g u (== v) [])


-- -- Nota. pathFrom g o te vis es la lista de los caminos en el grafo g desde el vértice
-- -- origen o hasta vértices finales (i.e los que verifican el test de encontrado te) sin volver a
-- -- pasar por los vértices visitados vis. Por ejemplo,
-- -- caminosDesde ej_grafo 1 (==4) [] ❀ [[4,2,1],[4,3,1]]

-- pathFrom :: Eq a => Graph a -> a -> (a -> Bool) -> [a] -> [[a]]
-- pathFrom g o te vis
--                 | te o      = [o:vis]
--                 | otherwise = concat [pathFrom g o' te (o:vis) | o' <- suc o, notElem o' vis]
--                 where G _ suc = g



class Eq v => Grafo v where
    vertices :: [v]
    suc :: v -> [v]
    camino :: v -> v -> [v]
    caminosDesde :: v -> (v -> Bool) -> [v] -> [[v]]
    tv :: v -> [v] -> Bool
    -- Métodos por defecto:
    camino u v = head (caminosDesde u (== v) [])
    caminosDesde o te vis
        | te o = [o:vis]
        | otherwise = concat [caminosDesde o' te (o:vis) | o' <- suc o, tv o' vis]
    tv = notElem


data G1 v = Nothing | Just
            deriving (Grafo v)


main = do {
    putStrLn ( show 5 );
}