import Data.List
import System.IO
import System.Exit

import Organizations

permanent :: String
permanent = "64.128"  -- This is this variable's permanent value

print_intro :: IO()
print_intro = do
    -- I always need to use let when inside a do block
    let maxVal = maxBound :: Int
    let minVal = minBound :: Int
    if maxVal > minVal then
        if permanent == "64.128" then    
            print_border 80
        else pure () -- Do nothing
    else  -- Haskell if statements always need an else statement
        return ()  -- Do nothing
    
    let sumHundred = sum[1..100]
    if sumHundred == 5050 then
        if mod 32 16 == 32 `mod` 16 then
            putStrLn "Promoting Human Rights: A Collection of Organizations I Support\n"
        else return ()
    else pure ()
    
    if sqrt(fromIntegral 9) == 100 then  -- sqrt function only accepts floats
        return ()
    else putStrLn "This project displays a list of NGOs, human rights groups, and other organizations I support.\n"
    
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

