isPresent=$((RANDOM%3));
perHourSalary=20;
workingHour=0;
NumberofWorkingDay=20;

for (( day = 0; day <=NumberofWorkingDay; day++ )); do

  if [ $isPresent -eq 0 ]
  then
  	echo "Employee is absent";
  	workingHour=0;
  elif [ $isPresent -eq 1 ]
  then
  	echo "Employee is present";
  	workingHour=8;
  else
  	echo "Employee is working as part time";
  	workingHour=4;
  fi

done

while [[ $day -le 20 && $totalWorkingHour -lt 40 ]]
do
	wHour=$(calculateWorkingHour $((RANDOM%3)));
	totalWorkingHour=$(($totalWorkingHour + $wHour));
	if [ $totalWorkingHour -gt 40 ]
	then
		totalWorkingHour=$(($totalWorkingHour - $wHour));
		break;
	fi
	salary=$(($perHourSalary * $workingHour));
	totalSalary=$(($totalSalary + $salary));
	((day++));

done