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

        num="$(echo "$data"|cut -d\B -f2|cut -d\^ -f1)"
        name="$(echo "$data"|cut -d\^ -f2)"
        firstname="$(echo "$name"|cut -d/ -f1)"
        secondname="$(echo "$name"|cut -d\/ -f2)"
        UIN="$(echo "$UIN"|cut -d )"
        exdate="$(echo "$data"|cut -d\^ -f3)"
        expdate="${expdate:2:2}/${exdate:0:2}"

        echo "User: $firstname $secondname"
        echo "Card number: $num"
        echo "UIN: $UIN"
        echo "Expiration Date: $expdate"
        echo "---------------------------"
done
