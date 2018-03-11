'*******************************************************************
' ���: PropScript.vbs                                              
' ����: VBScript                                        
' ��������: ����� ������� ����������� �������� 
'*******************************************************************
Option Explicit

' �������� ������, � ������� ������� ��������
Function IsCScript() 
  IsCScript=("c"=Mid(LCase(WScript.FullName),Len(WScript.FullName)-10,1))
End Function

' ���������� �������, ���������� ���������� ��������
Function GetScriptDir()
  Dim ScriptDir
  ScriptDir = WScript.ScriptFullName
  ScriptDir = Left(ScriptDir, InstrRev(ScriptDir,"\")-1)
  GetScriptDir=ScriptDir
End Function

'*******************  ������  **********************************/
Dim WshShell,s   ' ��������� ����������
' ������� ������ WshShell
Set WshShell=WScript.CreateObject("WScript.Shell")
s="                   �������� ����������� ��������:" & vbCrLf & vbCrLf
' ���������, � ����� ������ ��� ������� ��������
If IsCScript() Then
  s=s & "������� � ���������� ������" & vbCrLf
Else
  s=s & "������� � ����������� ������" & vbCrLf
End If
' ���������� ��������� ���������
s=s & "���� � �������: " & WScript.FullName & vbCrLf
s=s & "������� �������: " & WScript.Path & vbCrLf
s=s & "������ WSH: " & WScript.Version & vbCrLf & vbCrLf
s=s & "������� �������: "+ WshShell.CurrentDirectory & vbCrLf
s=s & "���� � ��������: " & WScript.ScriptFullName & vbCrLf
s=s & "������� ��������: " & GetScriptDir()  & vbCrLf
s=s & "��� ��������: " & WScript.ScriptName & vbCrLf

WScript.Echo s   ' ������� �������������� ������
'*************  ����� *********************************************
