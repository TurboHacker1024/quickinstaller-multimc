echo "Welcome to TurboHacker1024's MultiMC quick installer"
sleep 2

mkdir C:\downtmp
cd C:\downtmp

Invoke-WebRequest -Uri https://files.multimc.org/downloads/mmc-stable-win32.zip -OutFile file.zip -UseBasicParsing

Expand-Archive .\file.zip multimc

mv .\multimc\MultiMC C:\MultiMC

$shell = New-Object -ComObject WScript.Shell
$shortcut = $shell.CreateShortcut("C:\Users\$env:UserName\Desktop\MultiMC.lnk")
$shortcut.TargetPath = "C:\MultiMC\MultiMC.exe"
$shortcut.Save()

cd /

rmdir C:\downtmp

pause