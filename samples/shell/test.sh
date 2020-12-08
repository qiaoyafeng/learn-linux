#!/bin/bash
# author： qiaoyafeng

echo "Hello World !"

num1=100
num2=100

if test $[num1] -eq $[num2]
then
    echo "两个数相等"
else
    echo "两个数不相等"
fi

a=5
b=6

result=$[a+b]  # 注意等号两边不能有空格
echo "result: $result"


# 字符串测试

num1="google"
num2="baidu"
if test $num1 = $num2
then
    echo '两个字符串相等!'
else
    echo '两个字符串不相等!'
fi


# 文件测试

cd /bin
if test -e ./bash
then
    echo "bash文件已存在!"
else
    echo "bash文件不存在!"
fi


cd /bin
if test -e ./qiaofile
then
    echo "qiaofile文件已存在!"
else
    echo "qiaofile文件不存在!"
fi


cd /bin
if test -e ./qiaofile  -o -e ./bash
then
    echo "qiaofile和bash至少有一个文件存在!"
else
    echo "qiaofile和bash两个文件都不存在!"
fi


cd /bin
if test -e ./qiaofile  -o -e ./yafengfile
then
    echo "qiaofile和yafengfile至少有一个文件存在!"
else
    echo "qiaofile和yafengfile两个文件都不存在!"
fi




