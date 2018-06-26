@echo off
git pull
git add .
git commit -m "add "
git push origin head:master
pause&exit