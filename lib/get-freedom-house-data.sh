#!/usr/bin/env bash


function main()
{
    touch lib/messages.txt
    echo "Glory to Hong Kong" > lib/messages.txt
    echo "Free Tibet" >> lib/messages.txt  # ">>" appends to a file
    cat <<< "Freedom for East Turkistan"  # "<<<" is a here string
    
    cat < lib/messages.txt  # Redirect input
    
    rm lib/messages.txt
    
    if [ "$#" -ne 1 ]; then
        # printf is similar to the C language's printf
        printf "Error: Provide the full link to the data file as an argument\n"
        sleep 0.25  # Pauses for half a second
        exit
    fi

    # http --download is the same as using wget
    # Download the data file into the "lib" directory
    http --download "$1" --output "doc/data.xlsx"

    # uniq removes adjacent identical lines and prints the remaining lines to standard output.
    # grep -v "^#" finds all lines that don't start with "#". sponge writes the output to another
    # file, removing the need for a temporary file.
    uniq lib/success-message.txt | grep -v "^#" | sponge lib/success-message-edited.txt
    echo
    cat lib/success-message-edited.txt
}

main $1
