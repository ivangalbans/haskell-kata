-- O (log n)

pow :: Float -> Int -> Float

pow x n
    | n == 0            = 1
    | n `mod` 2 == 0    =       pow (x*x) (n `div` 2)
    | otherwise         =   x * pow (x*x) (n `div` 2)


main = do {
    putStrLn( show (pow 2 13) );
}