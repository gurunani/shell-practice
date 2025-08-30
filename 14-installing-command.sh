#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "please run with root acess"
    echo exit 1
else
    echo "you are running with root acess"
fi

dnf install nginx -y

if [ $? -eq 0 ]
then 
    echo "nginx installing sucess"
    exit 0
else
    echo "nginx installing faild"
    exit 1
fi