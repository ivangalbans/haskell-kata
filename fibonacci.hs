-- Definir la función fib n tal que fib n es el n–ésimo término de la sucesión de
-- Fibonacci 1,1,2,3,5,8,13,21,34,55,. . . 


fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib(n-2)



main = do {
    putStrLn ( show (fib2 8) );
    
}