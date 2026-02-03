@echo off
chcp 65001 >nul
echo ========================================
echo   明日方舟主题博客 - 清除缓存
echo ========================================
echo.
echo 正在清除缓存和生成的文件...
echo.

cd /d "%~dp0.."
node_modules\.bin\hexo clean --cwd website

echo.
echo ========================================
echo 清除完成!
echo ========================================
pause
