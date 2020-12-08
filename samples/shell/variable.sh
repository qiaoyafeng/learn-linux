#!/bin/bash

your_name="Qiao Yafeng"
echo $your_name
echo ${your_name}

for skill in Java Python Coffe; do
	echo "I am good at ${skill}Script"
done

your_name="tom"
echo $your_name
your_name="alibaba"
echo $your_name

myUrl="https://www.google.com"
readonly myUrl
myUrl="https://www.baidu.com"


myUrl="https://www.runoob.com"
unset myUrl
echo $myUrl

str='this is a string'

your_name='qiao yafeng'
str="Hello, I know you are \"$your_name\"! \n"
echo -e $str

your_name="qiaoyafeng"
#使用双引号拼接
greeting="hello, "$your_name" !"
greeting_1="hello, ${your_name} !"
echo $greeting $greeting_1
#使用单引号拼接
greeting_2='hello, '$your_name' !'
greeting_3='hello, ${your_name} !'
echo $greeting_2 $greeting_3

string="abcd"
echo ${#string}

string="runoob is a great site"
echo ${string:1:5}

echo `expr index "$string" io`


array_name1=(value0 value1 value2 value3)
array_name2=(
	valueA
	valueB
	valueC
	valueD
	valueE
	valueF
	)

echo ${array_name1[2]}	
echo ${array_name2[3]}

echo ${array_name1[@]}
echo ${array_name2[@]}

# 获取数组元素的个数 @符号
a1_length=${#array_name1[@]}
echo ${a1_length}

# 获取数组元素的个数 *符号
a2_length=${#array_name2[*]}
echo ${a2_length}

# 获取数组单个元素的长度
a1_2_length=${#array_name1[2]}
echo ${a1_2_length}


# 多行注释

#--------------------------------------------
# 这是一个注释
# author：菜鸟教程
# site：www.runoob.com
# slogan：学的不仅是技术，更是梦想！
#--------------------------------------------
##### 用户配置区 开始 #####
#
#
# 这里可以添加脚本描述信息
#
#
##### 用户配置区 结束  #####

:<<EOF
注释1
注释2
注释3
注释4
EOF

:<<!
注释内容1 。。。
注释内容2 。。。
注释内容3 。。。
。。。
注释内容n 。。。
!
