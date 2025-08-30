#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "please run with root access"
    exit 1
else
    echo "you are running with root access"
fi

dnf list installed python3 

if [ $? -eq 0 ]
then 
    echo "python3 successfully installed"
    exit 0
else
    echo "python3 is not installed, going to install now"
    dnf install python3 -y
    if [ $? -eq 0 ]
    then 
        echo "installing python3 is successful "
        exit 0
    else
        echo "installing python3 is unsuccessful"
        exit 1
    fi
fi

echo " is exit code working"