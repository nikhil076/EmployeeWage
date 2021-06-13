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

echo "Enter 1 to check for full time employee wages"
echo "Enter 2 to check for part time employee wages"
read n
case $n in

	1)	EmployeeWage=$(($PerHourWage*$FullDayHour))
		echo "Full time employee wage is $EmployeeWage" ;;


	2)	PartTimeEmployeeWage=$(($PerHourWage*$PartTimeHour))
		echo "part time employee wage is $PartTimeEmployeeWage" ;;

	*)	echo "Enter correct number" ;;
esac
