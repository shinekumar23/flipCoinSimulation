<<<<<<< HEAD
#!/bin/bash
headsWon=0
tailsWon=0

echo ""

for (( i=1; i<=22; i++ ))
do
			function flipping() {
								flip=$((RANDOM%2))
								case $flip in
         									0) echo "Heads"
            									((headsWon++))
            								 	;;
         									1) echo "Tails"
            									((tailsWon++))
            									;;
								esac
			}
			flipping
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

if [ $headsWon == $tailsWon ]
then
	 echo "Flipping again to choose the winner who have acheieved a difference of minimum 2 points"
       	 while [[ $headsWon -lt $(($tailsWon+2)) && $tailsWon -lt $(($headsWon+2)) ]]
         do
					flipping
	 done
         if [ $headsWon -gt $tailsWon ]
	 then
          				echo "Heads won $headsWon times and TailsWon $tailsWon times. Heads won by a difference of 2 points-hello"
         else
            				echo "Tails won $tailsWon times and Heads Won $headsWon times. Tails won by a difference of 2 points"
	 fi
fi

=======
#!/bin/bash -x
flip=$((RANDOM%2))

case $flip in
         0) echo "Heads is the winner"
            ;;
         1) echo "Tails is the winner-new-change-new-new-heelddojjghdjjjjjjdd"
            ;;
esac
>>>>>>> 157fcc6714df15102761291bdb8bc6651dbb8f5d

