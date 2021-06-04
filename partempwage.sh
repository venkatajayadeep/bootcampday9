#!/bin/bash

attendence=$(( RANDOM%3 ))

wagePerHr=20
fulltimeHr=8
parttimeHr=4
wage=-1

isAbsent=0
isPart=1
isFull=2

case $attendence in
	0)	echo "Employee is Absent"
		wage=0
		;;
	1)  echo "Employee is Part-time"
		wage=$(($wagePerHr*$parttimeHr))
		;;
	2)	echo "Employee is Full-time"
		wage=$(($wagePerHr*fulltimeHr))
		;;
	*)	echo "Attendence Error"
esac
