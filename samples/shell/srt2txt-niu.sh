#!/bin/bash


set -x
srt_to_txt()
{
srt_file_path=$1

srt_file_name=$(basename "$srt_file_path" .srt)
srt_dir_path=$(dirname "$srt_file_path")


txt_file_path="$srt_dir_path/$srt_file_name.txt"
sed -r '/^[0-9]+$/{N;d}' "${srt_file_path}" > "$txt_file_path"

}
srt_paths=()
declare -a srt_paths
while IFS=  read -r -d $'\0'; do
    srt_paths+=("$REPLY")
done < <(find . -name "*.srt" -print0)

# for (vp in srt_paths); do
#     srt_to_txt "$vp"
# done

num=$(($(find . -name "*.srt" | wc -l)-1))
for ((i=0; i<=num; i++)); do
    srt_to_txt "${srt_paths[$i]}"
done
