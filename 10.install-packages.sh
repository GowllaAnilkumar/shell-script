#/bin/bash
ID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"
echo "script started excuting at $TIMESTAMP" &>> $LOGFILE
VALIDATE
    if [ $1 -ne 0]
    then
        echo -e "$2 ... $R faild $N"
    else 
    echo -e "$2 ... $G SUCESS $N"
    fi
if [ $ID -ne 0 ]
then
    echo "$R ERROR: : please run this script with root acess $N"
else
    echo "you are root user"
fi
#echo "all aguments passed: $@"
#package = to git for firstime
for package in $0
do
    yum listalled $package &>> $LOGFILE #check installed or not
    if [ $? -ne 0]
    then
        yum install $package -y &>> $LOGFILE #if not installed install package
    VALIDATE $? "installation of $package" # validate
    else
    echo -e "$package is alredy install ... $Y SKIPING $N"
    fi
done