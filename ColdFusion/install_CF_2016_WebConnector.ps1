echo "ColdFusion 2016 - Installing web configuration tool"

Start-Process "cmd.exe" -ArgumentList "/c C:\ColdFusion2016\cfusion\runtime\bin\wsconfig.exe -ws iis -site 0 -v"

echo "ColdFusion 2016 - finished Installing web configuration tool"
exit
