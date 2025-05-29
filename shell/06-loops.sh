USERID=$(id -u)

SCRIPTNAME=$0
echo " the script name is $SCRIPTNAME "

FNAME=$(echo $SCRIPTNAME | cut -d "." -f1)
echo "The script name is $FNAME"

VALIDATE(){
    if [ $USERID -ne 0 ]
    then 
    echo " user is not super user please log in with super user"
    else
    echo " user is super user "
    fi
}
echo "validating the user"
VALIDATE



