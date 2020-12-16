#!/bin/bash
# author: qiaoyafeng


echo "============== srt2txt start  ==============="


function srt2txt()
{
	#echo `cat "$1"`
	echo "$1"
	echo "Basename=========   " $(basename "$1")
	echo "Filename=========   " $(basename "$1" .srt)
	echo "Dirname=========   " $(dirname "$1")
	#echo `cat "$1"` > "$(basename "$1" .srt).txt"
}


srt_array=()
count=0
while read line
do
    echo $line
	srt_array[count]="$line"
	
done < <(find . -iname "*.srt")

echo "srt_array====" $srt_array

num=$(($(find . -iname "*.srt" | wc -l)-1))
for ((i=0; i<=num; i++)); do
    srt2txt "${srt_array[$i]}"
done




echo "============== srt2txt end  ==============="


