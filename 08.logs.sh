#!/bin/bash
ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"
echo "script name $0"
VALIDATE(){
    if [ $? -ne 0 ]
    then   
        echo "ERROR: : $1 ... faild"
        exit 1
    else
        echo "$2 ... SUCCESS"
    fi
}
if [ $ID -ne 0 ]
then
    echo "ERROR: : please run this script with root acess"
else
    echo "you are root user"
fi
yum install mysql -y &>> $LOGFILE
VALIDATE $? "installing mysql"
yum install git -y &>> $LOGFILE
VALIDATE $? "installing git"