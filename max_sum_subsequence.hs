
import Data.List

-- O(n^3)
suffix :: [a] -> [[a]]
suffix []        = [[]]
suffix (x:xs)    = (x:xs):suffix xs

subsequence = concat . map inits . suffix

mss1 :: [Int] -> Int
mss1 = maximum . map sum . subsequence

-- O(n^2)
mss2 :: [Int] -> Int
mss2 = maximum . map (maximum . scanl (+) 0) . tails


-- O(n)
mss3 :: [Int] -> Int
mss3 = maximum . scanr ($) 0
    where x $ y = 0 `max` (x + y)


l :: [Int]
l = [-1,2,-3,5,-2,1,3,-2,-2,-3,6]

main = do {
    putStrLn( show (mss1 l) );
    putStrLn( show (mss2 l) );
    putStrLn( show (mss3 l) );
}