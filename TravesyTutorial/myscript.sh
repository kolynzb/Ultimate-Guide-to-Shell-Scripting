#! /usr/bin/bash 

#ECHO COMMAND
echo Hello World

#VARIABLES
#Uppercase By Convention with only letters underscore and numbers
NAME="Collins"
echo "My name is $NAME"
#OR
echo "My name is ${NAME}"

#USER INPUT 
read -p "Enter your Age in years: " AGE
echo "$NAME is $AGE years old"

#Conditionals
if ["$NAME" == "Brad"]
then
  echo "My name is ${NAME}"
fi

#IF else 
if ["$NAME" == "Brad"]
then
  echo "My name is ${NAME}"
else 
  echo "My name is not maclister"
fi
  
#else if (elif) 
if ["$NAME" == "Brad"]
then
  echo "My name is ${NAME}"
elif ["$NAME" == "jack"]
then 
	echo"Name aint interesting"
else 
  echo "My name is not maclister"
fi

#COMPARISON
NUM1=3
NUM1=5
if ["$NUM1" -gt  "$NUM2"]
then
  echo "Num 1 is greater than num 2"
fi

#FILE CONDITONS 
FILE="test.txt"
if [-f "$FILE"]
then 
	echo"$FILE is a file"
else
	echo"$FILE is not  a file"

