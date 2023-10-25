@setlocal enableextensions
@cd /d "%~dp0"

@echo off

set linkedmodules=Smartstore.Module1,Smartstore.Module2

set linksrc=%CD%\..\Smartstore\src\Smartstore.Modules
set linktarget=%CD%

FOR %%A IN (%linkedmodules%) DO (
	mklink /j "%linksrc%\%%A-sym" "%linktarget%\%%A"
)

pause