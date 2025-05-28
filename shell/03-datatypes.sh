# !bin/bash
DATE=$(date "+%F")

echo " THE today date is $DATE"

echo " enter the Number1 "
read Number1

echo " enter the Number2 "
read Number2 

SUM=$(($Number1+$Number2))

echo " This is the sum of numbers $SUM "