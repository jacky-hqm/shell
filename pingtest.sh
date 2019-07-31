#1/bin/bash
for i in {1..10}
do
 ping -c 2 192.168.1.$i &>/dev/null
 if [ $? -eq 0 ]
    then
  echo "192.168.1.$i is up"
  else
  echo "192.168.1.$i is down"
 fi 
done
