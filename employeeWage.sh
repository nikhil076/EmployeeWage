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

EmployeeWage=$(($PerHourWage*$FullDayHour))
echo "Full time employee wage is $EmployeeWage"

PartTimeHour=8

PartTimeEmployeeWage=$(($PerHourWage*$PartTimeHour))
echo "part time employee wage is $PartTimeEmployeeWage"
