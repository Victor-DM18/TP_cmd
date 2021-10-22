Rem info.BAT
echo"choisir entre OUI ou NON"
set /P CHOIX="reponse?"
IF %CHOIX%==OUI (goto yes)
IF %CHOIX%==NON (goto non) else (goto erreur)
:yes
echo "affirmatif"
goto end
:non
echo "negatif"
goto end
:end
echo "programme termine"
