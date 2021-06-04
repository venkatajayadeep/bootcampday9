#!/bin/bash

wagePerHr=20
fullHr=8
partHr=4
wage=0

isAbsent=0
isPart=1
isFull=2
day=1
totalHrs=0

while [[ $day -le 20 ]]; do
	attendence=$((RANDOM%3))

	case $attendence in
	0)	wage=$(($wage+0))
		totalHrs=$(( $totalHrs+0 ))
		;;
	1)  wage=$(( $wage+ ($wagePerHr*$partHr) ))
		totalHrs=$(( $totalHrs+$partHr ))
		;;
	2)	wage=$(( $wage+ ($wagePerHr*$fullHr) ))
		totalHrs=$(( $totalHrs+$fullHr ))
		;;
	*)	echo "Attendence Error"
	esac

	if [[ $totalHrs -eq 100 ]]; then
		break
	fi
	((day++))
done

echo "Days = $day"
echo "Hours = $totalHrs"

echo "Wage for a month(i.e. 20 days or 100 hrs) = $wage"
