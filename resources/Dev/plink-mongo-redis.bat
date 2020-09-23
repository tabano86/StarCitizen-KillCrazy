@echo off
cls
set _user=ec2-user
set _server=new-bastian
set _mongoIP=10.30.49.36
set _mongoPort=27017
set _redisIP=10.30.48.31
set _redisPort=6379
set _localhostIP=127.0.0.1

echo                 user: %_user%
echo    putty server name: %_server%
echo using localhost addr: %_localhostIP%
echo    mongo server addr: %_mongoIP%:%_mongoPort%
echo    redis server addr: %_redisIP%:%_redisPort%

echo.
echo.

plink.exe %_user%@%_server% -C -L %_localhostIP%:27017:%_mongoIP%:%_mongoPort% -C -L %_localhostIP%:6379:%_redisIP%:%_redisPort%

pause