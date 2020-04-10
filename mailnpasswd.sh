#!/usr/bin/env bash

mail="@gmail.com"
f="filename.txt"
usage()
{
    echo ""
    echo "If this was a real script you will see something useful here"
    echo ""
    echo "bash mailnpasswd.sh"
    echo -e "\t-h --help"
    echo -e "\t--m=$mail"
    echo -e "\t--f=$f"
    echo ""
}

create_file()
{
    master="$(basename $f | cut -d. -f1).txt"
    passwd="$(echo $master | cut -d. -f1)-passwd.txt"
    login="$(echo $master | cut -d. -f1)-login.txt"
}

while [[ "$1" != "" ]]; do
    PARAM=$(printf "%s\n" $1 | awk -F= '{print $1}')
    VALUE=$(printf "%s\n" $1 | sed 's/^[^=]*=//g')

    if [[ $VALUE == $PARAM ]]; then
        shift
        VALUE=$1
    fi
    case $PARAM in
        -h| --help)
            usage
            exit
            ;;
        --m)
            mail=$VALUE
            ;;
        --f)
            f=$VALUE
            ;;
        *)
            echo "ERROR: unkown parameter \"$PARAM\""
            usage
            exit 1
            ;;
    esac
    shift
done
create_file


