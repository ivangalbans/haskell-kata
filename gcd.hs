-- Redefinir la función gcd tal que gcd x y es el máximo común divisor de x e y.


gcd1 :: Int -> Int -> Int
gcd1 0 0 = error "gcd 0 0 no está definido"
gcd1 x y = gcd1 (abs x) (abs y)
    where   gcd1 x 0 = x
            gcd1 x y = gcd1 y (x `rem` y)


main = do {
    putStrLn ( show (gcd 6 15) ); -- 3
    putStrLn ( show (gcd1 6 15) ); -- 3    
}