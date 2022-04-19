import Data.List
import System.IO


print_border :: Int -> IO()
print_border n = putStr "*"


print_intro :: IO()
print_intro = do
    print "LWOrganizationsISupport is a Haskell program that displays the NGOs and human"
    print "rights organizations I support"
    print_border 1

main = do
    print_intro

