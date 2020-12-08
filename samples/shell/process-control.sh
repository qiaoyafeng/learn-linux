#!/bin/bash
# author: qiaoyafeng

# if else 
echo "============== if else  ==============="

a=10
b=20
if [ $a == $b ]
then
	echo "a 等于 b"
elif [ $a -gt $b ]
then
	echo "a 大于 b"
elif [ $a -lt $b ]
then
	echo "a 小于 b"
else
	echo "没有符合的条件"
fi

num1=$[2*3]
num2=$[1+5]
if test $[num1] -eq $[num2]
then
  echo "两个数字相等"
else
  echo "两个数字不相等"
fi


echo "============== for  ==============="

for loop in 1 2 3 4 5
do
    echo "The value is $loop"
done

for str in "This is a string"
do
  echo "$str"
done

echo "============== while  ==============="

int=1
while (( $int<=5 ))
do
    echo "$int"
    let "int++"
done


echo "按下<CTRL-D>退出"
echo "输入你喜欢的网站："
while read FILM
do
  echo "是的，$FILM 是一个好网站。"
done


echo "============== until  ==============="

a=0
until [ ! $a -lt 10 ]
do
      echo "$a"
      a=`expr $a + 1`
done


echo "============== case  ==============="

echo "输入1到4之间的数字："
echo "请输入的数字："
read aNum
echo "您输入的为: $aNum"

case $aNum in
  1) echo "您选择了 1"
  ;;
  2) echo "您选择了 2"
  ;;
  3) echo "您选择了 3"
  ;;
  4) echo "您选择了4"
  ;;
  *) echo "您没有输入1至4之间的数字"
esac


echo "============== break  ==============="

while :
do
  echo -n "输入1到5之间的数字"
  read aNum
  case $aNum in
  1|2|3|4|5) echo "您输入的数字为： $aNum"
    ;;
  *) echo "您输入的数字不是1到5之间，游戏结束了"
      break
    ;;
  esac
done


echo "============== continue  ==============="

while :
do
  echo -n "输入1到5之间的数字"
  read aNum
  case $aNum in
  1|2|3|4|5) echo "您输入的数字为： $aNum"
    ;;
  *) echo "您输入的数字不是1到5之间!"
      continue
      echo "游戏结束！"
    ;;
  esac
done


echo "============== case ... esac  ==============="

site="google"
case $site in
  "baidu") echo "this is baidu"
  ;;
  "google") echo "this is google"
  ;;
  "github") echo "this is github"
  ;;
esac