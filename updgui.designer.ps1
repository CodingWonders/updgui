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
[System.Windows.Forms.CheckBox]$CheckBox1 = $null
[System.Windows.Forms.Label]$Label2 = $null
[System.Windows.Forms.Panel]$UpdateInstallationPanel = $null
[System.Windows.Forms.Button]$Button4 = $null
[System.Windows.Forms.Button]$Button5 = $null
[System.Windows.Forms.Panel]$UpdateHistoryPanel = $null
[System.Windows.Forms.ListView]$ListView7 = $null
[System.Windows.Forms.ColumnHeader]$ColumnHeader6 = $null
[System.Windows.Forms.ColumnHeader]$ColumnHeader7 = $null
[System.Windows.Forms.ColumnHeader]$ColumnHeader8 = $null
[System.Windows.Forms.ColumnHeader]$ColumnHeader9 = $null
[System.Windows.Forms.ColumnHeader]$ColumnHeader10 = $null
[System.Windows.Forms.ListView]$ListView2 = $null
[System.Windows.Forms.ListView]$ListView3 = $null
[System.Windows.Forms.ListView]$ListView4 = $null
[System.Windows.Forms.ListView]$ListView5 = $null
[System.Windows.Forms.ListView]$ListView6 = $null
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
$CheckBox1 = (New-Object -TypeName System.Windows.Forms.CheckBox)
$Label2 = (New-Object -TypeName System.Windows.Forms.Label)
$UpdateInstallationPanel = (New-Object -TypeName System.Windows.Forms.Panel)
$Button4 = (New-Object -TypeName System.Windows.Forms.Button)
$Button5 = (New-Object -TypeName System.Windows.Forms.Button)
$UpdateHistoryPanel = (New-Object -TypeName System.Windows.Forms.Panel)
$ListView7 = (New-Object -TypeName System.Windows.Forms.ListView)
$ColumnHeader6 = (New-Object -TypeName System.Windows.Forms.ColumnHeader)
$ColumnHeader7 = (New-Object -TypeName System.Windows.Forms.ColumnHeader)
$ColumnHeader8 = (New-Object -TypeName System.Windows.Forms.ColumnHeader)
$ColumnHeader9 = (New-Object -TypeName System.Windows.Forms.ColumnHeader)
$ColumnHeader10 = (New-Object -TypeName System.Windows.Forms.ColumnHeader)
$ListView2 = (New-Object -TypeName System.Windows.Forms.ListView)
$ListView3 = (New-Object -TypeName System.Windows.Forms.ListView)
$ListView4 = (New-Object -TypeName System.Windows.Forms.ListView)
$ListView5 = (New-Object -TypeName System.Windows.Forms.ListView)
$ListView6 = (New-Object -TypeName System.Windows.Forms.ListView)
$UpdateInstallationPanel.SuspendLayout()
$UpdateHistoryPanel.SuspendLayout()
$Form1.SuspendLayout()
#
#ListView1
#
$ListView1.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$ListView1.CheckBoxes = $true
$ListView1.Columns.AddRange([System.Windows.Forms.ColumnHeader[]]@($ColumnHeader5,$ColumnHeader1,$ColumnHeader2,$ColumnHeader3,$ColumnHeader4))
$ListView1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$ListView1.FullRowSelect = $true
$ListView1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$ListView1.Name = [System.String]'ListView1'
$ListView1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1234,[System.Int32]553))
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
$Button1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]13,[System.Int32]562))
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
$Button2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]253,[System.Int32]562))
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
$Label1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Trebuchet MS',[System.Single]11.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$Label1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]648,[System.Int32]562))
$Label1.Name = [System.String]'Label1'
$Label1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]575,[System.Int32]33))
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
#CheckBox1
#
$CheckBox1.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left)
$CheckBox1.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$CheckBox1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$CheckBox1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]493,[System.Int32]562))
$CheckBox1.Name = [System.String]'CheckBox1'
$CheckBox1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]149,[System.Int32]33))
$CheckBox1.TabIndex = [System.Int32]4
$CheckBox1.Text = [System.String]'Verbose output'
$CheckBox1.UseVisualStyleBackColor = $true
#
#Label2
#
$Label2.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left)
$Label2.BackColor = [System.Drawing.SystemColors]::Control
$Label2.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Trebuchet MS',[System.Single]11.25))
$Label2.ForeColor = [System.Drawing.SystemColors]::ActiveCaptionText
$Label2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]628))
$Label2.Name = [System.String]'Label2'
$Label2.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$Label2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]146,[System.Int32]33))
$Label2.TabIndex = [System.Int32]2
$Label2.Text = [System.String]'Choose an option:'
$Label2.TextAlign = [System.Drawing.ContentAlignment]::MiddleLeft
#
#UpdateInstallationPanel
#
$UpdateInstallationPanel.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$UpdateInstallationPanel.Controls.Add($ListView1)
$UpdateInstallationPanel.Controls.Add($CheckBox1)
$UpdateInstallationPanel.Controls.Add($Label1)
$UpdateInstallationPanel.Controls.Add($Button1)
$UpdateInstallationPanel.Controls.Add($Button2)
$UpdateInstallationPanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]12))
$UpdateInstallationPanel.Name = [System.String]'UpdateInstallationPanel'
$UpdateInstallationPanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1238,[System.Int32]610))
$UpdateInstallationPanel.TabIndex = [System.Int32]5
#
#Button4
#
$Button4.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left)
$Button4.BackColor = [System.Drawing.SystemColors]::Control
$Button4.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$Button4.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25))
$Button4.ForeColor = [System.Drawing.SystemColors]::ActiveCaptionText
$Button4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]164,[System.Int32]628))
$Button4.Name = [System.String]'Button4'
$Button4.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$Button4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]112,[System.Int32]33))
$Button4.TabIndex = [System.Int32]3
$Button4.Text = [System.String]'Install Updates'
$Button4.UseVisualStyleBackColor = $true
$Button4.add_Click($Button4_Click)
#
#Button5
#
$Button5.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left)
$Button5.BackColor = [System.Drawing.SystemColors]::Control
$Button5.FlatStyle = [System.Windows.Forms.FlatStyle]::System
$Button5.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25))
$Button5.ForeColor = [System.Drawing.SystemColors]::ActiveCaptionText
$Button5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]282,[System.Int32]628))
$Button5.Name = [System.String]'Button5'
$Button5.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$Button5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]112,[System.Int32]33))
$Button5.TabIndex = [System.Int32]3
$Button5.Text = [System.String]'Get Update History'
$Button5.UseVisualStyleBackColor = $true
$Button5.add_Click($Button5_Click)
#
#UpdateHistoryPanel
#
$UpdateHistoryPanel.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$UpdateHistoryPanel.Controls.Add($ListView7)
$UpdateHistoryPanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]11))
$UpdateHistoryPanel.Name = [System.String]'UpdateHistoryPanel'
$UpdateHistoryPanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1238,[System.Int32]611))
$UpdateHistoryPanel.TabIndex = [System.Int32]6
$UpdateHistoryPanel.Visible = $false
#
#ListView7
#
$ListView7.Columns.AddRange([System.Windows.Forms.ColumnHeader[]]@($ColumnHeader6,$ColumnHeader7,$ColumnHeader8,$ColumnHeader9,$ColumnHeader10))
$ListView7.Dock = [System.Windows.Forms.DockStyle]::Fill
$ListView7.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$ListView7.FullRowSelect = $true
$ListView7.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$ListView7.Name = [System.String]'ListView7'
$ListView7.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1238,[System.Int32]611))
$ListView7.TabIndex = [System.Int32]0
$ListView7.UseCompatibleStateImageBehavior = $false
$ListView7.View = [System.Windows.Forms.View]::Details
#
#ColumnHeader6
#
$ColumnHeader6.Text = [System.String]'Computer Name'
$ColumnHeader6.Width = [System.Int32]142
#
#ColumnHeader7
#
$ColumnHeader7.Text = [System.String]'Operation'
$ColumnHeader7.Width = [System.Int32]100
#
#ColumnHeader8
#
$ColumnHeader8.Text = [System.String]'Result'
$ColumnHeader8.Width = [System.Int32]147
#
#ColumnHeader9
#
$ColumnHeader9.Text = [System.String]'Date'
$ColumnHeader9.Width = [System.Int32]128
#
#ColumnHeader10
#
$ColumnHeader10.Text = [System.String]'Name'
$ColumnHeader10.Width = [System.Int32]695
#
#ListView2
#
$ListView2.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$ListView2.BackColor = [System.Drawing.SystemColors]::Window
$ListView2.CheckBoxes = $true
$ListView2.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25))
$ListView2.ForeColor = [System.Drawing.SystemColors]::WindowText
$ListView2.FullRowSelect = $true
$ListView2.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$ListView2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]13,[System.Int32]13))
$ListView2.Name = [System.String]'ListView2'
$ListView2.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$ListView2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1232,[System.Int32]553))
$ListView2.TabIndex = [System.Int32]0
$ListView2.UseCompatibleStateImageBehavior = $false
$ListView2.View = [System.Windows.Forms.View]::Details
#
#ListView3
#
$ListView3.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$ListView3.BackColor = [System.Drawing.SystemColors]::Window
$ListView3.CheckBoxes = $true
$ListView3.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25))
$ListView3.ForeColor = [System.Drawing.SystemColors]::WindowText
$ListView3.FullRowSelect = $true
$ListView3.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$ListView3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]13,[System.Int32]13))
$ListView3.Name = [System.String]'ListView3'
$ListView3.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$ListView3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1232,[System.Int32]553))
$ListView3.TabIndex = [System.Int32]0
$ListView3.UseCompatibleStateImageBehavior = $false
$ListView3.View = [System.Windows.Forms.View]::Details
#
#ListView4
#
$ListView4.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$ListView4.BackColor = [System.Drawing.SystemColors]::Window
$ListView4.CheckBoxes = $true
$ListView4.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25))
$ListView4.ForeColor = [System.Drawing.SystemColors]::WindowText
$ListView4.FullRowSelect = $true
$ListView4.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$ListView4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]13,[System.Int32]13))
$ListView4.Name = [System.String]'ListView4'
$ListView4.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$ListView4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1232,[System.Int32]553))
$ListView4.TabIndex = [System.Int32]0
$ListView4.UseCompatibleStateImageBehavior = $false
$ListView4.View = [System.Windows.Forms.View]::Details
#
#ListView5
#
$ListView5.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$ListView5.BackColor = [System.Drawing.SystemColors]::Window
$ListView5.CheckBoxes = $true
$ListView5.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25))
$ListView5.ForeColor = [System.Drawing.SystemColors]::WindowText
$ListView5.FullRowSelect = $true
$ListView5.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$ListView5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]14,[System.Int32]11))
$ListView5.Name = [System.String]'ListView5'
$ListView5.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$ListView5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1232,[System.Int32]553))
$ListView5.TabIndex = [System.Int32]0
$ListView5.UseCompatibleStateImageBehavior = $false
$ListView5.View = [System.Windows.Forms.View]::Details
#
#ListView6
#
$ListView6.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$ListView6.BackColor = [System.Drawing.SystemColors]::Window
$ListView6.CheckBoxes = $true
$ListView6.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25))
$ListView6.ForeColor = [System.Drawing.SystemColors]::WindowText
$ListView6.FullRowSelect = $true
$ListView6.ImeMode = [System.Windows.Forms.ImeMode]::NoControl
$ListView6.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]14,[System.Int32]11))
$ListView6.Name = [System.String]'ListView6'
$ListView6.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$ListView6.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1232,[System.Int32]553))
$ListView6.TabIndex = [System.Int32]0
$ListView6.UseCompatibleStateImageBehavior = $false
$ListView6.View = [System.Windows.Forms.View]::Details
#
#Form1
#
$Form1.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]1262,[System.Int32]673))
$Form1.Controls.Add($UpdateHistoryPanel)
$Form1.Controls.Add($UpdateInstallationPanel)
$Form1.Controls.Add($Button3)
$Form1.Controls.Add($Label2)
$Form1.Controls.Add($Button4)
$Form1.Controls.Add($Button5)
$Form1.Controls.Add($ListView2)
$Form1.Controls.Add($ListView3)
$Form1.Controls.Add($ListView4)
$Form1.Controls.Add($ListView5)
$Form1.Controls.Add($ListView6)
$Form1.ForeColor = [System.Drawing.SystemColors]::ActiveCaptionText
$Form1.MaximumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]4096,[System.Int32]4096))
$Form1.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]600,[System.Int32]240))
$Form1.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$Form1.Text = [System.String]'UpdGUI'
$UpdateInstallationPanel.ResumeLayout($false)
$UpdateHistoryPanel.ResumeLayout($false)
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
Add-Member -InputObject $Form1 -Name CheckBox1 -Value $CheckBox1 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Label2 -Value $Label2 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name UpdateInstallationPanel -Value $UpdateInstallationPanel -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Button4 -Value $Button4 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Button5 -Value $Button5 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name UpdateHistoryPanel -Value $UpdateHistoryPanel -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name ListView7 -Value $ListView7 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name ColumnHeader6 -Value $ColumnHeader6 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name ColumnHeader7 -Value $ColumnHeader7 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name ColumnHeader8 -Value $ColumnHeader8 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name ColumnHeader9 -Value $ColumnHeader9 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name ColumnHeader10 -Value $ColumnHeader10 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name ListView2 -Value $ListView2 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name ListView3 -Value $ListView3 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name ListView4 -Value $ListView4 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name ListView5 -Value $ListView5 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name ListView6 -Value $ListView6 -MemberType NoteProperty
}
. InitializeComponent
