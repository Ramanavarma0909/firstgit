#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Plesae run this command with root user access"
    exit1
fi


echo "Installing nginx"
dnf install nginx -y

if [ $? -ne 0 ]; then
   echo "installing nginx...failure"
   exit1
else
   echo "installing nginx...success"
 fi

