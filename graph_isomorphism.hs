
import Data.List

data Graph v = G [v] (v -> [v])

-- Public functions

-- Build a graph G = <V, E> where V is the list of vertex and E: V -> [V] is a function
buildGraph :: (Eq v) => [v] -> (v -> [v]) -> Graph v
buildGraph vset adj = G vset adj

-- Determine if two graphs are isomorph
isomorphism :: (Ord a, Ord b) => Graph a -> Graph b -> Bool
isomorphism g1 g2 = (countVertex g1 == countVertex g2) && 
                    (or [ (check f  g1 g2) | vp <- permutations v1 , let f = function vp v2])
    where   G v1 adj1 = g1
            G v2 adj2 = g2

countVertex :: (Ord a) => Graph a -> Int
countVertex g1 = length v1
    where G v1 adj1 = g1

-------------------------------------------------------------------------------------------
-- Given a particular permutation of vextex, determine if the bijection's
-- function keep the adjacency's relation
check :: (Ord a, Ord b) => (a -> b) -> Graph a -> Graph b -> Bool
check f g1 g2 = and [sort (map f (adj1 vi)) == sort (adj2 (f vi)) | vi <- v1]
    where   G v1 adj1 = g1
            G v2 adj2 = g2

-- Build a function that map an array with other by position
function :: (Ord a, Ord b) => [a] -> [b] -> (a -> b)
function (x:xs)  (y:ys) val     | x == val  = y
                                | otherwise = function xs ys val
-------------------------------------------------------------------------------------------


ga0 = buildGraph [40174..40179] adj
	where	adj 40174 = [40177]
		adj 40175 = [40176, 40179, 40176, 40175, 40177]
		adj 40176 = [40175, 40177]
		adj 40177 = [40176, 40178, 40178, 40177, 40177]
		adj 40178 = [40178, 40174, 40178, 40178]
		adj 40179 = []

gb0 = buildGraph [16387..16392] adj
	where	adj 16387 = [16389]
		adj 16388 = [16389, 16390, 16388, 16389, 16389]
		adj 16389 = [16390, 16390, 16387, 16391, 16387]
		adj 16390 = []
		adj 16391 = [16390, 16387, 16388]
		adj 16392 = []


ga1 = buildGraph [52758..52762] adj
	where	adj 52758 = []
		adj 52759 = [52758, 52758, 52761, 52758]
		adj 52760 = [52761, 52761, 52760]
		adj 52761 = [52760]
		adj 52762 = [52760]

gb1 = buildGraph [98681..98685] adj
	where	adj 98681 = [98685, 98681, 98685, 98681]
		adj 98682 = []
		adj 98683 = [98681, 98684, 98685]
		adj 98684 = [98684, 98682]
		adj 98685 = [98683, 98683]


ga2 = buildGraph [29187..29187] adj
	where	adj 29187 = []

gb2 = buildGraph [18744..18744] adj
    where	adj 18744 = []
    
main = do {

    putStrLn (show (isomorphism ga0 gb0) ) ; -- False
	putStrLn (show (isomorphism ga1 gb1) ) ; -- False
	putStrLn (show (isomorphism ga2 gb2) ) ; -- True

}