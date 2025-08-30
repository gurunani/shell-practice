#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
if [ $USERID -ne 0 ]
then
    echo -e "$R please run with root access"
    exit 1
else
    echo  "$G you are running with root access $N"
fi
# $? → will be 0 if the install succeeded.

# "mysql" → is the string you passed.

# Inside VALIDATE function:

# $1 = 0

# $2 = mysql

# Then the function checks:

# If $1 -eq 0 → prints "installing mysql is successful"

# Else → prints "installing mysql is unsuccessful"

# ✅ So basically:

# $1 = result of the command (success/failure).

# $2 = name of the software you’re checking.
VALIDATE(){
if [ $1 -eq 0 ]
    then 
        echo "$G installing $2 is successful $N "
    else
        echo "$R installing $2 is unsuccessful $N"
        exit 1
    fi
}
dnf list installed mysql 

if [ $? -eq 0 ]
then 
    echo "$Y mysql successfully installed $N"
else
    echo "$Y mysql is not installed, going to install now $N"
    dnf install mysql -y
    VALIDATE $? "mysql"
  
fi
