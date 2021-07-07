VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Planilha34"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = True
Private Sub Worksheet_BeforeDoubleClick(ByVal Target As Range, Cancel As Boolean)
If Intersect(ActiveCell, ActiveSheet.ListObjects("Parametros").ListColumns(2).DataBodyRange) Is Nothing Then
    Exit Sub
Else
    Cancel = True
    Call SelectFile
End If

End Sub

Sub SelectFile()

    Dim DialogBox As FileDialog
    Dim path As String
    Dim fileOrFolder As String
    
    fileOrFolder = ActiveCell.Offset(0, 1).Value
    
    If fileOrFolder = "File" Then
        Set DialogBox = Application.FileDialog(msoFileDialogFilePicker)
        DialogBox.Title = "Select file " & FileType
    End If
    If fileOrFolder = "Folder" Then
        Set DialogBox = Application.FileDialog(msoFileDialogFolderPicker)
        DialogBox.Title = "Select folder " & FileType
    End If
    
    If fileOrFolder = "" Then
        Exit Sub
    End If

    DialogBox.Filters.Clear
    DialogBox.Show

    If DialogBox.SelectedItems.Count = 1 Then
        path = DialogBox.SelectedItems(1)
    End If

    ActiveCell.FormulaR1C1 = path

End Sub
