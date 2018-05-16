module Pitcher where
import Graph
import Data.List ( (\\), nub )

-- El problema de las jarras
-- Nota. Enunciado del problema: En el problema de las jarras X-Y-Z se dispone de una
-- jarra de capacidad X litros, otra jarra de capacidad Y litros, de un grifo que permite llenar
-- las jarras de agua (las jarras no tienen marcas de medición) y de un lavabo donde vaciar
-- las jarras. El problema consiste en averiguar cómo se puede lograr tener Z litros de agua
-- en una de las jarras empezando con las dos jarras vacías. Los 8 tipos de acciones que
-- se permiten son llenar una de las jarras con el grifo, llenar una jarra con la otra jarra,
-- vaciar una de las jarras en el lavabo y vaciar una jarra en la otra jarra. La soluciones
-- del problema de las jarras X-Y-Z pueden representarse mediante listas de pares V x y
-- donde x es el contenido de la jarra de M litros e y el de la de N litros. Por ejemplo, una
-- solución del problema 4-3-2 es
-- [J 4 2,J 3 3,J 3 0,J 0 3,J 0 0]
-- es decir, se comienza con las jarras vacías (J 0 0), se llena la segunda con el grifo
-- (J 0 3), se vacia la segunda en la primera ( J 3 0), se llena la segunda con el grifo
-- (J 3 3) y se llena la primera con la segunda (J 4 2).
-- Nota. Para resolver el problema basta crear una instancia de la clase grafo de búsqueda
-- (Grafo). Para lo cual basta definir los estados (Jarras) y
-- la relación sucesor (suc). Una vez creado la instancia, usando el método por defecto
-- caminosDesde, se define la función jarras que calcula las soluciones.

-- Nota. Un problema de las jarras es un par (PJ mx my) donde mx es la capacidad de la
-- primera jarra y my la de la segunda.
data PJarras = PJ Int Int deriving (Show,Eq)

-- Nota. Un estado en el problema de las jarras es un par (J x y) donde x es el contenido
-- de la primera jarra e y el de la segunda.
data Jarras = J Int Int deriving (Show,Eq)

-- Nota. Los operadores de un problema de las jarras son
-- llX: Llenar la primera jarra con el grifo.
-- llY: Llenar la segunda jarra con el grifo.
-- vaX: Vaciar la primera jarra en el lavabo.
-- vaY: Vaciar la segunda jarra en el lavabo.
-- voXY: Volcar la primera jarra sobre la segunda, quedando la primera vacía o la
-- segunda llena.
-- voYX: Volcar la segunda jarra sobre la primera, quedando la segunda vacía o la
-- primera llena.
ops :: PJarras -> [Jarras -> Jarras]
ops (PJ mx my) =
    [llX, llY, vaX, vaY, voXY, voYX]
    where   llX (J _ y)     = J mx y
            llY (J x _)     = J x my
            vaX (J _ y)     = J 0 y
            vaY (J x _)     = J x 0
            voXY (J x y)    =  if s <= my then J 0 (s) else J (s-my) my where s=x+y
            voYX (J x y)    =  if s <= mx then J (s) 0 else J mx (s-mx) where s=x+y

instance Grafo Jarras where suc c = nub [f c | f <- ops (PJ 4 3)] \\ [c]

-- Nota. jarras z es la lista de soluciones del problema de las jarras para obtener z litros
-- en alguna de las jarras.
jarras :: Int -> [[Jarras]]
jarras z =
    caminosDesde (J 0 0) test []
        where test (J x y) = x==z || y==z

main = do {
    putStrLn ( show (jarras 2) );
}