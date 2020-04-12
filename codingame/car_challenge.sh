#!/bin/bash

filename="simple_car_challenge.txt"

is_car()
{
    if [[ $1 =~ ^"|"$ ]];then echo -1; else echo $1; fi
}

{
    read -r firstline
    bottom_left=$(is_car ${firstline:0:1})
    bottom_right=$(is_car ${firstline:1:1})

    if [[ $bottom_left == $bottom_right ]];then echo "false"; exit; fi
    while read -r line_1; read line_2 ;do
        if [[ $(is_car ${line_1:0:1}) -eq -1 ]];then
            if [[ $(is_car ${line_1:1:1}) -eq -1 ]];then
                continue
            elif [[ line_1:1:1 > $bottom_left || (-n $line_2 && ${line_1:1:1} < $(is_car ${line_2:0:1})) ]];then
                echo "false"
                exit
            fi
       elif [[ ${line_1:0:1} == $(is_car ${line_1:1:1}) || ${line_1:0:1} > $bottom_right || ( -n $line_2 && ${line_1:0:1} < $(is_car ${line_2:1:1})) ]];then
            echo "false"
            exit
        fi
    bottom_left=${line_1:0:1}
    bottom_right=${line_1:1:1}
    done
}< $filename



