@echo OFF

REM This batch file assumes the following:
REM - .NET 8.0 (or newer) SDK is installed and in PATH
REM - 7-zip commandline (7z.exe) is installed and in PATH
REM - Git for Windows is installed and in PATH
REM - The relevant commandline programs are already downloaded
REM   and put into their respective folders
REM
REM If any of these are not satisfied, the operation may fail
REM in an unpredictable way and result in an incomplete output.

REM Set the current directory as a variable
set BUILD_FOLDER=%~dp0

REM Restore Nuget packages for all builds
echo Restoring Nuget packages
dotnet restore

REM net40 Release
echo Building net40 release
dotnet publish MPF\MPF.csproj -f net40 -r win-x86 -c Release -p:DebugType=None -p:DebugSymbols=false
dotnet publish MPF\MPF.csproj -f net40 -r win-x64 -c Release -p:DebugType=None -p:DebugSymbols=false

REM net48 Release
echo Building net48 release
dotnet publish MPF\MPF.csproj -f net48 -r win-x86 -c Release -p:DebugType=None -p:DebugSymbols=false
dotnet publish MPF\MPF.csproj -f net48 -r win-x64 -c Release -p:DebugType=None -p:DebugSymbols=false

REM Create MPF archives
cd %BUILD_FOLDER%\MPF\bin\Release\net40\win-x86\publish\
7z a -tzip %BUILD_FOLDER%\MPF-Legacy_net40_win32.zip *
cd %BUILD_FOLDER%\MPF\bin\Release\net40\win-x64\publish\
7z a -tzip %BUILD_FOLDER%\MPF-Legacy_net40_win64.zip *
cd %BUILD_FOLDER%\MPF\bin\Release\net48\win-x86\publish\
7z a -tzip %BUILD_FOLDER%\MPF-Legacy_net48_win32.zip *
cd %BUILD_FOLDER%\MPF\bin\Release\net48\win-x64\publish\
7z a -tzip %BUILD_FOLDER%\MPF-Legacy_net48_win64.zip *
