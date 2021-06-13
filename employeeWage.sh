#!/bin/bash -x
declare -a arr
echo "Welcome to Employee wages"
random=$((RANDOM%2))
if [ $random -eq 0 ]
then
	echo "Employee is present"
else
	echo "Employee is absent"
fi

PerHourWage=20
#FullDayHour=8
#PartTimeHour=8
WorkingPerMonth=20

function WorkingHours()
{
	read -p "Enter the working hours for full time :" FullDayHour
	read -p "Enter the working hours for paat time :" PartTimeHour
}

WorkingHours

echo "Enter 1 to check for full time employee wages"
echo "Enter 2 to check for part time employee wages"
read n
case $n in

	1)	if [ $FullDayHour -le 8 ] && [ $WorkingPerMonth -le 20 ]
		then
			EmployeeWage=$(($PerHourWage*$FullDayHour))
			echo "Full time employee per day wage is $EmployeeWage"
			FullTimeWagesPerMonth=$(($WorkingPerMonth*$EmployeeWage))
			echo "Full time employee per month wage is $FullTimeWagesPerMonth"
		arr[i]=$EmployeeWage
		fi
		echo ${arr[@]} ;;


	2)	if [ $PartTimeHour -le 8 ] && [ $WorkingPerMonth -le 20 ]
		then
		PartTimeEmployeeWage=$(($PerHourWage*$PartTimeHour))
		echo "part time employee per day wage is $PartTimeEmployeeWage"
		PartTimeWagesPerMonth=$(($WorkingPerMonth*$PartTimeEmployeeWage))
		echo  "Part time employee wage per month is $PartTimeWagesPerMonth"
		fi ;;

	*)	echo "Enter correct number" ;;
esac

