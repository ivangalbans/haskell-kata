
infile, outfile :: String
infile = "input.txt"
outfile = "output.txt"


main = do {
    text <- readFile infile;
    writeFile outfile text;
    putStrLn(text);
}