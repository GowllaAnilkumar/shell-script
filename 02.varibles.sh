#!/bin/bash
PERSON1=$1
PERSON2=$2

echo "$PERSON1: Hello $PERSON2 Good morning"
echo "$PERSON2: Hi $PERSON1 good morning how do you do"
echo "$PERSON1: Iam doing good"
echo "$PERSON2: Thank you"
echo "$PERSON1:  Welcome"

USER=$3
PASSWORD=$4

echo "please enter user: password:"
read -s "user:  password:"
echo "user is: $USER, password is : $PASSWORD "
