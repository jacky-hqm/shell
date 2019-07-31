#!/bin/bash
# 编写脚本,显示进度条
jindu(){
while :
do
   	echo -n '#'
   	sleep 0.01
done
}
jindu &
cp -a $1 $2
kill -9  $!
echo "拷贝完成"
