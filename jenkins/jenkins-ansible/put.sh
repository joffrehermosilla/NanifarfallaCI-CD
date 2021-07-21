#!/bin/bash

counter=0

while [ $counter -lt 50 ]; do
	let "counter = counter+1"
	
    name=$(nl people.txt |grep -w $counter |awk '{print $4 " " $5}')
	apellido=$(nl people.txt |grep -w $counter | awk '{print $2 " " $3}')
	edad=$(shuf -i 20-25 -n1)

mysql -u root -p1234 people -e "insert into registro values ($counter, '$name', '$apellido', $edad)"

echo "$counter, $name ,$apellido, $edad se importaron correctamente"
sleep 7

done