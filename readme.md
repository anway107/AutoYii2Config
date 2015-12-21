Automatic server configuration For Backend and Frontend
===============================
Automatic server configuration on any VPS using ubuntu 14.04

Description
-------------------
```
frontend technologies -> Yo node.js bower grunt
Backend technologies -> PHP Yii2 mysql
Version controlling -> git
Steps
1   ->  run the server_setup.sh script for installing the php5 mysql phpmyadmin and git
2   ->  run the frontend_setup.sh script for installing the node,npm,bower and grunt
3   ->  run the yii2_setup.sh script for configuring a git project directly on the server
```
Parameters For yii2_setup.sh
-------------------
```
#$1 git repository path
#$2 Project name
#$3 git branch
#$4 db username
#$5 db password
#$6 db db name
#$7 database file name Database file should be present in the project folder
```
Example for yii2_setup.sh
-------------------
```
#sudo ./yii2_setup.sh http://git.iauro.com/check/check.git check staging root mypassword mydb_name mydb_file
```

Author
-------------------
```
Anway Kulkarni
```
