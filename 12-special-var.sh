#!/bin/bash

echo " all variables passed to script : $@"
echo " number of var : $#"
echo "script name $0"
echo "pwd : $PWD"
echo "home directory : $HOME"
echo "user name : $USER"
echo "process ID : $$"
sleep 5 &
echo " process id in back ground : $!