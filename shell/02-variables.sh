#! bin/bash

PARAM1="SANKAR"
PARAM2="JUVVA"

echo " The Name is ${PARAM1}"
echo " The surname is $PARAM2"

NAME=$1
SURNAME=$2

echo " Read the values from cmd line "
read username
echo " UserName is :: $username "

echo " Read the password from cmd line "
read -s password
echo " the password is ${password}"

CARDS=("CREDIT" "DEBIT" "FOREX")
echo " THE CARDS ARE  ${CARDS[0]} "
echo " THE CARDS ARE  ${CARDS[1]} "
echo " THE CARDS ARE  ${CARDS[2]} "