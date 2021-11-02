Rem cree.BAT
echo "creer arborescence"
set /P COMMAND="commande?"
IF %COMMAND%==supprime (goto delete)
IF %COMMAND%==cree (goto create)

:create
md r1 D:\TP_CMD\r1\ D:\TP_CMD\r1\r5 D:\TP_CMD\r2 D:\TP_CMD\r3 D:\TP_CMD\r4\r6 D:\TP_CMD\r4\r7 D:\TP_CMD\r4\r8
type nul > r1\f1.txt
type nul > r1\f2.txt
type nul > r4\r8\f3.txt
goto end2

:delete
rd /s ..\TP_CMD
goto end1



:end1
echo "arborescence efface"

:end2
echo "arborescence cree"