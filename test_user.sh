#!/bin/bash

get_uid_user()
{
    echo"---get_uid_user---"
    echo -n " Enter an username: "
    read ans
    echo "$(id -u $ans)"


}

user_exist()
{
    echo "---user_exist---"
    echo -n " Enter an username: "
    read ans
    if grep -q $ans /etc/passwd; then
        echo "Yes"
    else
        echo "No"
    fi
}

while true;do
    echo "-----------------------------------"
    echo "1 - Vérifier l'existence d'un utilisateur"
    echo "2 - Connaître l'UID d'un utilisateur"
    echo "q - Quitter"
    echo "-----------------------------------"
    read ans
    case $ans in
        1)
            user_exist
        ;;
        2)
            get_uid_user
        ;;
        q)
            echo"By !"
            exit 1
            ;;
        *)
            echo "ERROR: please choose one of the options above"
            exit 1
            ;; 
   esac
done
