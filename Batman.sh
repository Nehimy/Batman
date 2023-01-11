#!/bin/bash

function batman() {

    Batman=(
        [0]="           _,    _   _    ,_ "
        [1]="      .o888P     Y8o8Y     Y888o."
        [2]="     d88888      88888      88888b"
        [3]="    d888888b_  _d88888b_  _d888888b"
        [4]="    8888888888888888888888888888888"
        [5]="    8888888888888888888888888888888"
        [6]="    P8888PIY888PIY888PIY888PIY8888P"
        [7]="    Y888    V    Y8P     V    888Y"
        [8]="     '8o          V           o8'"
        [9]="       .                     ."⠀⠀⠀⠀⠀⠀⠀⠀

    )


    for (( i=0; i<=9; i++ ))
    do
        echo -e $1 $e "${Batman[$i]}" '\e[0m'
        sleep 0.1
    done
    echo $e "           Batmaaaaaan ^^"

}


Cian="\0033[0;36m"
CianBold="\0033[1;36m"
Red="\0033[0;31m"
RedBold="\0033[1;31m"
Lilac="\0033[0;35m"
LilacBold="\0033[1;35m"
Brown="\0033[0;33m"
Grey="\0033[0;37m"
White="\0033[1;39m"
Yellow="\0033[1;33m"
DarkGreen="\e[1;92m"
LightRed="\e[1;91m"
DarkGray="\e[1;90m"
LightMagneta="\e[1;95m"

Rainbow=($Red $LightRed $Yellow $CianBold $LightMagneta $LightRed $Yellow)

index=0
maxIndex=${#Rainbow[@]}
while true; do
    clear
    batman ${Rainbow[$index]}
    index=$((($index + 1) % $maxIndex))
    sleep 1
done;
