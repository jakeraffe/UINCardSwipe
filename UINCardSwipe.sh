#!/bin/bash

clear
echo "Welcome Student!"
while [ 1 ]
do
        echo "Please swipe your card: "
        read data

        if ["$data" = " "]
        then
                echo "Card could not be read. Please swipe again."
        fi
        clear

        #-d declares the next character will be a delimiter.
        #   Here, the data starts with a "B" followed by the card number.
        #   The card number ends with a "^" so we put a second delimiter called f1.
        num="$(echo "$data"|cut -d\B -f2|cut -d\^ -f1)"

        #here, the name is split in two parts spearated by a "/".
        #   the full name ends with a "^" so that is our delimiter
        name="$(echo "$data"|cut -d\^ -f2)"
        # helps us select which part of the name e.g. "asas/ffff" we choose
        firstname="$(echo "$name"|cut -d/ -f1)"
        secondname="$(echo "$name"|cut -d\/ -f2)"

        #TODO
        # Finds the UIN which is on the same line as the second instance
        #   of the experation. Might be tricky..
        UIN="$(echo "$UIN"|cut -d )"

        #TODO
        # Dont know if this information is necessary, but it will remain
        #    for now and is functional.
        exdate="$(echo "$data"|cut -d\^ -f3)"
        expdate="${expdate:2:2}/${exdate:0:2}"

        # Printing out the variables.
        echo "User: $firstname $secondname"
        echo "Card number: $num"
        echo "UIN: $UIN"
        echo "Expiration Date: $expdate"
        echo "---------------------------"
done
