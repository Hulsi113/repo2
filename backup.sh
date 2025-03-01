#! /bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m

SOURCE_DIR=$1
DEST_DIR=$2
DAYS=${3:-14} #if user is not providing number of days, we are taking 14 as default


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
echo -e "$R USAGE:: $N sh ./backup.sh \<SOURCE_DIR\> \<DEST_DIR\> \<DAYS(Optional)\>"

     exit 1
    
}


mkdir -p /home/ec2-user/repo2-logs/

if [$# -lt 2]
then 
    USAGE
fi
if [! -d $SOURCE_DIR]
then
   echo -e "$SOURCE_DIR Does not exist...Please check"
   exit 1
   fi
if [! -d $DES_DIR]
then
   echo -e "$SOURCE_DIR Does not exist...Please check"
   exit 1
   fi

echo "Script started executing at: $TIMESTAMP" &>>$LOG_FILE_NAME




