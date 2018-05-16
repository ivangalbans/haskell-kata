import Data.Char

type Text = [Char]
type Word = [Char]

capitalise :: Word -> Word
capitalise xs = [toUpper (head xs)] ++ tail xs

modernise :: String -> String
modernise = unwords . map capitalise . words

main = do {
    putStrLn(modernise "hi my friend, how are you?");
}