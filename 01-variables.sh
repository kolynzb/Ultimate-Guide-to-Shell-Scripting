#! /usr/bin/bash

#variable_name=variable_value
#-there should be no space on either side of the assignmeant operator and the variable name should be in capitals

NAME="eMPLOYEE nAME"

#TO call a variable use $
echo $NAME

#the variable can be made read only
readonly NAME

#unsetting and deleting (removes the variables from those that the shell tracks )
unset NAME
echo $NAME 

#SPECIAL variables -refered for specific funtions
#$0 -filename of the script
#$1....9 -these corresspond with arguments with which a script is invoked
#$# -number of arguments applied to a script
#$* -all arguments that are double-quoted
#$@ -all arguments that are  individually double-quoted
#$? - exit status of last command executed 0-successful 1-failed 
#$$ -procees number of the current shell  for the shell script

echo "File name:$0" #  File name:01-variables
echo "First  Parameter:$1" # First  Parameter:Kolynz 
echo "Second Parameter:$2" # Second Parameter:Man
echo "Quoted Values:$@" # Quoted Values:Kolynz Man
echo "Quoted Values:$*" #Quoted Values:Kolynz Man
echo "No of Parameters:$#" #2

# to test the above run ./01-variables.sh Kolynz Man
# also run ./01-variables.sh "Kolynz Man"
# also run ./01-variables.sh "Kolynz" "Man"