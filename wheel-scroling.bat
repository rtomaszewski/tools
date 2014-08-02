
cd C:\Users\%USERNAME%\workspace\tools\
echo %DATE% >> wheel-scroling.log
echo %TIME% >> wheel-scroling.log

"C:\Program Files (x86)\AutoIt3\AutoIt3.exe" wheel-scroling.au3

echo "stop" >> wheel-scroling.log
echo %TIME% >> wheel-scroling.log
