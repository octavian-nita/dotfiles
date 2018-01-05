@if "%DEBUG%"=="" @echo off
setlocal enabledelayedexpansion

git config --global user.name "Octavian Nita"
git config --global user.email octavian.nita@gmail.com

git config --global core.editor "'C:/Program Files/Sublime Text 3/sublime_text.exe' -w"

git config --global merge.tool winmerge
git config --replace --global mergetool.winmerge.cmd "'C:/Program Files (x86)/WinMerge/WinMergeU.exe' -e -u -dl \"Base\" -dr \"Mine\" \"$LOCAL\" \"$REMOTE\""
git config --global mergetool.prompt false

endlocal
exit /b %ERRORLEVEL%
