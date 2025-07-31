@echo off

set DMP_DIR=_DumpLog
set FATAL_DIR=_FatalLog
set REPORT_DIR=_ReportLog
set LOG_DIR=_Logs

if not exist %DMP_DIR% 		mkdir %DMP_DIR%
if not exist %FATAL_DIR% 	mkdir %FATAL_DIR%
if not exist %REPORT_DIR% 	mkdir %REPORT_DIR%
if not exist %LOG_DIR% 	mkdir %LOG_DIR%

if exist *.dmp				move /Y *.dmp				%DMP_DIR% >NUL
if exist *_FatalLog.txt		move /y *_FatalLog.txt		%FATAL_DIR% >NUL
if exist ReportLog_*.txt	move /Y ReportLog_*.txt		%Report_DIR% >NUL
if exist *.log				move /Y *.log				%LOG_DIR% >NUL

rem pause