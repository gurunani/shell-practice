#!/bin/bash

$USERID=$(id - u)

if [ $USERID -ne 0]
then
    echo "please run with root acess"
    exit (1)
else
    echo "you are running with root acess"
    exit(0)
fi