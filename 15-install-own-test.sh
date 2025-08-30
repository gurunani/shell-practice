#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "please run with root access"
    exit 1
else
    echo "you are running with root access"
fi

dnf list installed mysql 

if [ $? -eq 0 ]
then 
    echo "mysql successfully installed"
    exit 0
else
    echo "mysql is not installed, going to install now"
    dnf install mysql -y
    if [ $? -eq 0 ]
    then 
        echo "installing mysql is successful "
        exit 0
    else
        echo "installing mysql is unsuccessful"
        exit 1
    fi
fi

echo " is exit code working"