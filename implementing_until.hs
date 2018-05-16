-- Redefinir la función until tal que until p f x aplica la f a x el menor número
-- posible de veces, hasta alcanzar un valor que satisface el predicado p.

-- until (>1000) (2*) 1 = 1024


until1 :: (a -> Bool) -> (a -> a) -> a -> a
until1 p f e = if p e then e else until1 p f (f e)


until2 :: (a -> Bool) -> (a -> a) -> a -> a
until2 p f e
    | p e       = e
    | otherwise = until2 p f (f e)

main = do {
    putStrLn (show ( until (>1000) (2*) 1 ) );
    putStrLn (show ( until1 (>1000) (2*) 1 ) );
    putStrLn (show ( until2 (>1000) (2*) 1 ) );
    
}