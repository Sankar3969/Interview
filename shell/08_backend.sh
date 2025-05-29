#! bin/bash
USERID=$(id -u)
VALIDATE(){
    if [ $USERID -ne 0 ]
    then
    echo " user is not superuser"
    exit 1
    else
    echo " this is super user"
    fi
}
INSSTATUS(){
    if [ $1 -ne 0 ]
    then
    echo " $2 is not completed properly"
    exit 1
    else
    echo " $2 is completed successfully "
    fi
}
VALIDATE_INSTALLATION(){
dnf list installed $1
status=$?;
echo "$1 status is $status "

if [ $status -ne 0 ]
then
echo "mysql server not installed!  going to install"

dnf install $1 -y

INSSTATUS $? $1
else
echo "$1 is already installed "
fi
}
echo "validating the super user"
VALIDATE

dnf module disable nodejs -y
INSSTATUS $? "nodejs disable"

dnf module enable nodejs:20 -y
INSSTATUS $? "nodejs enable"

dnf install nodejs -y
INSSTATUS $? "nodejs Installation"

useradd expense
INSSTATUS $? "userAdded"



