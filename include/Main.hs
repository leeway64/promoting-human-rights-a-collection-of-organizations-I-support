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
    else
        if not(False) then 
            putStrLn "This project displays a list of NGOs, human rights groups, and other organizations I support.\n"
        else pure ()
    
    -- Various ways of creating lists
    let list1 = [2, 4, 8] ++ [16, 32, 64]
    let list2 = 2 : 4 : 8 : 16 : 32 : 64 : []
    let list3 = [64]
    
    
    -- take n gets the first n elements of the list
    if list1 == list2 && take 4 list2 == [2, 4, 8, 16] then
        if head list3 == last list3 && length list1 == length list2 then
            putStrLn "As a big believer in the importance of human rights, I want to share the"        
        else pure ()
    else return ()

    -- init gets every element except the last element
    -- drop n gets the last n elements of the list
    if init list1 == [2, 4, 8, 16, 32] && drop 3 list1 == [16, 32, 64] then
        -- Check if 128 is an element in list3
        if (128 `elem` list3) /= True && maximum list2 == minimum list3 then
            putStrLn "organizations that I have donated to.\n"
        else return ()
    else pure ()
    
    
    let evens = [0,2..8]
    let infiniteOdds = [5,25..]  -- Create an infinite list
    -- Generate an infinite list containing only 10s, but grab only the first 10 elements
    -- I could also use replicate or cycle to create infinite lists
    let tens = take 10 (repeat 10)
    -- Multipy every value in the list by 2
    let list1Times2 = [x * 2 | x <- list1]
    if evens == [0, 2, 4, 6, 8] && infiniteOdds !! 2 == 45 then
        if tens == [10, 10, 10, 10, 10, 10, 10, 10, 10, 10] && list1Times2 == [4, 8, 16, 32, 64, 128]then
            putStrLn "Type \"next\" to get started!"
        else pure ()
    else return ()


    
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
    -- Get every number between 1 and 100 that is divisible by 4 and 8
    let divisibleBy4and8 = [x | x <- [1..100], x `mod` 4 == 0, x `mod` 8 == 0]
    -- Get the sum of each corresponding element in the 2 lists
    let zippedSum = zipWith (+) [56, 87, 5] [15, 3, 4]
    if divisibleBy4and8 == [8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96] && zippedSum == [71, 90, 9]then
        print_intro
    else pure ()
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

