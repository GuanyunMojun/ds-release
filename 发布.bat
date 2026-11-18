@echo off
chcp 65001 >nul
REM 推送到 GitHub 生成直链。先改下面两行。
set GITHUB_USER=你的用户名
set REPO_NAME=ds-release

cd /d %~dp0
if not exist .git git init
git add .
git commit -m "DS 助手更新 %date% %time%"
git remote remove origin 2>nul
git remote add origin https://github.com/%GITHUB_USER%/%REPO_NAME%.git
git branch -M main
git push -u origin main
echo.
echo 完成！直链：
echo https://cdn.jsdelivr.net/gh/%GITHUB_USER%/%REPO_NAME%@main/DS助手-官方同款-v1.0.apk
echo https://github.com/%GITHUB_USER%/%REPO_NAME%/raw/main/DS助手-官方同款-v1.0.apk
pause
