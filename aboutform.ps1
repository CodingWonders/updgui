Add-Type -AssemblyName System.Windows.Forms
. (Join-Path $PSScriptRoot 'aboutform.designer.ps1')
$AboutForm.ShowDialog()