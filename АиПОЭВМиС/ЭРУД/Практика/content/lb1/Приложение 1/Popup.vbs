'*******************************************************************
' ���: Popup.vbs                                              
' ����: VBcript        
' ��������: ������ ������������� ������ WshShell.Popup
'*******************************************************************
Option Explicit

Dim WshShell,Res,Text,Title  ' ��������� ����������
' ������� ������ WshShell
Set WshShell = WScript.CreateObject("WScript.Shell")
Text="������ ������ ����� � ����������" & vbCrLf & "���� WScript"
Title="���������"
' ������� ���������� ���� �� �����
Res=WshShell.Popup(Text,0,Title,vbOkCancel)
' ����������, ����� �� ������ ���� ������ � ���������� ����
If (Res=vbOk) Then
  WshShell.Popup "������ ������ OK"
Else
  WshShell.Popup "������ ������ ������"
End If
'*************  ����� *********************************************
