#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Plesae run this command with root user access"
    exit1
fi

 VALIDATE(){

    if [ $? -ne 0 ]; then
           echo "installing nginx...failure"
           exit1
       else
           echo "installing nginx...success"
    fi
 }

 dnf install nginx -y
 VALIDATE $? "Installing Nginx"

 dnf install mysql -y
 VALIDATE $? "Installing MySQL"

 dnf install nodejs -y
 VALIDATE $? "Installing Node.js"