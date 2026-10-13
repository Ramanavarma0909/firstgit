#!/bin/bash

USERID=$(id -u)

if [ "$USERID" -ne 0] then
    echo "Plesae run this command with root user access"
    exit1
fi

    echo "You are running with root access"

