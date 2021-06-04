#! /bin/bash 
present=0
absent=1
randomnum=$((RANDOM%2))
if [ $randomnum -eq $present ]
then
	echo "present"
elif [ $randomnum -eq $absent ]
then
	echo "absent"
else
	echo "nothing"
fi
