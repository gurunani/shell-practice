#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGS_FOLDER="/var/log/shellscript-logs"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"

mkdir -p $LOGS_FOLDER

echo "script started executing at : $(date)" &>>$LOG_FILE

if [ $USERID -ne 0 ]
then
    echo -e "$R please run with root access"  &>>$LOG_FILE
    exit 1
else
    echo -e "$G you are running with root access $N"  &>>$LOG_FILE
fi

VALIDATE(){
if [ $1 -eq 0 ]
    then 
        echo -e "$G installing $2 is successful $N "  &>>$LOG_FILE
    else
        echo -e "$R installing $2 is unsuccessful $N"  &>>$LOG_FILE
        exit 1
    fi
}
dnf list installed mysql 

if [ $? -eq 0 ]
then 
    echo -e "$Y mysql successfully installed $N"  &>>$LOG_FILE
else
    echo -e "$Y mysql is not installed, going to install now $N"  &>>$LOG_FILE
    dnf install mysql -y
    VALIDATE $? "mysql"
  
fi
