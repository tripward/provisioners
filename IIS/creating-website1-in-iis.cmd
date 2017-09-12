@echo off

echo Creating app pool...
C:\Windows\System32\inetsrv\appcmd.exe add apppool /name:website1 /managedRuntimeVersion:v4.0 /managedPipelineMode:Integrated

echo Creating website1...
C:\Windows\System32\inetsrv\appcmd.exe add site /name:website1 /physicalPath:\\localhost\website1_share /bindings:http/*:80:
C:\Windows\System32\inetsrv\appcmd.exe set app "website1/" /applicationPool:"website1"

echo website1 is created. You can acces it by url http://127.0.0.1:80/
