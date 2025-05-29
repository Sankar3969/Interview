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
 
echo "validating the super user"
VALIDATE

dnf list installed mysql-server
mysqlstatus=$?;
echo "mysql server status is $mysqlstatus "

if [ $mysqlstatus -ne 0 ]
then
echo "mysql server not installed!  going to install"

dnf install mysql-server -y

INSSTATUS $? "mysql_server"
else
echo "mysql server is already installed "
fi

systemctl enable mysqld
INSSTATUS $? "mysqld enabled"

systemctl start mysqld
INSSTATUS $? "mysqld start"

mysql_secure_installation --set-root-pass ExpenseApp@1
INSSTATUS $? "mysql password setting done successfully"
