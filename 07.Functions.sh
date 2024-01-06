#!/bin/bash
ID=$(id -u)
VALIDATE(){
    if [ $? -ne 0 ]
    then   
        echo "ERROR: : installing is faild"
        exit 1
    else
        echo "Installing is SUCCESS"
    fi
}
if [ $ID -ne 0 ]
then
    echo "ERROR: : please run this script with root acess"
else
    echo "you are root user"
fi
yum install mysql -y
VALIDATE
yum install git -y
VALIDATE