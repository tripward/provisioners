

echo "ColdFusion 11 - updating MySql 5 driver for CF"

copy C:\provisioners\MySQL\mysql-connector-java-5.1.39-bin.jar C:\ColdFusion11\cfusion\lib

net stop "ColdFusion 11 Application Server"

net start "ColdFusion 11 Application Server"
