@echo off
rmdir /s /q "%~dp0out"
mkdir out
xcopy "%~dp0other\backup" "%~dp0out" /E > nul
java -version 
if errorlevel 1 goto errjava
cls
echo Custom LWP 2.6
echo Thanks : andrew121 for the app this script modifies
echo Thanks : olivvv59 for the added # of images
echo ---------------------------------------------------
echo Insert ur images in placeimages here folder
echo Continue when done
echo Make sure the images are the same resolution
echo as your device for optimal results
echo U have up to 300 images you can use (n01.png...n300.png)
echo They must be labelled in that format
echo.
PAUSE
echo.
echo How many images do you have ^? Remember, must be ^<^= 300 and ur value must be in 
echo hexadecimal. So if ur using 20 images, ur input would be 14
echo Use www.tiny.cc/converthex if u need assistance
echo.
set /P INPUT=Enter: %=%
echo.
echo Enter the name for this live wallpaper. This is shown when picking the lwp
echo.
set /P INPUT1=Enter: %=%
echo.
echo Enter the description for this live wallpaper. 
echo This is shown when picking the lwp
echo.
set /P INPUT2=Enter: %=%
echo.
echo Enter the package name for this live wallpaper. This should be one word.
echo No spaces or fancy characters please. 
echo.
set /P INPUT3=Enter: %=%
other\rep "suvbsib" "%INPUT3%" out\smali\com\custom\lwp\suvbsib\*.smali /s 
cls
other\rep "suvbsib" "%INPUT3%" out\res\xml\wallpaper.xml
other\rep "suvbsib" "%INPUT3%" out\AndroidManifest.xml
rename out\smali\com\custom\lwp\suvbsib %INPUT3%
other\rep "appname" "%INPUT1%" out\AndroidManifest.xml
other\rep "dscrp" "%INPUT2%" out\res\values\strings.xml
other\rep "const/16 v1, 0x31" "const/16 v1, 0x%INPUT%" out\smali\com\custom\lwp\%INPUT3%\LiveWallpaperPainting$OutRunEngine.smali
set counter=1
set placeholder=0
:loop
if NOT EXIST "%~dp0out\res\drawable-hdpi-v4\n%placeholder%%counter%.png" (copy "%~dp0other\ph.png" "%~dp0out\res\drawable-hdpi-v4\n%placeholder%%counter%.png")
set /a counter+=1
if %counter% EQU 10 ( set placeholder=)
if %counter% NEQ 301 goto loop
copy "%~dp0placeimages" "%~dp0out\res\drawable-hdpi-v4"
DEL /Q "%~dp0customlwp-unsigned.apk"
cls
echo.
echo Building Apk
cd out
del /S *temp_$
DEL /Q "%~dp0%INPUT3%-signed.apk"
cls
cd ..
cd other
java -jar apktool.jar b ../out "%~dp0%INPUT3%-unsigned.apk"
echo.
echo Signing Apk
java -jar signapk.jar -w testkey.x509.pem testkey.pk8 "%~dp0%INPUT3%-unsigned.apk" "%~dp0%INPUT3%-signed.apk"
DEL /Q "%~dp0%INPUT3%-unsigned.apk"
cd ..
cls
echo.
echo Done.
echo.
cls
echo Would you like to install this apk ^? 
echo Ur device must be connected to ur pc and adb must be in ur PATH (y/n)
echo.
set /P INPUT4=Enter: %=%
if (%INPUT4%)==(y) goto ains
start www.simproduction.com
goto exit
:errjava
cls
echo Java was not found, you will not be able to sign apks or use apktool
PAUSE
goto exit
:ains
adb install -r "%~dp0%INPUT3%-signed.apk"
start www.simproduction.com
:exit

