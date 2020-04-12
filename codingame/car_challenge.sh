#!/bin/bash

filename="simple_car_challenge.txt"

is_car()
{
    if [[ $1 =~ ^"|"$ ]];then echo -1; else echo "$1"; fi
}

{
    read -r firstline
    top_left=$(is_car "${firstline:0:1}")
    top_right=$(is_car "${firstline:1:1}")

    if [[ "$top_left" == "$top_right" ]];then echo "false"; exit; fi
    while read -r line_1; read -r line_2;do
       if [[ $(is_car "${line_1:0:1}") -eq -1 ]];then
            if [[ $(is_car "${line_1:1:1}") -eq -1 ]];then
                continue
            elif [[ line_1:1:1 > $top_left || (-n $line_2 && "${line_1:1:1}" < $(is_car "${line_2:0:1}")) ]];then
                echo "false"
            fi
        elif [[ "${line_1:0:1}" == $(is_car "${line_1:1:1}") || ${line_1:0:1} > $top_right || ( -n $line_2 && "${line_1:0:1}" < $(is_car "${line_2:1:1}")) ]];then
            echo "false"
           fi
    top_left="${line_1:0:1}"
    top_right="${line_1:1:1}"
    done

    read -r lastline
    echo "$lastline"
    bottom_left=$(is_car "${lastline:0:1}")
    bottom_right=$(is_car "${lastline:1:1}")
    echo "$bottom_left"
    echo "$bottom_right"

}< $filename



