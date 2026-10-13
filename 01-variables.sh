#!/bin/bash

USERID=$(id -u)

if [ "$USERID" -ne 0 ]; then
    echo "Please run this command with root user access"
    exit 1
fi

echo "You are running with root access"
