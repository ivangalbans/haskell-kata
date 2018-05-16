
type CIN = String

addSum :: CIN -> CIN
addSum cin =
    cin ++ show (n `div` 10) ++ show (n `mod` 10)
    where n = sum (map fromDigit cin)

valid :: CIN -> Bool
valid cin = cin == addSum (take 8 cin)

fromDigit :: Char -> Int
fromDigit c = read [c]

main = do {
    putStrLn (show (valid "6324513428") );
    putStrLn (show (addSum "63245134") );
}