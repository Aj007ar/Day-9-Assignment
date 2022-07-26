#!/bin/bash

isPresent=1
randomCheck=$((RANDOM%2))

if [ $isPresent -eq $randomCheck ]
then
        echo "Emplyee is present"
else
        echo "Employee is absent"
fi
