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
		$Label1.Visible = $true
		Invoke-InfoLogging "Installing selected updates. Please wait..."
		$checkedUpdates = $ListView1.CheckedItems
		foreach ($selLVI in $checkedUpdates) {
			Invoke-InfoLogging "Installing update with name: `"$($selLVI.SubItems[4].Text)`" (KB Article ID: $($selLVI.SubItems[2].Text))..."
			if ($selLVI.Subitems[2].Text -ne "") {
				Get-WindowsUpdate -ComputerName "$($selLVI.SubItems[1].Text)" -KBArticleID $selLVI.SubItems[2].Text -Install -Confirm:$false					
			} else {
				Get-WindowsUpdate -ComputerName "$($selLVI.SubItems[1].Text)" -Title "$($selLVI.SubItems[4].Text)" -Install -Confirm:$false			
			}
			if ($?) {
				Invoke-InfoLogging "Update with name `"$($selLVI.SubItems[4].Text)`" has been successfully installed"
				$ListView1.Items.Remove($selLVI)
			} else {
				Invoke-InfoLogging "Update with name `"$($selLVI.SubItems[4].Text)`" has not been installed"
				Invoke-InfoLogging "Error information: $_.Exception.Message"			
			}
		}
		$Label1.Visible = $false
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
		[Parameter(Mandatory, Position = 0)] [string] $message
	)
	Write-Host "[$(Get-Date)] $message"
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
	}
	catch {
		Invoke-InfoLogging "Unable to check PSWindowsUpdate. Error: $($_.Exception.Message). Exiting..."
		exit 1
	}
}

Clear-Host

# Set execution policy for the process scope
Set-ExecutionPolicy Bypass Process

Check-PSWindowsUpdate

Add-Type -AssemblyName System.Windows.Forms
. (Join-Path $PSScriptRoot 'updgui.designer.ps1')
$Form1.ShowDialog() | Out-Null
Clear-Host