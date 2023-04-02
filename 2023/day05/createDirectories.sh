#!/bin/bash
filename=$1
start=$2
end=$3
echo -e "\n Creating directories..."
for ((i=$start; i<=$end; i++))
do
mkdir ${filename}${i}
done
echo -e "\n Directories created successfully!\n"
