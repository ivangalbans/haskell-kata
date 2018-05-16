
data Nat = Zero | Succ Nat deriving (Eq, Ord, Show)

instance Num Nat where
    m + Zero = m
    m + Succ n = Succ (m+n)
    
    m * Zero = Zero
    m * (Succ n) = m * n + m
    
    abs n = n
    signum Zero = Zero
    signum (Succ n) = Succ Zero

    m - Zero = m
    Zero - Succ n = Zero
    Succ m - Succ n = m - n

    fromInteger x
        | x <= 0 = Zero
        | otherwise = Succ (fromInteger (x-1))

main = do {
    putStrLn (show (Succ (Succ Zero) + Succ Zero));
}