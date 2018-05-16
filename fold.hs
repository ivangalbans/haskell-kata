
mysum :: [Int] -> Int
mysum = foldr (+) 0

main = do {
    putStrLn( show (mysum [1..5]) );
}