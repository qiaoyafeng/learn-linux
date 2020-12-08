#!/bin/bash
# author: qiaoyafeng

echo "Shell 传递参数的实例！";
echo "执行的文件名： $0";
echo "第一个参数： $1";
echo "第二个参数： $2";
echo "第三个参数： $3";

echo "参数个数为： $#";
echo "传递的参数作为一个字符串显示： $*";


echo "--- \$* demo ---"
for i in "$*";do
	echo $i
done


echo "--- \$@ demo ---"
for i in "$@";do
	echo $i
done

