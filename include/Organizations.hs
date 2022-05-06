module Organizations (
    stop_putin,
    nbu,
    free_tibet,
    uhrp,
    wikimedia,
    etge,
    hrw,
    notepadpp,
    print_border
) where


stop_putin :: IO()
stop_putin = do
    print_border 80
    putStrLn "Stop Putin"
    putStrLn "\tStand with Ukraine!"
    putStrLn "\tSupport the fight against Russia by visiting https://www.stopputin.net/ and donating to a fund."
    putStrLn "\tDown with Vladimir Putin and Xi Jinping!\n"
    putStrLn "Type \"next\" to continue."
    

nbu :: IO()
nbu = do
    print_border 80
    putStrLn "National Bank of Ukraine"
    putStrLn "\tStand with Ukraine!"
    putStrLn "\tSupport Ukraine by donating directly to the National Bank of Ukraine."
    putStrLn "\tHere is a fund for directly helping the Ukrainian Armed Forces: "
    putStrLn "\t\thttps://bank.gov.ua/en/news/all/natsionalniy-bank-vidkriv-spetsrahunok-dlya-zboru-koshtiv-na-potrebi-armiyi"
    putStrLn "\tHere is a fund for directly contributing to humanitarian assistance: "
    putStrLn "\t\thttps://bank.gov.ua/en/news/all/natsionalniy-bank-vidkriv-rahunok-dlya-gumanitarnoyi-dopomogi-ukrayintsyam-postrajdalim-vid-rosiyskoyi-agresiyi\n"
    
    putStrLn "Type \"next\" to continue."
    
free_tibet :: IO()
free_tibet = do
    print_border 80
    putStrLn "Free Tibet"
    putStrLn "\tTibet is one of the most oppressed places on Earth; according to Freedom House, Tibet has a 1/100 score in terms of Global Freedom"
    putStrLn "\t(https://freedomhouse.org/countries/freedom-world/scores?sort=asc&order=Total%20Score%20and%20Status)."
    putStrLn "\tFree Tibet is an NGO that advocates for freedom for Tibet."    
    putStrLn "\tTo support Tibetan freedom, consider donating to Free Tibet: https://freetibet.org/"
    putStrLn "\tConsider checking out Free Tibet's great merchandise store: https://shop.freetibet.org/"

    putStrLn ""
    putStrLn "\tTo learn more about Tibet, consider reading Barbara Demick's excellent book, "
    putStrLn "\t\"Eat the Buddha: Life and Death in a Tibetan Town\""
    putStrLn "\t\t(https://www.barnesandnoble.com/w/eat-the-buddha-barbara-demick/1125854779)\n"

    putStrLn "Type \"next\" to continue."
    
    
uhrp :: IO()
uhrp = do
    print_border 80
    putStrLn "Uyghur Human Rights Project"
    putStrLn "\tThe People's Republic of China (PRC) has committed crimes against humanity in East "
    putStrLn "\tTurkistan, known to the world as Xinjiang."
    putStrLn ""
    putStrLn "\tThe Uyghur Human Rights Project (UHRP) \"promotes the rights of the Uyghurs and other "
    putStrLn "\tTurkic Muslim peoples in East Turkistan\" (https://uhrp.org/about/)."
    putStrLn "\tPlease consider donating to UHRP to help fight against the PRC's crimes in that area: https://uhrp.org/\n"

    putStrLn "Type \"next\" to continue."
                                    

wikimedia :: IO()
wikimedia = do
    print_border 80
    putStrLn "Wikimedia Foundation"
    putStrLn "\tThe Wikimedia Foundation is the foundation that hosts Wikipedia; their goal is to "
    putStrLn "\tallow everyone to share their knowledge."
    putStrLn ""
    putStrLn "\tConsider donating the Wikimedia Foundation to keep Wikipedia free: https://wikimediafoundation.org/\n"

    putStrLn "Type \"next\" to continue."


etge :: IO()
etge = do
    print_border 80
    putStrLn "East Turkistan Government-in-Exile"
    putStrLn "\tI believe that the East Turkistan Government-in-Exile (ETGE) is the legitimate government of "
    putStrLn "\tthe area referred to by China as the Xinjiang Uygur Autonomous Region."
    putStrLn ""
    putStrLn "\tPlease consider donating to ETGE to support their struggle against the People's "
    putStrLn "\tRepublic of China: https://east-turkistan.net/\n"

    putStrLn "Type \"next\" to continue."
    

hrw :: IO()
hrw = do
    print_border 80
    putStrLn "Human Rights Watch"
    putStrLn "\tHuman Rights Watch is a non-profit organization that \"investigates and reports on "
    putStrLn "\tabuses happening in all corners of the world\" (https://www.hrw.org/about/about-us)."
    putStrLn ""
    putStrLn "\tConsider donating to Human Rights watch here: https://www.hrw.org/\n"

    putStrLn "Type \"next\" to continue."
    

notepadpp :: IO()
notepadpp = do
    print_border 80
    putStrLn "Notepad++"
    putStrLn "\tNotepad++ is an excellent basic text editor for Windows. Although Notepad++ is not a"
    putStrLn "\thuman rights organization, I genuinely appreciate the developer for speaking out against"
    putStrLn "\tThe People's Republic of China's atrocities.\n"

    
    putStrLn "\tView the Notepad++ \"Download\" section here: https://notepad-plus-plus.org/downloads/"
    putStrLn "\tPlease consider donating here: https://notepad-plus-plus.org/donate-to-ukraine/\n"
    putStrLn "Type \"next\" to continue."


print_border :: Int -> IO()
print_border 0 = putStrLn ""
print_border n = do
    putStr "*"
    print_border (n - 1)

