@echo off
setlocal
set /a record=99999

:newgame
  set /a try=0
  set /a random=%RANDOM% %%9+1
  set min=1
  set max=9

  :repeat
    set /p guess=Tapez un chiffre entre %min% et %max%:
    set /a try=try+1
    if %guess% EQU %random% (
      echo Vous avez reussi en %try% coups!
      if %try% LSS %record% (
        set /a record=try
      )
      goto ask
    )
    if %guess% LSS %random% (
      echo Trop bas!
      set /a min=%guess%+1
      goto repeat
    )
    echo Trop haut!
    set /a max=%guess%-1
    goto repeat

:ask
  choice /c:yn /n /m "Jouez encore?(y/n)"
  if %errorlevel% EQU 1 goto newgame

:bye

  if not %record% EQU 99999 echo Record de coup(s) = %record%
  shift
  echo fim du jeu

endlocal