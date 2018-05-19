
infile, outfile :: String
infile = "input.txt"
outfile = "data/output.txt"


main = do {
    text <- readFile infile;
    writeFile outfile (text ++ "\n" ++ text);
    putStrLn(text);
}