#! bin/bash
USERID=$(id -u)

validate(){
    echo " the stats is :  $1"
    if [ $1 -ne 0 ]
    then
    echo " mysql  is not installed ! Please installing now"
     dnf install mysql -y
     if [ $? -ne 0 ]
     then
     echo " mysql is not installes properly"
     else
     echo " mysql is installed now  "
     fi
    else 
    echo " Mysql is already installed "
    fi
}
if [ $USERID -ne 0 ]
then
echo " you don't have super user access .."
else
echo " you have the super user access......"
fi

dnf list installed mysql 
mysqlstatus=$?
echo " The  mysqlstatus is  $mysqlstatus "
validate $mysqlstatus