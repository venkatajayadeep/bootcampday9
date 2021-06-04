#!/bin/bash
isPresent=$(( RANDOM%2 ))
wagePerHr=20
fulldayHr=8

if [[ $isPresent -eq 1 ]]; then
	echo "Employee is Present"
else
	echo "Employee is Absent"
fi

fulldayWage=$(($wagePerHr*fulldayHr)
