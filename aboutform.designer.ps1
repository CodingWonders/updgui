$AboutForm = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.RichTextBox]$RichTextBox1 = $null
function InitializeComponent
{
$resources = . (Join-Path $PSScriptRoot 'aboutform.resources.ps1')
$RichTextBox1 = (New-Object -TypeName System.Windows.Forms.RichTextBox)
$AboutForm.SuspendLayout()
#
#RichTextBox1
#
$RichTextBox1.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$RichTextBox1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]11.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$RichTextBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]12))
$RichTextBox1.Name = [System.String]'RichTextBox1'
$RichTextBox1.ReadOnly = $true
$RichTextBox1.ScrollBars = [System.Windows.Forms.RichTextBoxScrollBars]::ForcedVertical
$RichTextBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]541,[System.Int32]307))
$RichTextBox1.TabIndex = [System.Int32]0
$RichTextBox1.Text = [System.String]$resources.'RichTextBox1.Text'
#
#AboutForm
#
$AboutForm.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]565,[System.Int32]331))
$AboutForm.Controls.Add($RichTextBox1)
$AboutForm.ForeColor = [System.Drawing.SystemColors]::ControlText
$AboutForm.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$AboutForm.MaximizeBox = $false
$AboutForm.MinimizeBox = $false
$AboutForm.ShowIcon = $false
$AboutForm.ShowInTaskbar = $false
$AboutForm.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterParent
$AboutForm.Text = [System.String]'About UpdGUI'
$AboutForm.ResumeLayout($false)
Add-Member -InputObject $AboutForm -Name RichTextBox1 -Value $RichTextBox1 -MemberType NoteProperty
}
. InitializeComponent
