@echo off
chcp 65001 >nul
echo ========================================
echo   打开 public 文件夹
echo ========================================
echo.
echo 正在打开部署文件夹...
echo 路径: %~dp0public
echo.

start "" "%~dp0public"

echo.
echo 如果文件夹没有打开，请手动访问：
echo d:\std\hexo-theme-arknights-main\website\public
echo.
pause
