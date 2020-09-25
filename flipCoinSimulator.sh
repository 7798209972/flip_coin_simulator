#!/bin/bash

#Welcome Message
echo "Welcome to Flip Coin Simulation Problem";
echo "=======================================";
printf "\n";

#Declaring Counter Variable
head_count=0;
tail_count=0;


#Using Random Function for Hetting head or Tail
flip=$(( RANDOM %2+1 ));

#Checking Head or Tail

if [ $flip -eq 1 ]
then
     echo "Head " ;
     (( head_count ++ ));
else
     echo  "Tail " ;
     (( tail_count ++ ));
fi
