USERID=$(id -u)

VALIDATE(){
    if [ $USERID -ne 0 ]
    then
    echo " user is not superuser"
    else
    echo " this is super user"
    fi
}
 
echo "validating the super user"
VALIDATE


dnf list installed mysql_server
mysqlstatus=$?;
echo "mysql server status is $mysqlstatus "

if [ $mysqlstatus -ne 0 ]
then
echo "mysql server not installed "
else
echo "mysql server is already installed "
fi