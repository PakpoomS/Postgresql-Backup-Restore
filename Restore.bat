:: SET config restore postgresql
SET IP ="192.168.1.1"
SET port ="5432"
SET database ="test"

:: Find pg_restore can use in pgadmin or pg_bin

SET PG_BIN="C:\Program Files\PostgreSQL\9.6\bin\pg_restore.exe"

:: Database for restore
SET PG_Name="test.backup"

::Author
		:: Create By PakpoomS


SET PG_USER=postgres
SET PGPASSWORD=**********


%PG_BIN% -h %IP% -p %PORT% -U %PG_USER% -v -d %database% %PG_PATH% 


pause