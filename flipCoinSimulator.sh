#!/bin/bash

#Welcome Message
echo "Welcome to Flip Coin Simulation Problem";
echo "=======================================";
printf "\n";

#Declaring Counter Variable
head_count=0;
tail_count=0;
count=0;

while [[ $(( count )) -lt 11 ]]
do
	#Random function for getting Head or Tail
        flip=$(( RANDOM %2+1 ));

	#Checking Head or Tail

        if [ $flip -eq 1 ]
        then
                echo "Head " ;
		#increasing head counter
                (( head_count ++ ));
        else
                echo  "Tail " ;
		#increasing tail counter
                (( tail_count ++ ));
        fi

	#increasing loop counter
	(( count ++ ));
done


#Displaying number of times Head or Tail has won
printf "\n";
echo "$head_count times Head & $tail_count times Tail"
