import Data.List
import System.IO
import System.Exit

import Organizations

main :: IO ExitCode

main = do
    print_intro
    input <- getLine
    if input /= "next"
        then exitFailure
        else putStr ""
        
    free_tibet
    input <- getLine
    if input /= "next"
        then exitFailure
        else putStr ""
        
    uhrp
    input <- getLine
    if input /= "next"
        then exitFailure
        else putStr ""
        
    wikimedia
    input <- getLine
    if input /= "next"
        then exitFailure
        else putStr ""
        
    etge
    input <- getLine
    if input /= "next"
        then exitFailure
        else putStr ""
        
    hrw
    input <- getLine
    if input /= "next"
        then exitFailure
        else putStr ""
        
    notepadpp
    input <- getLine
    if input /= "next"
        then exitFailure
        else putStr ""
        
    print_exit_msg
    exitSuccess

