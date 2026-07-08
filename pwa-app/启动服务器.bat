@echo off
chcp 65001 >nul
echo ========================================
echo   肺内分流计算器 - PWA 本地服务器
echo ========================================
echo.

:: 获取本机局域网 IP
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /c:"IPv4" ^| findstr /c:"192."') do set LAN_IP=%%a
set LAN_IP=%LAN_IP: =%

echo [1/3] 正在启动服务器...
echo.
echo ================================================
echo   在电脑浏览器打开:  http://localhost:8080
echo   在手机浏览器打开:  http://%LAN_IP%:8080
echo ================================================
echo.
echo [提示] 手机需与电脑连接同一个 WiFi
echo [提示] 手机浏览器打开后，点击"添加到主屏幕"即可安装为 APP
echo [提示] 按 Ctrl+C 可停止服务器
echo.

cd /d "%~dp0"
npx serve -l 8080 --no-clipboard