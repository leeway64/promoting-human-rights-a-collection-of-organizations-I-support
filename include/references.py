import functools
import re
import collections


def print_notepadpp_links():
    ordered = collections.OrderedDict()
    ordered["\tNotepad++ downloads:\n"] = "\t\thttps://notepad-plus-plus.org/downloads/\n"
    ordered["\tDonate to Notepad++:\n"] = "\t\thttps://notepad-plus-plus.org/donate-to-ukraine/"

    for key, value in ordered.items():
        print(f"{key}{value}")


def main():
    print('Collected here are the references/links mentioned in this project\n')
    
    
    print("Stop Putin")
    print("\t".join(["\tDown with Vladmir Putin and Xi Jinping!\n", "\thttps://www.stopputin.net/"]))
    print()
    
    
    print("National Bank of Ukraine")
    dq = collections.deque()
    dq.append("\tSupport the Ukrainian Armed Forces:")
    dq.append("\t\thttps://bank.gov.ua/en/news/all/natsionalniy-bank-vidkriv-spetsrahunok-dlya-zboru-koshtiv-na-potrebi-armiyi\n")
    dq.append("\tSupport the humanitarian relief effort:")
    dq.append("\t\thttps://bank.gov.ua/en/news/all/natsionalniy-bank-vidkriv-rahunok-dlya-gumanitarnoyi-dopomogi-ukrayintsyam-postrajdalim-vid-rosiyskoyi-agresiyi")
    
    for i in range(len(dq)):
        print(dq.popleft())
    print()
    
    
    print("Free Tibet")
    print("\tFreedom House Global Freedom Score:")
    print("\t\thttps://freedomhouse.org/countries/freedom-world/scores?sort=asc&order=Total%20Score%20and%20Status\n")
    
    ft_list = ['\tFree Tibet site:', '\t\thttps://freetibet.org/\n', '\tFree Tibet Merchandise store:', '\t\thttps://shop.freetibet.org/\n',\
        '\t\"Eat the Buddha: Life and\Death in a Tibetan Town\", by Barbara Demick:',\
        '\t\thttps://www.barnesandnoble.com/w/eat-the-buddha-barbara-demick/1125854779']
        
    for line in list(map(lambda x: x + "\n", ft_list)):
        print(line, end="")
    print()
    
    
    print("Uyghur Human Rights Project")
    uhrp_list = ['\tAbout UHRP:', '\t\thttps://uhrp.org/about/\n', '\tUHRP site:', '\t\thttps://uhrp.org/']
    # If the list element is a string, print it
    for element in filter(lambda s: type(s) == str, uhrp_list):
        print(element)
    print()
    
    
    print("Wikimedia Foundation")
    # Concatenate the 2 list elements
    print(functools.reduce(lambda x, y: x + y, ['\tWikimedia Foundation site:\n', '\t\thttps://wikimediafoundation.org/']))
    print()
    
    
    print("East Turkistan Government-in-Exile")
    etge_list = ['\tETGE site:', '\t\thttps://east-turkistan.net']
    for x in etge_list: print(x)  # 1-line for loop
    print()
    
    
    print("Human Rights Watch")
    hrw_list = ['\tAbout HRW:', '\t\thttps://www.hrw.org/about/about-us\n', '\tHRW site:', '\t\thttps://www.hrw.org/']
    regular_expression = re.compile(".")  # "." indicates any character except \n
    for element in hrw_list:
        if bool(re.match(regular_expression, element)):
            print(element)
    print()
    
    
    print("Notepad++")
    p_npp_l = print_notepadpp_links  # Assign variable to function
    p_npp_l()  # Call the function
    print()


if __name__ == "__main__":
    main()

