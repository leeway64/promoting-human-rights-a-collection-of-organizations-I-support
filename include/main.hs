import Data.List
import System.IO


print_border :: Int -> IO()
print_border 0 = putStrLn ""
print_border n = do
    putStr "*"
    print_border (n - 1)


print_intro :: IO()
print_intro = do
    print_border 100
    putStrLn "LWOrganizationsISupport is a Haskell program that displays the NGOs and human"
    putStrLn "rights organizations I support.\n"
    
    putStrLn "As a big believer in the importance of human rights, I want to share the"
    putStrLn "organizations that I have donated to.\n"
    
    putStrLn "Type \"begin\" to get started!"

    input <- getLine
    if input == "begin"
        then putStrLn "we're proceeding"
        else putStrLn "we're not proceeding"


    print_border 100
    


main = do
    print_intro

