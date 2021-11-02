Rem cree.BAT
echo "creer arborescence"
set /P COMMAND="commande?"
IF %COMMAND%==supprime (goto delete)
IF %COMMAND%==cree (goto create)

:delete
rd /s D:\TP_CMD
goto end1

:create
md D:\TP_CMD\r1 D:\TP_CMD\r1\ D:\TP_CMD\r1\r5 D:\TP_CMD\r2 D:\TP_CMD\r3 D:\TP_CMD\r4\r6 D:\TP_CMD\r4\r7 D:\TP_CMD\r4\r8
type nul > D:\TP_CMD\r1\f1.txt
type nul > D:\TP_CMD\r1\f2.txt
type nul > D:\TP_CMD\r4\r8\f3.txt
goto end2

:end1
echo "arborescence efface"

:end2
echo "arborescence cree"