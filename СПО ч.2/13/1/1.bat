@echo off
chcp 1251
if "%1" =="" (echo �� ����� ������� & goto :eof)
if not exist %1 (echo �� ��������� ������ �������� & goto :eof)
del %1\* /s
pause