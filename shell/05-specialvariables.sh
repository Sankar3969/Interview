echo "the all variables that passed to script $@ "
echo " The result of linux command $? "
echo " The present script name is $0 "
echo " The present working directory is $PWD "
echo " the home directory of the present user $HOME "
echo " the present script process id $$ "
sleep 100 &
echo " the process id of the last backgrond process $! "  

