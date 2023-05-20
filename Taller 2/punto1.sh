#!/bin/bash

mkdir folder
cd folder

touch archivo1.txt
touch archivo2.txt

echo "1 2 3 4 5" > archivo1.txt
echo "10 4 73 40 100" > archivo2.txt

echo "Archivos:"
ls -l
cat archivo1.txt
cat archivo2.txt
