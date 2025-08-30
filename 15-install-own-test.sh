#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "please run with root access"
    exit 1
else
    echo "you are running with root access"
fi

dnf list install mysql 

if [ $? -eq 0 ]
then 
    echo "mysql installing success"
    exit 0
else
    echo "mysql installing failed"
    exit 1
fi