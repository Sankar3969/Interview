USERID=$(id -u)

SCRIPTNAME=$0
echo " the script name is $SCRIPTNAME "

FNAME=$(echo $SCRIPTNAME | cut -d "." -f1)
echo "The script name is $FNAME"

FILEFOLDER="/root/log_file"
TIMESTAMP=$(date "+%F-%H-%M-%S")
LOG_FILE="$FILEFOLDER/$FNAME-$TIMESTAMP.log"

echo " the log file is $LOG_FILE"
VALIDATE(){
    if [ $USERID -ne 0 ]
    then 
    echo " user is not super user please log in with super user" | tee -a $LOG_FILE
    else
    echo " user is super user " | tee -a $LOG_FILE
    fi
}
echo "validating the user"
VALIDATE

FRUITS=("APPLE" "GRAPES" "MANGO")
while [ $i -lt ${#FRUITS[@]} ]; do
  line=${FRUITS[$i]}
  echo "THE fruits are from while: $line"
  ((i++))
done

for line in "${FRUITS[@]}"
do
echo "The fruits are from for  $line"
done 




