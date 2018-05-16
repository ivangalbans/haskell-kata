-- Definir el operador ~= tal que x ~= y se verifica si |x − y| < 0,0001. 

infix 4 ~=
(~=) :: Float -> Float -> Bool
x ~= y = abs(x-y) < 0.0001

main = do {
    putStrLn ( show (3.00001 ~= 3.00002) );
    putStrLn ( show (3.1 ~= 3.2) );
}