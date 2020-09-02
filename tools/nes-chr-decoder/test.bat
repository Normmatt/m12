@echo off
choice /c NY /m "This batch file will DELETE some files. Continue"
if not errorlevel 2 goto end

if not exist test-in\*.* goto end
if not exist test-out\*.* goto end

cls
if exist test-out\*.png del test-out\*.png

echo Reading from "test-in", writing to "test-out"...
python nes_chr_decode.py "test-in\smb.chr" "test-out\smb.png"
python nes_chr_decode.py "test-in\blaster.chr" "test-out\blaster.png"
echo.

:end
