#! /bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m

SOURCE_DIR=$1
DEST_DIR=$2
DAYS=${3:-14} #if user is not providing number of days, we are taking 14 as default

SOURCE_DIR="/home/ec2-user/app-logs"

LOGS_FOLDER="/home/ec2-user/shell-script-logs"
LOG_FILE=$(echo $0 | cut -d "." -f1)
TIMESTANP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE_NAME="$LOGS_FOLDER/$LOG_FILE=$TIMESTANP.log"

VALIDATE(){
if [$1 -ne 0]
then
    echo -e "$2 ...$R FAILURE $N"
    exit1
    else 
        echo -e "$2 ... $G SUCCESS $N"
        fi
}

USAGE(){
      echo -e "$R USAGE:: $N sh 18-backup.sh <SOURCE_DIR> <DEST_DIR> <DAYS(Optional)>"
      exit1
      }
}




