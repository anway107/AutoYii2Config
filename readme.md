Automatic server configuration
===============================
script for configuring the ubuntu server install all the needed things and setup yii2

Author
-------------------
```
Anway Kulkarni
```


Description
-------------------
```
First run the server_setup.sh script on the server and then run the yii2_setup.sh script
```

Parameters
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
Example
-------------------
```
#sudo ./yii2_setup.sh http://git.iauro.com/check/check.git check staging root mypassword mydb_name mydb_file
```
