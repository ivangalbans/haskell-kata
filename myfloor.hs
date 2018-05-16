
myfloor :: Float -> Integer
myfloor x = until ((<=x) . fromInteger) (subtract 1) (100)

main
    = do {
        putStrLn ( show (myfloor 4.5));
        putStrLn ( show (myfloor 4));
    }