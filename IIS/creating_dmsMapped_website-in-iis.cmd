@echo off

echo Creating app pool...
C:\Windows\System32\inetsrv\appcmd.exe add apppool /name:dmswebsite /managedRuntimeVersion:v4.0 /managedPipelineMode:Integrated

echo Creating website...
C:\Windows\System32\inetsrv\appcmd.exe add site /name:dmswebsite /physicalPath:\\localhost\dms_mapped_share /bindings:http/*:80:
C:\Windows\System32\inetsrv\appcmd.exe set app "dmswebsite/" /applicationPool:"dmswebsite"

echo dmswebsite is created. You can acces it by url http://127.0.0.1:80/
