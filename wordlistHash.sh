#!/bin/bash


echo "Which wordlist do you want to hash?"
read preHash

echo "What would you like to call the hashed file?"
read newFile

lines=$(cat $preHash)

for line in $lines
do
        echo $line | md5sum >> $newFile

done

