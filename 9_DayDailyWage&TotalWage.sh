isPresent=$((RANDOM%3));
perHourSalary=20;
workingHour=0;
NumberofWorkingDay=20;
totalSalary=0;


for (( day = 1; $day <=$NumberofWorkingDay; day++ )); do

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
  echo $day;
  salary=$(($perHourSalary * $workingHour));
  echo "Employee has earned $salary $ on this $day ";
  dailysalary=$salary;
  totalSalary=$(($totalSalary + $salary));
  
done

