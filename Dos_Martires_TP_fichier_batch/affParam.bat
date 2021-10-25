@echo off

:param


if '%1'=='' goto fin 

echo %1

shift

goto param

:fin