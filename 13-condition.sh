#!/bin/bash

NUMBER=$1

if [ $NUMBER -lt 9 ]
then 
    echo " given $NUMBER is less than 10"
else 
    echo "given $NUMBER is greater than 10"
fi