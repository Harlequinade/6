'*******************************************************************
' ���: Quit.vbs
' ����: VBScript
' ��������: ����� �� �������� � �������� ����� ����������
'*******************************************************************
Option Explicit

Dim WshShell,Res,Text,Title  ' ��������� ����������
' ������� ������ WshShell
Set WshShell = WScript.CreateObject("WScript.Shell")
Text="�������� ������ ��� ���������� ��������"
Title="���������� ����"
' ������� ���������� ���� �� �����
Res=WshShell.Popup(Text,0,Title,vbOkCancel)
If Res=1 Then
  WScript.Quit 1
Else
  WScript.Quit 0
End If
'*************  ����� *********************************************
