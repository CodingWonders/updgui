$Button5_Click = {
    $UpdateInstallationPanel.Visible = $false
    $UpdateHistoryPanel.Visible = $true

    Invoke-InfoLogging "Getting installed updates..."
    $ListView7.Items.Clear()
    $updateHistory = Get-WindowsUpdatesFromHistory
    if ($updateHistory.Count -gt 0) {
        for ($i = 0; $i -lt $updateHistory.Count; $i++) {
            $ListView7.Items.Add([System.Windows.Forms.ListViewItem]::new([string[]]@(
                $updateHistory[$i].ComputerName,
                $updateHistory[$i].Operationname,
                $updateHistory[$i].Result,
                $updateHistory[$i].Date,
                $updateHistory[$i].Title
            )))
        }
    }
}
$Button4_Click = {
    $UpdateInstallationPanel.Visible = $true
    $UpdateHistoryPanel.Visible = $false
}
$Button3_Click = {
    . (Join-Path $PSScriptRoot 'aboutform.designer.ps1')
    $AboutForm.ShowDialog($Form1)
}
$ListView1_ItemChecked = {
    if ($ListView1.CheckedItems.Count -gt 0) {
        $Button2.Enabled = $true
    } else {
        $Button2.Enabled = $false
    }
}
$ListView1_SelectedIndexChanged = {
    if ($ListView1.CheckedItems.Count -gt 0) {
        $Button2.Enabled = $true
    } else {
        $Button2.Enabled = $false
    }
}
$Button2_Click = {
    # Install selected updates
    if ($ListView1.CheckedItems.Count -gt 0) {
        $CheckBox1.Enabled = $false
        $Label1.Visible = $true
        Invoke-InfoLogging "Installing selected updates. Please wait..."
        Invoke-InfoLogging "While you're waiting, why not listen to some cheerful music? https://www.youtube.com/watch?v=QHdZjxrG35U"
        $checkedUpdates = $ListView1.CheckedItems
        if ($ListView1.CheckedItems.Count -ge $ListView1.Items.Count) {
            Invoke-InfoLogging "Installing $($ListView1.Items.Count) update(s)..."
            if ($CheckBox1.Checked -eq $true) {
                Install-WindowsUpdate -Verbose -Confirm:$false -IgnoreReboot:$true -IgnoreRebootRequired:$true
            } else {
                Install-WindowsUpdate -Confirm:$false -IgnoreReboot:$true -IgnoreRebootRequired:$true
            }
            Invoke-InfoLogging "Installation of updates succeeded. You may need to restart your computer for changes to take effect."
            $ListView1.Items.Clear()
        } else {
            foreach ($selLVI in $checkedUpdates) {
                Invoke-InfoLogging "Installing update with name: `"$($selLVI.SubItems[4].Text)`" (KB Article ID: $($selLVI.SubItems[2].Text))..."
                if ($selLVI.Subitems[2].Text -ne "") {
                    if ($CheckBox1.Checked -eq $true) {
                        Get-WindowsUpdate -ComputerName "$($selLVI.SubItems[1].Text)" -KBArticleID $selLVI.SubItems[2].Text -Install -Confirm:$false -Verbose -IgnoreReboot:$true -IgnoreRebootRequired:$true
                    } else {
                        Get-WindowsUpdate -ComputerName "$($selLVI.SubItems[1].Text)" -KBArticleID $selLVI.SubItems[2].Text -Install -Confirm:$false -IgnoreReboot:$true -IgnoreRebootRequired:$true
                    }
                } else {
                    if ($CheckBox1.Checked -eq $true) {
                        Get-WindowsUpdate -ComputerName "$($selLVI.SubItems[1].Text)" -Title "$($selLVI.SubItems[4].Text)" -Install -Confirm:$false -Verbose -IgnoreReboot:$true -IgnoreRebootRequired:$true
                    } else {
                        Get-WindowsUpdate -ComputerName "$($selLVI.SubItems[1].Text)" -Title "$($selLVI.SubItems[4].Text)" -Install -Confirm:$false -IgnoreReboot:$true -IgnoreRebootRequired:$true
                    }
                }
                if ($?) {
                    Invoke-InfoLogging "Update with name `"$($selLVI.SubItems[4].Text)`" has been successfully installed"
                    $ListView1.Items.Remove($selLVI)
                } else {
                    Invoke-InfoLogging "Update with name `"$($selLVI.SubItems[4].Text)`" has not been installed"
                    Invoke-InfoLogging "Error information: $_.Exception.Message"
                }
            }
            Invoke-InfoLogging "You may need to restart your computer for changes to take effect."
        }
        $Label1.Visible = $false
        $CheckBox1.Enabled = $true
    } else {
        [System.Windows.Forms.MessageBox]::Show("Please select updates to install and try again.")
    }
}
$Form1_FormClosed = {
}
$Form1_FormClosing = {
}
$Button1_Click = {
    $ListView1.Items.Clear()
    # Get Windows Updates
    Invoke-InfoLogging "Getting Windows updates. Please wait..."
    $availableUpdates = Get-WindowsUpdates
    Invoke-InfoLogging "Available updates: $($availableUpdates.Count)"
    if ($availableUpdates.Count -gt 0) {
        Invoke-InfoLogging "Displaying updates..."
        for ($i = 0; $i -lt $availableUpdates.Count; $i++) {
            $ListView1.Items.Add([System.Windows.Forms.ListViewItem]::new([string[]]@(
                "",
                $availableUpdates[$i].ComputerName,
                $availableUpdates[$i].KB,
                $availableUpdates[$i].Size,
                $availableUpdates[$i].Title
            )))
        }
    } else {
        Invoke-InfoLogging "Your system is up to date."
        [System.Windows.Forms.MessageBox]::Show("Your system is up to date.")
    }
}

function Get-WindowsUpdates {
    return Get-WindowsUpdate
}

function Invoke-InfoLogging {
    param (
        [Parameter(Mandatory, Position = 0)] [string]$message
    )
    Write-Host "[$(Get-Date)] $message"
}

function Get-WindowsUpdatesFromHistory {
    return Get-WUHistory
}

function Check-PSWindowsUpdate {
    try {
        Invoke-InfoLogging "Checking PSWindowsUpdate..."
        if ((Get-Module -Name PSWindowsUpdate -ListAvailable).Count -lt 1) {
            Invoke-InfoLogging "PSWindowsUpdate not detected. Installing..."
            Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
            Set-PSRepository -Name PSGallery -InstallationPolicy Trusted
            Install-Module PSWindowsUpdate -Force
            if ((Get-Module -Name PSWindowsUpdate -ListAvailable).Count -lt 1) { throw }
        }
        if ((Get-Module -Name PSWindowsUpdate).Count -lt 1) {
            Invoke-InfoLogging "PSWindowsUpdate not imported. Importing..."
            Import-Module PSWindowsUpdate
            if ((Get-Module -Name PSWindowsUpdate).Count -lt 1) { throw }
        }
        Invoke-InfoLogging "Either the PSWindowsUpdate module has been successfully imported or no actions had to be done in the first place. Continuing startup..."
    }
    catch {
        Invoke-InfoLogging "Unable to check PSWindowsUpdate. Error: $($_.Exception.Message). Exiting..."
        exit 1
    }
}

function Show-StartupGraphic {
    $verConst = "1.1"
    # Show a cool graphic on startup
    Write-Host -NoNewline "`n`n"
    Write-Host "                                                        dddddddd                                                   "
    Write-Host "    UUUUUUUU     UUUUUUUU                               d::::::d       GGGGGGGGGGGGGUUUUUUUU     UUUUUUUUIIIIIIIIII"
    Write-Host "    U::::::U     U::::::U                               d::::::d    GGG::::::::::::GU::::::U     U::::::UI::::::::I"
    Write-Host "    U::::::U     U::::::U                               d::::::d  GG:::::::::::::::GU::::::U     U::::::UI::::::::I"
    Write-Host "    UU:::::U     U:::::UU                               d:::::d  G:::::GGGGGGGG::::GUU:::::U     U:::::UUII::::::II"
    Write-Host "     U:::::U     U:::::Uppppp   ppppppppp       ddddddddd:::::d G:::::G       GGGGGG U:::::U     U:::::U   I::::I  "
    Write-Host "     U:::::D     D:::::Up::::ppp:::::::::p    dd::::::::::::::dG:::::G               U:::::D     D:::::U   I::::I  "
    Write-Host "     U:::::D     D:::::Up:::::::::::::::::p  d::::::::::::::::dG:::::G               U:::::D     D:::::U   I::::I  "
    Write-Host "     U:::::D     D:::::Upp::::::ppppp::::::pd:::::::ddddd:::::dG:::::G    GGGGGGGGGG U:::::D     D:::::U   I::::I  "
    Write-Host "     U:::::D     D:::::U p:::::p     p:::::pd::::::d    d:::::dG:::::G    G::::::::G U:::::D     D:::::U   I::::I  "
    Write-Host "     U:::::D     D:::::U p:::::p     p:::::pd:::::d     d:::::dG:::::G    GGGGG::::G U:::::D     D:::::U   I::::I  "
    Write-Host "     U:::::D     D:::::U p:::::p     p:::::pd:::::d     d:::::dG:::::G        G::::G U:::::D     D:::::U   I::::I  "
    Write-Host "     U::::::U   U::::::U p:::::p    p::::::pd:::::d     d:::::d G:::::G       G::::G U::::::U   U::::::U   I::::I  "
    Write-Host "     U:::::::UUU:::::::U p:::::ppppp:::::::pd::::::ddddd::::::dd G:::::GGGGGGGG::::G U:::::::UUU:::::::U II::::::II"
    Write-Host "     UU:::::::::::::UU   p::::::::::::::::p  d:::::::::::::::::d  GG:::::::::::::::G  UU:::::::::::::UU  I::::::::I"
    Write-Host "       UU:::::::::UU     p::::::::::::::pp    d:::::::::ddd::::d    GGG::::::GGG:::G    UU:::::::::UU    I::::::::I"
    Write-Host "         UUUUUUUUU       p::::::pppppppp       ddddddddd   ddddd       GGGGGG   GGGG      UUUUUUUUU      IIIIIIIIII"
    Write-Host "                         p:::::p                                                                                   "
    Write-Host "                         p:::::p                                                                                   "
    Write-Host "                        p:::::::p                                                                                  "
    Write-Host "                        p:::::::p                                                                                  "
    Write-Host "                        p:::::::p                                                                                  "
    Write-Host "                        ppppppppp                                                                                  "
    Write-Host -NoNewline "`n`n"
    Write-Host "      A simple front-end for PSWindowsUpdate.                                                                  "
    Write-Host "      Version $verConst                                                                                             "
    Write-Host "                                                         Programming: https://www.github.com/CodingWonders     "
    Write-Host "                                                                Idea: https://www.github.com/og-mrk            "
    Write-Host ""
    Write-Host "      ASCII graphic: http://patorjk.com/software/taag            "
    Write-Host ""
}

Clear-Host

# Set execution policy for the process scope
Set-ExecutionPolicy Bypass Process

Show-StartupGraphic

Check-PSWindowsUpdate

Add-Type -AssemblyName System.Windows.Forms
. (Join-Path $PSScriptRoot 'updgui.designer.ps1')
$Form1.ShowDialog() | Out-Null
Clear-Host
