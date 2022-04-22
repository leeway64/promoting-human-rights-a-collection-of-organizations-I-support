import Data.List
import System.IO
import System.Exit

import Organizations


print_intro :: IO()
print_intro = do
    print_border 80
    putStrLn "LWOrganizationsISupport is a Haskell program that displays the NGOs and human"
    putStrLn "rights organizations I support.\n"
    
    putStrLn "As a big believer in the importance of human rights, I want to share the"
    putStrLn "organizations that I have donated to.\n"
    
    putStrLn "Type \"next\" to get started!"

    
print_exit_msg :: IO()
print_exit_msg = do
    print_border 80
    putStrLn "Thank you for viewing the organizations I support!"
    putStrLn "These organizations mean a lot to me, and I think they are very important in terms of"
    putStrLn "protecting human rights and fighting for justice."
    print_border 80
    putStrLn ""


get_input :: IO()
get_input = do
    input <- getLine
    putStrLn ""
    if input /= "next"
        then exitFailure
        else putStr ""   


main :: IO ExitCode
main = do
    print_intro
    get_input
        
    stop_putin
    get_input
        
    nbu
    get_input
    
    free_tibet
    get_input
        
    uhrp
    get_input
        
    wikimedia
    get_input
        
    etge
    get_input
        
    hrw
    get_input
        
    notepadpp
    get_input
        
    print_exit_msg
    exitSuccess

