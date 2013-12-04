@if "%DEBUG%"=="" @echo off
setlocal enabledelayedexpansion

git config --global user.name "Octavian Nita"
git config --global user.email mnothro@yahoo.com

git config --global core.editor "'C:/Program Files/Sublime Text 3/sublime_text.exe' -w"

git config --global merge.tool winmerge
git config --replace --global mergetool.winmerge.cmd "'C:/Program Files (x86)/WinMerge/WinMergeU.exe' -e -u -dl \"Base\" -dr \"Mine\" \"$LOCAL\" \"$REMOTE\""
git config --global mergetool.prompt false

:: Setting / modifying variables in loops -- example (TODO: remove this and place it into a gist):
::
:: set CLASSPATH=WEB-INF\classes
:: for /f %%F in ('dir /b %LIBDIR%') do (
::   set CLASSPATH=!CLASSPATH!;%LIBDIR%\%%F
:: )

endlocal
exit /b %ERRORLEVEL%
