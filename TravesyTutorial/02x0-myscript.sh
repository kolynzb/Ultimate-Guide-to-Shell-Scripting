#! /usr/bin/bash 
	#CASE STATEMENT

read -p "Are you 21 and over? Y/N" ANSWER 
case "$ANSWER" in 
  [yY] | [yY] [eE] [sS])
    echo "You can have a beer :)"
    ;;
  [nN] | [nN] [oO])
    echo "No driking :("
    ;;
  *)    
    echo "Please Enter y/yes or n/no" 
    ;;
esac

#for loop
