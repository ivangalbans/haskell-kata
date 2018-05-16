anterior_1 :: Int -> Int
anterior_1 (n) = n-1

anterior_2 :: Int -> Int
anterior_2 n | n > 0 = n - 1

main = do {
    putStrLn ( show ( anterior_1 15 ) );
    putStrLn ( show ( anterior_2 15 ) );
}