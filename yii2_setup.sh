#!/usr/bin/env bash
#Configuring project on new machine
#$1 git repository path
#$2 Project name
#$3 git branch
#$4 db username
#$5 db password
#$6 db db name
#$7 database file name

echo "adding the root permissions"
sudo chmod 777 -R .

echo "cloning the git repository"
sudo git clone -b $3 --single-branch $1
sudo chmod 777 -R .

cd $2
sudo chmod 777 -R .

sudo composer update
echo "Composer is updating"

sudo php init

echo "adding the root permissions"

sudo chmod 777 -R .

echo "dumping the sql file into database"
mysql -u  "$4"  "-p$5"  -e "drop database IF EXISTS $6";
mysql -u  "$4"  "-p$5"  -e "create database $6";
mysql -u  "root"  "-piauro100"  $6 < $7

#sudo ./yii2_setup.sh git_url project_name git_branch db_user db_pass db_name db_dump_file
