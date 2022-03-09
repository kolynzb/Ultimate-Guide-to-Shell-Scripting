#! /usr/bin/bash 

# Define function
Hello(){
    echo "Hello learner"
}

# invoke function
Hello

# with parameters
HelloTwo(){
    echo "Hello $1  $2"
}


HelloTwo Kolynz Benda

HelloThree(){
     echo "Hello $1  $2"
     return 10
}

HelloThree Kolynz Benda

# capture value that was previously returned 
ret=$?
echo "Return value is $ret"



# Recurssive Functions

number_one () {
    echo "Alpha nline ....over"
    number_two 
}

number_two () {
    echo "Beta nline ....over"
}

number_one