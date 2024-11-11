## UpdGUI

UpdGUI is a simple PowerShell front-end for the PSWindowsUpdate module that, currently, lets you get and install the updates that you select.

> [!NOTE]
> This project is in alpha stages. Feedback is very appreciated

### Credits

- Programming: CodingWonders
- Idea: [og-mrk](https://www.github.com/og-mrk)

### Usage

- **Requirements:** your language mode must not be set to constrained. To check your language mode, type `$ExecutionContext.SessionState.LanguageMode` and make sure it is set to `FullLanguage`

1. Open a PowerShell window as an administrator
2. Run UpdGUI (`.\updgui.ps1`)
3. Get the updates
4. Select the updates you want to install
5. Install them!

### Contributing

- **Requirements:** [PSScriptPad](https://docs.poshtools.com/powershell-pro-tools-documentation/psscriptpad) or any PowerShell ISE that supports visual form editing for, well, designing the forms more easily. Any other editor, even Notepad, can open PowerShell scripts as well

1. Open `updgui.ps1` on your code editor and make the necessary changes
2. Test your changes
3. Make a pull request
