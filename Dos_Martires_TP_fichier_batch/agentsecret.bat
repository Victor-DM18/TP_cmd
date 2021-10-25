@echo off

if '%1' NEQ 'bond' goto error1
if '%2' NEQ '007' goto error2

if ('%1'=='bond' '%2'=='007') goto message

:message

echo Bonjour Mister Bond !
goto fin

:error1

echo le 1er parametre est faux
goto fin

:error2

echo le 2eme parametre est faux
goto fin 

:fin
