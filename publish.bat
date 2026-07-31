@echo off
echo Syncing notes from Obsidian...

:: /MIR perfectly mirrors the folder, copying new notes and removing deleted ones
robocopy "C:\Users\devan\Documents\Obisidan\Obsidian Vault\Tabletop" "content" /MIR

:: Quartz handles the git add, commit, and push automatically
call npx quartz sync

echo Deployment triggered!
pause