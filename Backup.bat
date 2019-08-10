@echo Backup database  %PG_PATH%%PG_FILENAME%
@echo off


:: Time
SET HOUR=%time:~0,2%
SET dtStamp9=%date:~-4%%date:~4,2%%date:~7,2%_0%time:~1,1%%time:~3,2%%time:~6,2%
SET dtStamp24=%date:~-4%%date:~4,2%%date:~7,2%_%time:~0,2%%time:~3,2%%time:~6,2%

if "%HOUR:~0,1%" == " " (SET dtStamp=%dtStamp9%) else (SET dtStamp=%dtStamp24%)

ECHO %dtStamp%


::Author
		:: Create By PakpoomS


:: Set Parameter pg_dump 
SET PG_BIN="C:\Program Files (x86)\pgAdmin 4\v4\runtime\pg_dump.exe"  
::HOST
SET PG_HOST= 192.168.1.1
::PORT
SET PG_PORT = 5432
::DATABASE
SET PG_DATABASE = test

::username and password
SET PG_USER = postgres
SET PGPASSWORD = *********** 

::PATH SAVE Backup
SET PG_PATH="C:\"

:: Namefile and settings file
SET PG_FILENAME=%PG_PATH%\%PG_DATABASE%_%dtStamp%.backup
SET other_pg_dump_flags=--blobs --verbose
SET file_format=c

:: Excetution File 
%PG_BIN% -h %PG_HOST% -p %PG_PORT% -U %PG_USER% --file %PG_FILENAME% --format=%file_format%  %other_pg_dump_flags%   %PG_DATABASE% 

@echo Backup Taken Complete %PG_FILENAME%

pause
