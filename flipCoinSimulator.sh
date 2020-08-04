#!/bin/bash -x
headsWon=0
tailsWon=0

for (( i=1; i<=10; i++ ))
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
echo "Heads Won $headsWon times"
echo "Tails Won $tailsWon times"
 





