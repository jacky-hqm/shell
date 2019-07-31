#!/bin/bash
# 编写脚本测试 192.168.4.0/24 整个网段中哪些主机处于开机状态,哪些主机处于关机
# 状态(多进程版)
 
#定义一个函数,ping 某一台主机,并检测主机的存活状态
myping(){
ping -c 2 -i 0.3 -W 1000 $1  &>/dev/null
if  [ $? -eq 0 ];then
	echo "$1 is up"
else
	echo "$1 is down"
fi
}
for i in {1,20,3,40,50,4,5}
do
   	myping 10.20.224.$i &
done
# 使用&符号,将执行的函数放入后台执行
# 这样做的好处是不需要等待ping第一台主机的回应,就可以继续并发ping第二台主机,依次类推。

