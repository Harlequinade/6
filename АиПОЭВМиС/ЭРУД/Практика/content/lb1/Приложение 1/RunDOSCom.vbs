'*******************************************************************
' ���: RunDOSCom.vbs                                               
' ����: VBScript                                                   
' ��������: ���������� ���������� ������ DOS                      
'*******************************************************************
Option Explicit

Dim WshShell, Code   ' ��������� ����������
' ������� ������ WshShell
Set WshShell = WScript.CreateObject("WScript.Shell")
' ��������� ���������� ������� COPY
WshShell.Run "%COMSPEC% /k copy /?",1
' ��������� ���������� ������� DIR
WshShell.Run "%COMSPEC% /c dir %WINDIR% > windir.txt",1
'*************  ����� *********************************************/
