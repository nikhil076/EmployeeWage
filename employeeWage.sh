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
echo $EmployeeWage
