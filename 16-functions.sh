#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "please run with root access"
    exit 1
else
    echo "you are running with root access"
fi
VALIDATE(){}
if [ $1 -eq 0 ]
    then 
        echo "installing $2 is successful "
    else
        echo "installing $2 is unsuccessful"
        exit 1
    fi

dnf list installed mysql 

if [ $? -eq 0 ]
then 
    echo "mysql successfully installed"
else
    echo "mysql is not installed, going to install now"
    dnf install mysql -y
    VALIDATE $? "mysql"
  
fi

dnf list installed nginx 

if [ $? -eq 0 ]
then 
    echo "nginx successfully installed"
else
    echo "nginx is not installed, going to install now"
    dnf install nginx -y
    VALIDATE $? "nginx"
fi

dnf list installed python3 

if [ $? -eq 0 ]
then 
    echo "python3 successfully installed"
else
    echo "python3 is not installed, going to install now"
    dnf install python3 -y
    VALIDATE $? "python3"
    
fi