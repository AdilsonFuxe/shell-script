#!/bin/bash

#A Simple Password Generator

echo "This is a simple password generator"
echo "Please enter the length of the password"
read PASS_LENGTH
echo "Please enter How mutch password do you want generate"
read COUNT_PASS
for p in $(seq 1 $COUNT_PASS);
do
  openssl rand -hex 48 | cut -c1-$PASS_LENGTH
done