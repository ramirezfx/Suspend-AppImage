#!/bin/bash
rm -Rf Suspend.AppDir
rm appimagetool-x86_64.AppImage
wget https://github.com/AppImage/AppImageKit/releases/download/continuous/appimagetool-x86_64.AppImage
chmod 700 appimagetool-x86_64.AppImage
chmod 700 AppRun
mkdir Suspend.AppDir
mkdir Suspend.AppDir/usr
mkdir Suspend.AppDir/usr/bin
cp Suspend Suspend.AppDir/usr/bin
cp Suspend.desktop Suspend.AppDir
cp AppRun Suspend.AppDir
cp Suspend.png Suspend.AppDir
ARCH=x86_64 ./appimagetool-x86_64.AppImage Suspend.AppDir