#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"

if [ $USERID -ne 0 ]; then
    echo "Plesae run this command with root user access"  | tee -a $LOGS_FILE
    exit1
fi

   mkdir -p $LOGS_FOLDER

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