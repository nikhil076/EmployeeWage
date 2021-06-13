echo "Welcome to Employee wages"
random=$((RANDOM%2))
if [ $random -eq 0 ]
then
	echo "Employee is present"
else
	echo "Employee is absent"
fi

PerHourWage=20
FullDayHour=8
PartTimeHour=8
WorkingPerMonth=20

echo "Enter 1 to check for full time employee wages"
echo "Enter 2 to check for part time employee wages"
read n
case $n in

	1)	EmployeeWage=$(($PerHourWage*$FullDayHour))
		echo "Full time employee per day wage is $EmployeeWage"
		FullTimeWagesPerMonth=$(($WorkingPerMonth*$EmployeeWage)) 
		echo "Full time employee per month wage is $FullTimeWagesPerMonth" ;;


	2)	PartTimeEmployeeWage=$(($PerHourWage*$PartTimeHour))
		echo "part time employee per day wage is $PartTimeEmployeeWage"
		PartTimeWagesPerMonth=$(($WorkingPerMonth*$PartTimeEmployeeWage))
		echo  "Part time employee wage per month is $PartTimeWagesPerMonth" ;;

	*)	echo "Enter correct number" ;;
esac

