@echo off
chcp 65001 >nul
echo ========================================
echo   明日方舟主题博客 - 本地服务器
echo ========================================
echo.
echo 正在启动本地服务器...
echo.

cd /d "%~dp0.."
node_modules\.bin\hexo server --cwd website

echo.
echo 服务器已关闭
pause
