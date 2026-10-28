@echo off
chcp 936 >nul
setlocal enabledelayedexpansion
title 希露菲桌宠 一键安装
echo ==========================================
echo    希露菲桌宠 - 一键安装
echo ==========================================
echo.

set "TARGET=%USERPROFILE%\.dsh\dsh-pet\pet"
set "DSHPET=%USERPROFILE%\.dsh\profiles\desktop\node_modules\dsh-pet"

echo [1/3] 检查桌宠插件...
if not exist "%DSHPET%" (
    echo.
    echo   没有找到 dsh-pet 插件，需要先装它。
    echo   请打开 PowerShell 执行这条命令：
    echo.
    echo       dsh plugin --profile desktop add dsh-pet
    echo.
    echo   装完再来双击本文件。
    echo.
    pause
    exit /b 1
)
echo       插件已就绪 ^(dsh-pet^)

echo [2/3] 复制希露菲素材到 %TARGET% ...
if not exist "%TARGET%" mkdir "%TARGET%"
copy /y "%~dp0pet\sylphie-config.jsonc" "%TARGET%\" >nul
if exist "%~dp0pet\sylphie-animation" (
    xcopy /e /i /y /q "%~dp0pet\sylphie-animation" "%TARGET%\sylphie-animation" >nul
)
echo       配置 + 动画已就位

echo [3/3] 安装点击说话补丁（可选，覆盖前会备份）...
if exist "%~dp0补丁-可选\sprite.js" (
    copy /y "%DSHPET%\runtime\electron-helper\sprite.js" "%DSHPET%\runtime\electron-helper\sprite.js.bak_ylf" >nul 2>nul
    copy /y "%~dp0补丁-可选\sprite.js" "%DSHPET%\runtime\electron-helper\sprite.js" >nul
    echo       点击说话补丁已装
)
if exist "%~dp0补丁-可选\main.js" (
    copy /y "%DSHPET%\runtime\electron-helper\main.js" "%DSHPET%\runtime\electron-helper\main.js.bak_ylf" >nul 2>nul
    copy /y "%~dp0补丁-可选\main.js" "%DSHPET%\runtime\electron-helper\main.js" >nul
    echo       界面缩放补丁已装
)

echo.
echo ==========================================
echo   安装完成！现在重启 DSH 桌面版
echo   桌面上就会出现白发小姑娘希露菲
echo ==========================================
echo.
echo   摸她 / 点她 = 说话
echo   右键 = 动作菜单
echo   大小在 设置 - 桌宠配置 里调
echo.
pause
