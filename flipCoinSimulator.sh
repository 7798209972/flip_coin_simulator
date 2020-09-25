#!/bin/bash

#Welcome Message
echo "Welcome to Flip Coin Simulation Problem";
echo "=======================================";
printf "\n";

#Declaring Counter Variable
head_count=0;
tail_count=0;

#Looping for Either Head or Tail Won by 21 Times

while [[ $(( head_count )) -le 21 || $(( tail_count )) -le 21 ]]
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

done


#Displaying number of times Head or Tail has won
if [ $head_count -eq $tail_count ]
then

	echo "OOps..! Game gone Tie : "$head_count"="$tail_count;
elif [ $head_count -gt $tail_count ]
then

	echo "Congratulations ..! Head Won by "$head_count" times";
else

	echo "Congratulations ..! Tail Won by "$tail_count" times";
fi
