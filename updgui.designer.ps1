$Form1 = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.ListView]$ListView1 = $null
[System.Windows.Forms.ColumnHeader]$ColumnHeader5 = $null
[System.Windows.Forms.ColumnHeader]$ColumnHeader1 = $null
[System.Windows.Forms.ColumnHeader]$ColumnHeader2 = $null
[System.Windows.Forms.ColumnHeader]$ColumnHeader3 = $null
[System.Windows.Forms.ColumnHeader]$ColumnHeader4 = $null
[System.Windows.Forms.Button]$Button1 = $null
[System.Windows.Forms.Button]$Button2 = $null
[System.Windows.Forms.Label]$Label1 = $null
[System.Windows.Forms.Button]$Button3 = $null
function InitializeComponent
{
$ListView1 = (New-Object -TypeName System.Windows.Forms.ListView)
$ColumnHeader5 = (New-Object -TypeName System.Windows.Forms.ColumnHeader)
$ColumnHeader1 = (New-Object -TypeName System.Windows.Forms.ColumnHeader)
$ColumnHeader2 = (New-Object -TypeName System.Windows.Forms.ColumnHeader)
$ColumnHeader3 = (New-Object -TypeName System.Windows.Forms.ColumnHeader)
$ColumnHeader4 = (New-Object -TypeName System.Windows.Forms.ColumnHeader)
$Button1 = (New-Object -TypeName System.Windows.Forms.Button)
$Button2 = (New-Object -TypeName System.Windows.Forms.Button)
$Label1 = (New-Object -TypeName System.Windows.Forms.Label)
$Button3 = (New-Object -TypeName System.Windows.Forms.Button)
$Form1.SuspendLayout()
#
#ListView1
#
$ListView1.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$ListView1.CheckBoxes = $true
$ListView1.Columns.AddRange([System.Windows.Forms.ColumnHeader[]]@($ColumnHeader5,$ColumnHeader1,$ColumnHeader2,$ColumnHeader3,$ColumnHeader4))
$ListView1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$ListView1.FullRowSelect = $true
$ListView1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]12))
$ListView1.Name = [System.String]'ListView1'
$ListView1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1238,[System.Int32]610))
$ListView1.TabIndex = [System.Int32]0
$ListView1.UseCompatibleStateImageBehavior = $false
$ListView1.View = [System.Windows.Forms.View]::Details
$ListView1.add_ItemChecked($ListView1_ItemChecked)
$ListView1.add_SelectedIndexChanged($ListView1_SelectedIndexChanged)
#
#ColumnHeader5
#
$ColumnHeader5.Text = [System.String]''
$ColumnHeader5.Width = [System.Int32]32
#
#ColumnHeader1
#
$ColumnHeader1.Text = [System.String]'On Computer'
$ColumnHeader1.Width = [System.Int32]209
#
#ColumnHeader2
#
$ColumnHeader2.Text = [System.String]'Knowledge Base Number'
$ColumnHeader2.Width = [System.Int32]197
#
#ColumnHeader3
#
$ColumnHeader3.Text = [System.String]'Size'
$ColumnHeader3.Width = [System.Int32]80
#
#ColumnHeader4
#
$ColumnHeader4.Text = [System.String]'Update Name'
$ColumnHeader4.Width = [System.Int32]688
#
#Button1
#
$Button1.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left)
$Button1.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$Button1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Button1.ForeColor = [System.Drawing.SystemColors]::ActiveCaptionText
$Button1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]628))
$Button1.Name = [System.String]'Button1'
$Button1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]234,[System.Int32]33))
$Button1.TabIndex = [System.Int32]1
$Button1.Text = [System.String]'Get Updates'
$Button1.UseVisualStyleBackColor = $true
$Button1.add_Click($Button1_Click)
#
#Button2
#
$Button2.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left)
$Button2.BackColor = [System.Drawing.SystemColors]::Control
$Button2.Enabled = $false
$Button2.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$Button2.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25))
$Button2.ForeColor = [System.Drawing.SystemColors]::ActiveCaptionText
$Button2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]252,[System.Int32]628))
$Button2.Name = [System.String]'Button2'
$Button2.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$Button2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]234,[System.Int32]33))
$Button2.TabIndex = [System.Int32]1
$Button2.Text = [System.String]'Install Selected Updates'
$Button2.UseVisualStyleBackColor = $true
$Button2.add_Click($Button2_Click)
#
#Label1
#
$Label1.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$Label1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Arial',[System.Single]11.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]492,[System.Int32]628))
$Label1.Name = [System.String]'Label1'
$Label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]677,[System.Int32]33))
$Label1.TabIndex = [System.Int32]2
$Label1.Text = [System.String]'Check console output for progress on update installation!'
$Label1.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$Label1.Visible = $false
#
#Button3
#
$Button3.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Right)
$Button3.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$Button3.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Button3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]1175,[System.Int32]628))
$Button3.Name = [System.String]'Button3'
$Button3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]33))
$Button3.TabIndex = [System.Int32]3
$Button3.Text = [System.String]'About'
$Button3.UseVisualStyleBackColor = $true
$Button3.add_Click($Button3_Click)
#
#Form1
#
$Form1.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1262,[System.Int32]673))
$Form1.Controls.Add($Button3)
$Form1.Controls.Add($Label1)
$Form1.Controls.Add($Button1)
$Form1.Controls.Add($ListView1)
$Form1.Controls.Add($Button2)
$Form1.ForeColor = [System.Drawing.SystemColors]::ActiveCaptionText
$Form1.MaximumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]4096,[System.Int32]4096))
$Form1.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]600,[System.Int32]240))
$Form1.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$Form1.Text = [System.String]'UpdGUI'
$Form1.ResumeLayout($false)
Add-Member -InputObject $Form1 -Name ListView1 -Value $ListView1 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name ColumnHeader5 -Value $ColumnHeader5 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name ColumnHeader1 -Value $ColumnHeader1 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name ColumnHeader2 -Value $ColumnHeader2 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name ColumnHeader3 -Value $ColumnHeader3 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name ColumnHeader4 -Value $ColumnHeader4 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Button1 -Value $Button1 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Button2 -Value $Button2 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label1 -Value $Label1 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Button3 -Value $Button3 -MemberType NoteProperty
}
. InitializeComponent
