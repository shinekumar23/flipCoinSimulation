#!/bin/bash -x
headsWon=0
tailsWon=0

for (( i=1; i<=22; i++ ))
do
			flip=$((RANDOM%2))
			case $flip in
         				0) echo "Heads is the winner"
            				((headsWon++))
            				;;
         				1) echo "Tails is the winner"
            				((tailsWon++))
            				;;
			esac
done
if [ $headsWon -gt $tailsWon ]
then
               echo "Heads Won by $(($headsWon-$tailsWon)) points"
elif [ $tailsWon -gt $headsWon ]
then
               echo "Tails Won by $(($tailsWon-$headsWon)) points"
else
               echo "Its a tie. Both have $headsWon points"
fi 


 





