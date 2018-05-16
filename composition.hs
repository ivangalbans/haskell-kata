-- Redefinir la función (.) tal que f . g es la composición de las funciones f y g;
-- es decir, la función que aplica x en f(g(x))

square :: Num a => a -> a
square x = x*x

successor :: Num a => a -> a
successor x = x+1

composition :: (b -> c) -> (a -> b) -> (a -> c)
(f `composition` g) x = f (g x)

main = do {

    putStrLn ( show ( (square . successor) 2 ) ); -- 9
    putStrLn ( show ( (successor . square) 2 ) ); -- 5
    putStrLn ("");

    putStrLn ( show ( (square `composition` successor) 2 ) ); -- 9
    putStrLn ( show ( (successor `composition` square) 2 ) ); -- 5
    putStrLn ("");
}