module Organizations (
    print_border,
    print_intro,
    print_exit_msg,
    free_tibet,
    uhrp,
    wikimedia,
    etge,
    hrw,
    notepadpp
) where


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
    putStr "Tibet is one of the most oppressed places on Earth; according to Freedom House, Tibet has a 1/100 score in terms of Global Freedom "
    putStrLn "(https://freedomhouse.org/countries/freedom-world/scores?sort=asc&order=Total%20Score%20and%20Status)."
    putStrLn "To support Tibetan freedom, I have donated to and bought merchandise from Free Tibet: https://freetibet.org/"
    putStrLn "Consider checking out Free Tibet's great merchandise store: https://shop.freetibet.org/"

    putStrLn ""
    putStr "To learn more about Tibet, consider reading Barbara Demick's excellent book, "
    putStr "\"Eat the Buddha: Life and Death in a Tibetan Town\""
    putStrLn " (https://www.barnesandnoble.com/w/eat-the-buddha-barbara-demick/1125854779;jsessionid=D56ADBECE9E192001821A020D5CBE037.prodny_store01-atgap06?ean=9780812988116)"
    
uhrp :: IO()
uhrp = do
    print_border 80
    putStrLn ""
    putStrLn ""
    putStrLn ""
    putStrLn ""
    putStrLn ""
    putStrLn ""
    putStrLn ""
    putStrLn ""
                                    


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
    

