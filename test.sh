stty -echo
read -p "put" a
stty echo
a=${a:-123456}
echo $a
