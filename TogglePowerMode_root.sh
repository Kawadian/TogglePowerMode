status="`pmset -g |grep lowpowermode`"
status="`echo $status | tr -d ' '`"
LowPower="lowpowermode1"
Performance="lowpowermode0"
if [ $status = "$LowPower" ]; then
    pmset -a lowpowermode 0 > /dev/null 2>&1
    echo "低電力モードがオフになりました"
elif [ $status = "$Performance" ]; then
    pmset -a lowpowermode 1 > /dev/null 2>&1
    echo "低電力モードがオンになりました"
fi