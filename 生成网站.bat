@echo off
chcp 65001 >nul
echo ========================================
echo   明日方舟主题博客 - 生成静态网站
echo ========================================
echo.
echo 正在生成静态网站...
echo.

cd /d "%~dp0.."
node_modules\.bin\hexo generate --cwd website

echo.
echo ========================================
echo 生成完成! 静态文件位于 website\public 目录
echo ========================================
pause
