@echo off


set "ROOT_DIR=%~dp0"
set "ROOT_DIR=%ROOT_DIR:~0,-1%"


set "PKG_CONFIG_PATH=%ROOT_DIR%\GstreamerAssets\gstreamer\1.0\msvc_x86_64\lib\pkgconfig"
set "GST_SDK_PATH=%ROOT_DIR%\GstreamerAssets\gstreamer\1.0\msvc_x86_64"
set "GSTREAMER_ROOT=%ROOT_DIR%\GstreamerAssets\gstreamer\1.0\msvc_x86_64"


if exist build rd /s /q build


cmake -S "%ROOT_DIR%" -B "%ROOT_DIR%\build" -G "Visual Studio 16 2019" -A x64


cmake --build "%ROOT_DIR%\build" --parallel 5 --config MinSizeRel


pause
