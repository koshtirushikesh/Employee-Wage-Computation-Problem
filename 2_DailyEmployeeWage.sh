isPresent=$((RANDOM%3));
perHourSalary=20;

if [ $isPresent -eq 0 ]
then
	echo "Employee is absent";
	workingHour=0;
else [ $isPresent -eq 1 ]
	echo "Employee is present";
	workingHour=8;
fi
salary=$(($perHourSalary * $workingHour));
echo "Employee has earned $salary $ today";


