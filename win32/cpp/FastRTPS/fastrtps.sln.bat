:: This script execute Visual Studio getting first the version of the product.

:: Get the current vesion of FastCDR
call ..\..\..\thirdparty\dev-env\scripts\common_pack_functions.bat :getVersionFromCPP VERSIONFASTRTPS ..\..\..\include\fastrtps\fastrtps_version.h
if not %errorstatus%==0 goto :EOF

set VERSION=-%VERSIONFASTRTPS%

set LIB_BOOST_PATH=C:\local\boost_1_57_0

start "FASTRTPS" "C:\Program Files (x86)\Microsoft Visual Studio 12.0\Common7\IDE\devenv.exe" fastrtps.sln
