#! /bin/bash

for Device in $(cat ip.txt);do
	
	echo "-" | ping -c 3 $Device &> /dev/null
	#check device active or not

	if [ $? -eq 0 ];then
		echo "$Device is active"
	else
		echo "$Device is down"
	fi
done

