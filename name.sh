while :
do
line=`cat user.txt |wc ‐l`
num=$[RANDOM%line+1]
sed -n "${num}p"  user.txt
sleep 0.2
clear
done
