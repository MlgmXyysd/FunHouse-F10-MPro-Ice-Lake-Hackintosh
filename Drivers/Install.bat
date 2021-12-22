@echo off
cd /d %~dp0
pnputil /add-driver "%~dp0*.inf" /subdirs /install
pause

