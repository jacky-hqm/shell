
#!/bin/bash
# 9*9 乘法表(编写 shell 脚本,打印 9*9 乘法表) 
for i in `seq 9`
do
  	for j in `seq $i`
   	do
       	echo -n "$j*$i=$[i*j]  "
   	done
    echo 
done
