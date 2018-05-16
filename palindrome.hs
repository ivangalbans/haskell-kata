import Data.Char (toLower, isAlpha)

isPalindrome :: String -> Bool
isPalindrome xs = (ys == reverse ys)
    where ys = map toLower (filter isAlpha xs)

palindrome :: IO()
palindrome = do {
    putStrLn "Enter a string:";
    xs <- getLine;
    if isPalindrome xs then putStrLn "Yes!"
    else putStrLn "No!"
}