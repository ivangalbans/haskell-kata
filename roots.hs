-- Definir la función raices tal que raices a b c es la lista de las raices de la ecuación ax2 + bc + c = 0.

raices_1 :: Double -> Double -> Double -> [Double]
raices_1 a b c = [ (-b+sqrt(b*b-4*a*c))/(2*a), (-b-sqrt(b*b-4*a*c))/(2*a) ]


-- Con entornos locales
raices_2 :: Double -> Double -> Double -> [Double]
raices_2 a b c = [(-b+d)/n, (-b-d)/n]
    where   d = sqrt(b*b - 4*a*c)
            n = 2*a

main = do {
    putStrLn ( show (raices_1 1 3 2) );
    putStrLn ( show (raices_2 1 3 2) );
}