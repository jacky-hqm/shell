i#!/bin/bash
# 编写脚本,实现人机<石头,剪刀,布>游戏
game=(石头 剪刀 布)
num=$[RANDOM%3]
computer=${game[$num]}
# 通过随机数获取计算机的出拳
# 出拳的可能性保存在一个数组中,game[0],game[1],game[2]分别是 3 中不同的可能
echo $num 
echo "请根据下列提示选择您的出拳手势"
echo "0.石头"
echo "1.剪刀"
echo "2.布"
 
while :
 do
  read -p "请选择 0‐2:" person


case  $person  in
0)
  if [ $num -eq 0 ]
  then
    echo "平局"
    elif [ $num -eq 1 ]
    then
      echo "你赢"
  else
    echo "计算机赢"
  fi
  echo $num
  exit;;
  
1)   
  if [ $num -eq 0 ]
  then
    echo "计算机赢"
    elif [ $num -eq 1 ]
    then
      echo "平局"
  else
    echo "你赢"
  fi
  echo $num
  exit;;
  
2)
  if [ $num -eq 0 ]
  then
    echo "你赢"
    elif [ $num -eq 1 ]
    then
      echo "计算机赢"
  else
    echo "平局"
  fi
  echo $num
  exit;;
  
*)
  echo "必须输入 1‐3 的数字"
esac
done
