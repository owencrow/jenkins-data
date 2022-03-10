#!/bin/bash

counter=0

while [ $counter -lt 50 ]; do
  let counter=counter+1

  name=$(sed -n "$counter"p people.txt | awk -F, '{print $1}')
  lastname=$(sed -n "$counter"p people.txt | awk -F, '{print $2}')
  age=`shuf -i 20-25 -n 1`


  mysql -u root -p1234 people -e "insert into register values ($counter, '$name', '$lastname', $age)"
  echo "$counter, $name $lastname, $age entered"
done
