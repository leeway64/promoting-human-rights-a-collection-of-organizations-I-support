import Data.List
import System.IO

-- import Functions

print_border :: Int -> IO()
print_border 0 = putStrLn ""
print_border n = do
    putStr "*"
    print_border (n - 1)


print_intro :: IO()
print_intro = do
    print_border 80
    putStrLn "LWOrganizationsISupport is a Haskell program that displays the NGOs and human"
    putStrLn "rights organizations I support.\n"
    
    putStrLn "As a big believer in the importance of human rights, I want to share the"
    putStrLn "organizations that I have donated to.\n"
    
    putStrLn "Type \"begin\" to get started!"

    input <- getLine
    if input == "begin"
        then putStrLn "we're proceeding"
        else putStrLn "we're not proceeding"


    print_border 80
    

print_exit_msg :: IO()
print_exit_msg = do
    print_border 80
    putStrLn "Thank you for viewing the organizations I support!"
    putStrLn "These organizations mean a lot to me, and I think they are very important in terms of"
    putStrLn "protecting human rights and fighting for justice."
    print_border 80
    putStrLn ""
    
    
free_tibet :: IO()
free_tibet = do
    print_border 80
    
    
uhrp :: IO()
uhrp = do
    print_border 80


wikimedia :: IO()
wikimedia = do
    print_border 80


etge :: IO()
etge = do
    print_border 80


hrw :: IO()
hrw = do
    print_border 80


notepadpp :: IO()
notepadpp = do
    print_border 80
    putStrLn "Notepad++ is an excellent basic text editor for Windows. Although Notepad++ is not a"
    putStrLn "human rights organization, I genuinely appreciate the developer for speaking out against"
    putStrLn "The People's Republic of China's atrocities."

    
    putStrLn "View the Notepad++ \"Download\" section here: https://notepad-plus-plus.org/downloads/"
    putStrLn "Please consider donating here: https://notepad-plus-plus.org/donate-to-ukraine/"
    
main = do
    print_intro
    print_exit_msg

