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
    
    putStrLn "Type \"next\" to get started!"

    

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
    putStrLn "Free Tibet"
    putStr "Tibet is one of the most oppressed places on Earth; according to Freedom House, Tibet has a 1/100 score in terms of Global Freedom "
    putStrLn "(https://freedomhouse.org/countries/freedom-world/scores?sort=asc&order=Total%20Score%20and%20Status)."
    putStrLn "Free Tibet is an NGO that advocates for freedom for Tibet"    
    putStrLn "To support Tibetan freedom, consider donating to Free Tibet: https://freetibet.org/"
    putStrLn "Consider checking out Free Tibet's great merchandise store: https://shop.freetibet.org/"

    putStrLn ""
    putStr "To learn more about Tibet, consider reading Barbara Demick's excellent book, "
    putStr "\"Eat the Buddha: Life and Death in a Tibetan Town\""
    putStrLn " (https://www.barnesandnoble.com/w/eat-the-buddha-barbara-demick/1125854779)"
    putStrLn "Type \"next\" to continue."
    
    
uhrp :: IO()
uhrp = do
    print_border 80
    putStrLn "Uyghur Human Rights Project"
    putStrLn "The People's Republic of China (PRC) has committed crimes against humanity in East "
    putStrLn "Turkistan, known to the world as Xinjiang."
    putStrLn ""
    putStrLn "The Uyghur Human Rights Project (UHRP) \"promotes the rights of the Uyghurs and other "
    putStrLn "Turkic Muslim peoples in East Turkistan\" (https://uhrp.org/about/)."
    putStrLn "Please consider donating to UHRP to help fight against the PRC's crimes in that area: https://uhrp.org/"
    putStrLn "Type \"next\" to continue."
                                    

wikimedia :: IO()
wikimedia = do
    print_border 80
    putStrLn "Wikimedia Foundation"
    putStr "The Wikimedia Foundation is the foundation that hosts Wikipedia; their goal is to "
    putStrLn"allow everyone to share their knowledge."
    putStrLn ""
    putStr "Consider donating the Wikimedia Foundation to keep Wikipedia free: "
    putStrLn "https://wikimediafoundation.org/"


etge :: IO()
etge = do
    print_border 80
    putStrLn "East Turkistan Government-in-Exile"
    putStr "I believe that the East Turkistan Government-in-Exile (ETGE) is the legitimate government of "
    putStrLn "the area referred to by China as the Xinjiang Uygur Autonomous Region."
    putStrLn ""
    putStr "Please consider donating to ETGE to support their struggle against the People's "
    putStrLn "Republic of China: https://east-turkistan.net/"


hrw :: IO()
hrw = do
    print_border 80
    putStrLn "Human Rights Watch"
    putStr "Human Rights Watch is a non-profit organization that \"investigates and reports on "
    putStrLn "abuses happening in all corners of the world.\" (https://www.hrw.org/about/about-us)."
    putStrLn ""
    putStrLn "Consider donating to Human Rights watch here: https://www.hrw.org/"


notepadpp :: IO()
notepadpp = do
    print_border 80
    putStrLn "Notepad++"
    putStrLn "Notepad++ is an excellent basic text editor for Windows. Although Notepad++ is not a"
    putStrLn "human rights organization, I genuinely appreciate the developer for speaking out against"
    putStrLn "The People's Republic of China's atrocities."

    
    putStrLn "View the Notepad++ \"Download\" section here: https://notepad-plus-plus.org/downloads/"
    putStrLn "Please consider donating here: https://notepad-plus-plus.org/donate-to-ukraine/"
    

