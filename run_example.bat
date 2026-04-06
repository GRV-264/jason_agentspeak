:: run_example.bat - Script para ejecutar los proyectos Jason de la carpeta examples :)

:: FLUJO COMPLETO:
:: 1. Usuario selecciona proyecto .mas2j
:: 2. Jason genera build.xml (compilación del agente)
:: 3. Ant ejecuta el sistema multiagente

:: Github Jason: https://github.com/jason-lang/jason/tree/main
:: Versiones de Jason: https://github.com/jason-lang/jason/releases
:: Documentación Jason: https://spade-bdi.readthedocs.io/latest/agentspeak.html


@echo off
setlocal enabledelayedexpansion
title Selector de Proyectos Jason - Ejecucion Total

:: Variables globales
set "ROOT_DIR=%~dp0"
set "LIBS_DIR=%ROOT_DIR%libs"

:: Buscamos el jar de jason (carpeta libs) para asegurarnos de tenerlo en el classpath
:: OJO: si hay varios jason-*.jar, SOLO se queda con el último encontrado
for %%i in ("%LIBS_DIR%\jason-*.jar") do set "JASON_JAR=%%i"

:: Menu principal
:MENU
cls
echo ======================================================
echo           SELECTOR DE PROYECTOS JASON
echo ======================================================
echo.

:: Recorre recursivamente la carpeta examples detectando los proyectos Jason (.mas2j)
:: IMPORTANTE: usa arrays simulados con file[], name[] y path[]
set count=0
for /r "%ROOT_DIR%examples" %%f in (*.mas2j) do (
    set /a count+=1
    set "file[!count!]=%%f"
    set "name[!count!]=%%~nxf"
    set "path[!count!]=%%~dpf"
    echo !count!] %%~nxf
)

echo.
echo 0] Salir
echo.
set /p choice="Selecciona el numero: "

if "%choice%"=="0" exit /b

:: Si el usuario introduce un número inválido
:: (que no existe en el array), vuelve al menú
if not defined file[%choice%] goto MENU

set "target_dir=!path[%choice%]!"
set "file_name=!name[%choice%]!"

echo.
echo ------------------------------------------------------
echo 1. Parseando: !file_name!
echo ------------------------------------------------------

cd /d "!target_dir!"

:: PASO 1: Compila el archivo .mas2j y genera:
:: - build.xml (Ant)
:: - estructura interna del proyecto Jason
java -cp "%JASON_JAR%;%LIBS_DIR%\*;." jason.mas2j.parser.mas2j "!file_name!"

echo.
echo ------------------------------------------------------
echo 2. Lanzando agentes con Ant...
echo ------------------------------------------------------

:: PASO 2: Ejecutar Ant usando las librerias de la carpeta libs
:: -f bin/build.xml indica el archivo de build generado en el paso 1
java -cp "%LIBS_DIR%\*;." org.apache.tools.ant.Main -f bin/build.xml

echo.
echo ------------------------------------------------------
echo Proceso terminado.
pause
goto MENU