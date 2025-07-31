@echo off

set LOG_DIR=_Logs

if not exist %LOG_DIR% 	mkdir %LOG_DIR%

if exist ConcurrentUser_*.txt				move /Y ConcurrentUser_*.txt			%LOG_DIR% >NUL

rem pause