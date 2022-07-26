#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=20
numOfWorkDays=20
maxRateInMonth=100
totalEmpHr=0
totalWrkDays=0


function getWorkHour()
{
        case $randomCheck in
                                $isPartTime)
                                        empHrs=4
                                ;;
                                $isFullTime)
                                        empHrs=8
                                ;;
                                *)
                                        empHrs=0
                                ;;
	esac
}

function getEmpWage()
{
	echo $(($totalEmpHr*$empRatePerHr))
}
while [[ $totalEmpHr -lt $maxRateInMonth && $totalWrkDays -lt $numOfWorkDays ]]
do
        ((totalWrkDays++))
        randomCheck=$((RANDOM%3))
        getWorkHour $randomCheck
        totalEmpHr=$(($totalEmpHr+$empHrs))
	dailyWages[$totalWrkDays]=$(($empHrs*$empRatePerHr))
done

	totalSalary=$( getEmpWage $totalEmpHr )
	echo ${dailyWages[@]}
