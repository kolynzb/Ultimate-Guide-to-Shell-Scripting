#! /usr/bin/bash

# for loop
for var in 0 1 2 3 4 5 6 7 8 9 10 11
do 
 echo $var
done

# while loop
a=0
while [$a -lt 10] 
do 
  echo $a
  a=`expr $a + 1`
done

#unitl command
until [! $a -lt 10] #until your a is less than 230 or until condition is true
do 
 echo $a
done 


# nested loops
while [$a -lt 10] #this is loop 1 
do 
  b="$a"
  while ["$b" -ge 0] #second loop
  do 
    echo -n "$b"
    b=`expr $b - 1`
  done
  echo
  a=`expr $a + 1`
done

# infinite loop
# a=10
# until [$a -gt 0]
# do 
#     echo $a
#     a=`expr $a + 1`
# done

# break --will the loop
a=0
while [$a -lt 10] 
do 
  echo $a
  if [ $a -eq 5 ]
  then
     break
  fi
  a=`expr $a + 1`
done

# continue -- will exit current iteration
NUMS="1 2 3 4 5 6 7 8 9"

for NUM in $NUMS
do 
    Q=`expr $NUM %2`
    if [ $Q -eq 0 ]
    then
        echo "Number is an even number"
        continue
    fi
    echo "Found odd Number"
done