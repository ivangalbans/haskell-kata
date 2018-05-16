-- Un árbol de tipo a es una Leaf de tipo a o es un Node de tipo a con dos hijos que
-- son árboles de tipo a.


data Tree a = Leaf | Node a (Tree a) (Tree a) deriving Show

example_1 = Node 4 (Node 2  (Node 1 Leaf Leaf)
                            (Node 3 Leaf Leaf))
            (Node 6 (Node 5 Leaf Leaf)
                    (Node 7 Leaf Leaf))


-- size: numero de Nodes en el arbol
size :: Tree a -> Int
size Leaf           = 0
size (Node x t1 t2) = 1 + size t1 + size t2


-- supongamos que es arbol es de busqueda
contain :: Ord a => a -> Tree a -> Bool
contain item Leaf = False
contain item (Node x izq der)   | item == x = True
                                | item < x  = contain item izq
                                | item > x  = contain item der



insertTree :: Ord a => a -> Tree a -> Tree a
insertTree e Leaf = Node e Leaf Leaf
insertTree e (Node x izq der)
                            | e <= x = Node x (insertTree e izq) der
                            | e > x = Node x izq (insertTree e der)


-- crear un arbol a partir de una lista de numeros
listTree :: Ord a => [a] -> Tree a
listTree = foldr insertTree Leaf

main = do {

    putStrLn ( show (example_1) );
    putStrLn ( show (size example_1) );
    putStrLn ( show (contain 5 example_1) );    
    putStrLn ( show (contain 9 example_1) );
    putStrLn ( show (insertTree 9 example_1) );
    putStrLn ( show ( contain 9 (insertTree 9 example_1) ) );
    
    putStrLn ( show (listTree [1..5]) )
}