(&&&) :: Bool -> Bool -> Bool
False &&& x = False
True &&& x = x

main = do {
    putStrLn( show (True &&& True) );
    putStrLn( show (False &&& False) );
    putStrLn( show (True &&& False) );
    putStrLn( show (False &&& True) );
    
}