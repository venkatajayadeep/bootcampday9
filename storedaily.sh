#! /bin/bash
declare -A arr
wagePerHr=20
fullHr=8
partHr=4
wage=0
dailywage=0

isAbsent=0
isPart=1
isFull=2
day=0
totalHrs=0

function wageHrs(){
	local hrs=0
	if [[ $attendence -eq 0 ]]; then
		hrs=$(( $1+0 ))
		echo $hrs
	elif [[ $attendence -eq 1 ]]; then
		hrs=$(( $1+$partHr ))
		echo $hrs
	elif [[ $attendence -eq 2 ]]; then
		hrs=$(( $1+$fullHr ))
		echo $hrs
	fi
}

while [[ $day -lt 20 ]]; do
	attendence=$((RANDOM%3))

	case $attendence in
	0)	wage=$(($wage+0))
		dailywage=0
		;;
	1)  wage=$(( $wage+ ($wagePerHr*$partHr) ))
		dailywage=$(($wagePerHr*$partHr))
		;;
	2)	wage=$(( $wage+ ($wagePerHr*$fullHr) ))
		dailywage=$(($wagePerHr*$fullHr))
		;;
	*)	echo "Attendence Error"
	esac
	arr["Day "$day]=$dailywage 
	totalHrs=`wageHrs $totalHrs`

	if [[ $totalHrs -eq 100 ]]; then
		break
	fi
	((day++))
done

echo "Days = $day"
echo "Hours = $totalHrs"
echo "Daily wages for 1 Month are: "
echo ${!arr[@]}
echo ${arr[@]}
echo "Wage for a month(i.e. 20 days or 100 hrs) = $wage"
