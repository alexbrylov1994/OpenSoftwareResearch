setlocal enabledelayedexpansion
set output=
for /f "delims=" %%a in ('git diff --name-only HEAD) do ( set output=!output! "%%a" )
git archive -o update.zip HEAD %output%
endlocal