import Data.List
import System.IO

import Organizations


main = do
    print_intro
    input <- getLine
    if input == "begin"
        then putStrLn "we're proceeding"
        else putStrLn "we're not proceeding"
        
    free_tibet
    uhrp
    wikimedia
    etge
    hrw
    notepadpp
    print_exit_msg

