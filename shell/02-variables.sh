#! bin/bash
Person1='Sankar'
Person2='juvva'

Name=$Person1
Surname=$Person2
echo " The Person Name is :: ${Person1} "
echo  " The Person surname is $Person2  "


echo 'Read the person name is from command prompt'
read Person3

echo "The Third person Name is $Person3"

echo 'Read the Third person surname name without visable'

read -s surname

echo " the Third person surname is $surname "

FRUITS=("APPLE" "GRAPES")
echo " The fruits Names are ${FRUITS[0]}"
echo " The fruits Names are ${FRUITS[1]}"
echo " The fruits Names are ${FRUITS[@]}"


