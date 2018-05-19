
mcm1 :: Int -> Int -> Int
mcm1 a b = (a * b) `div` (gcd a b)

main = do {
    putStrLn (show (mcm1 6 9) ); -- 18
    putStrLn (show (mcm1 6 6) ); -- 6
}