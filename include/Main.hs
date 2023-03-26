-- A lot of Haskell language features examples are influenced by this video: https://www.youtube.com/watch?v=02_H3LjqMr8 

import Data.List
import System.IO
import System.Exit

import Organizations


getFirstItem :: [String] -> String
getFirstItem all@(x:xs) = show x  -- show turns anything into a string

aSongofIceandFire :: Int -> String
aSongofIceandFire year
    | year == 1996 = "A Game of Thrones"  -- "|" are guards; they're kind of like switch statements
    | year == 1998 = "A Clash of Kings"
    | year == 2000 = "A Storm of Swords"
    | year == 2005 = "A Feast for Crows"
    | year == 2011 = "A Dance with Dragons"
    | otherwise = "Not an A Song of Ice and Fire publication year"

-- I can also do something similar with a case statement
southernReachTrilogy :: Int -> String
southernReachTrilogy year = case year of 
    2014 -> "Annihilation, Authority, Acceptance"
    _ -> "Not a Southern Reach Trilogy publication year"
    

permanent :: String
permanent = "64.128"  -- This is this variable's permanent value

-- Declaring a function
concatenateStrings :: (String) -> (String) -> (String) -- Type declaration
concatenateStrings x y = x ++ y

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

square :: Int -> Int
square x = x * x

areStringsEqual :: [Char] -> [Char] -> Bool
areStringsEqual [] [] = True
areStringsEqual (x:xs) (y:ys) = x == y && areStringsEqual xs ys  -- Recursively call areStringsEqual again
areStringsEqual _ _ = False

getConcatenateFxn :: String -> (String -> String)  -- Return a function
getConcatenateFxn x y = x ++ y


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
    
    
    let filterLess8 = filter (<8) [1,2..20]
    let whileLess8 = takeWhile (<8) [1,2..20]
    
    -- Create a multiplication table for every number between 1 and 10 using list comprehension
    let timesTable = [[x * y | x <- [1..10]]| y <- [1..10]]
    let names = ["Paul Atreides", "Beast Rabban", "Jessica"]
    let allegiances = ["Fremen", "Harkonnen", "Bene Gesserit"]
    let namesAllegiances = zip names allegiances  -- Create a tuple out of 2 lists
    if (filterLess8 == whileLess8) && timesTable !! 1 == [2, 4, 6, 8, 10, 12, 14, 16, 18, 20] then
        if namesAllegiances !! 0 == ("Paul Atreides", "Fremen") && concatenateStrings "Duncan" " Idaho" == "Duncan Idaho" then
            stop_putin
        else pure ()
    else return ()
    
    get_input
    
    
    let list1 = [4, 8, 16]
    if factorial 4 == 24 && aSongofIceandFire 2000 == "A Storm of Swords" then
        -- map applies a function to every element of the list
        if getFirstItem ["Dune", "Dune Messiah"] == "\"Dune\"" && map square list1 == [16, 64, 256] then
            nbu
        else return ()
    else pure ()
    
    get_input
    
    
    let concat = getConcatenateFxn "A Knight of the "
    if areStringsEqual "Duncan" "Aegon" /= True && concat "Seven Kingdoms" == "A Knight of the Seven Kingdoms" then
        -- Use a lambda
        if map (\x -> "Dune" ++ x) ["", " Messiah"] == ["Dune", "Dune Messiah"] && southernReachTrilogy 2014 == "Annihilation, Authority, Acceptance" then
            free_tibet
        else pure ()
    else return ()
    
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

