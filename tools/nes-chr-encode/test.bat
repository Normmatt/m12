@echo off
choice /c NY /m "This batch file will DELETE some files. Continue"
if not errorlevel 2 goto end

if not exist test-in\*.* goto end
if not exist test-out\*.* goto end

cls
if exist test-out\*.chr del test-out\*.chr

echo Reading from "test-in", writing to "test-out"...
python nes_chr_encode.py "test-in\smb.png" "test-out\smb.chr"
python nes_chr_encode.py "test-in\blaster.png" "test-out\blaster.chr"
echo.

fc /b "test-correct\blaster.chr" "test-out\blaster.chr"
fc /b "test-correct\smb.chr" "test-out\smb.chr"

:end
