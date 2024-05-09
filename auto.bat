
rem set date=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%
echo %data%

cd /d %~dp0
rem git pull
rem git status
rem git stash
rem git add MODEL DOC APP
git add .

@echo WRITE UPDATE AND PRESS ENTER:
::set /p GetYourLog=
git commit -m "%date% %time%"
git push
timeout /t 10
exit
