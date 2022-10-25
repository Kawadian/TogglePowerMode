read -s -p "パスワードを入力" password
#毎度打つのが面倒な場合は↑をコメントアウトor削除して↓のコメントアウトを消す
#password="パスワードをここに置き換える"
status="`pmset -g |grep lowpowermode`"
status="`echo $status | tr -d ' '`"
LowPower="lowpowermode1"
Performance="lowpowermode0"
if [ $status = "$LowPower" ]; then
    echo $password | sudo -S pmset -a lowpowermode 0 > /dev/null 2>&1
    echo "\n低電力モードがオフになりました"
elif [ $status = "$Performance" ]; then
    echo $password | sudo -S pmset -a lowpowermode 1 > /dev/null 2>&1
    echo "\n低電力モードがオンになりました"
fi