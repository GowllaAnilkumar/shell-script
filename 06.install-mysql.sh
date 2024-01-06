#!/bin/bash
ID=$(id -u)
if [ $ID -ne 0 ]
then
    echo "ERROR: : please run this script with root acess"
else
    echo "you are root user"
fi
yum install mysql -y

if [ $? -ne 0 ]
then   
    echo "ERROR: : installing MYSQL is faild"
    exit 1
else
    echo "Installing MYSQL is SUCCESS"
fi
