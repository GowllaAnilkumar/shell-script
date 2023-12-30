#!/bin/bash
NUMBER=$1
if [ $NUMBER -gt 100 ] 
then
   echo "given number $NUMBER is grater than 100"
else
    echo "given number $NUMBER is not grather than 100"
fi
