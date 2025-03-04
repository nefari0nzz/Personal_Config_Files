@echo off
echo Disabling SysMain (service), Memory Compression, Page Combining Prefetch...

:: Stop and disable SysMain (service)
sc stop SysMain
sc config SysMain start=disabled

:: Disable Memory Compression and Page Combining
powershell -Command "Disable-MMAgent -mc"
:: https://kaimi.io/en/2020/07/reading-another-process-memory-via-windows-10-page-combining-en/
powershell -Command "Disable-MMAgent -PageCombining"

:: Disable Prefetch and Superfetch in Registry
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnablePrefetcher /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnableSuperfetch /t REG_DWORD /d 0 /f

echo SysMain, Memory Compression, and Prefetch/Superfetch have been disabled.
pause
