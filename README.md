![Mouse-Speed-AHK-Banner](media/Mouse-Speed-AHK-Banner.jpeg)

# **Mouse-Speed-AHK**
> [*Mouse-Speed-AHK*](https://github.com/ConnerWill/Mouse-Speed-AHK) is an AutoHotKey script to change the speed of your mouse cursor using a hotkey

![GitHub last commit](https://img.shields.io/github/last-commit/ConnerWill/Mouse-Speed-AHK)
![GitHub issues](https://img.shields.io/github/issues-raw/ConnerWill/Mouse-Speed-AHK)
![GitHub repo size](https://img.shields.io/github/repo-size/ConnerWill/Mouse-Speed-AHK)
[![GitLab](https://img.shields.io/static/v1?label=gitlab&logo=gitlab&color=E24329&message=mirrored)](https://gitlab.com/ConnerWill/Mouse-Speed-AHK)
![GitHub](https://img.shields.io/github/license/ConnerWill/Mouse-Speed-AHK)
![GitHub Repo stars](https://img.shields.io/github/stars/ConnerWill/Mouse-Speed-AHK?style=social)

## Table Of Contents
* [Mouse-Speed-AHK](#mouse-speed-ahk)
* [Overview](#overview)
  * [Installation](#installation)
  * [Usage](#usage)
    * [Hotkeys](#hotkeys)
* [Running Mouse-Speed-AHK at Startup](#running-mouse-speed-ahk-at-startup)
   * [Standard Method](#standard-method)
   * [Smart Method](#smart-method)
   * [Task Scheduler Method](#task-scheduler-method)
* [Resources](#resources)


# Overview
Using this AutoHotKey script, you are able to instantly toggle the speed of your mouse cursor with just a keypress

## Installation

1. Install [AutoHotkey](https://autohotkey.com/download/) if you havent already
2. Clone this repository:
```console
$  git clone https://github.com/ConnerWill/Mouse-Speed-AHK.git
```
3. Run [`Mouse-Speed-AHK.ahk`](https://github.com/ConnerWill/Mouse-Speed-AHK/blob/main/Mouse-Speed-AHK.ahk)

## Usage

Run [`Mouse-Speed-AHK.ahk`](https://github.com/ConnerWill/Mouse-Speed-AHK/blob/main/Mouse-Speed-AHK.ahk) script *(open with AutoHotkey if prompted)*.

### Hotkeys

While you *hold* <kbd>F1</kbd>, your mouse cursor speed is very slow.

*Releasing* <kbd>F1</kbd>, will restore your previous cursor speed.


# Running Mouse-Speed-AHK at Startup

You can make the script run on every boot with either of these methods.

## **Standard Method**
*(Small-Brain method)*

1. Press <kbd>`Win`</kbd> + <kbd>`R`</kbd>
2. Type the command
```ms
shell:startup
```
and click <kbd>OK</kbd>

4. Create a shortcut to the [`Mouse-Speed-AHK.ahk`](https://github.com/ConnerWill/Mouse-Speed-AHK/blob/main/Mouse-Speed-AHK.ahk) to the startup folder.

## **Smart Method**
*(Big-Brain Method)*

1. Since the function of this script is to add scripts to the startup folder, you can just use this script to add itself to the startup folder.

2. You can do this by running the [`AutoStartupToggle.ahk`](https://github.com/ConnerWill) file *(Coming Soon ...)*.

3. Then select the [`Mouse-Speed-AHK.ahk`](https://github.com/ConnerWill/Mouse-Speed-AHK/blob/main/Mouse-Speed-AHK.ahk) file and press the **Hotkey** to add the selected file to the startup folder.

*You can confirm the script has been added to the startup folder by pressing the **Hotkey** to display the **Startup Folder** shortcuts.*

## **Task Scheduler Method**
*(Chad Method)*

*Run the following commands in an Administrator powershell prompt.*
*Be sure to specify the correct path to your Mouse-Speed-AHK.ahk file.*

```powershell
$T = New-ScheduledTaskAction -Execute "PATH\TO\Mouse-Speed-AHK.ahk"
$P = New-ScheduledTaskTrigger -AtLogon
$S = New-ScheduledTaskPrincipal -GroupId "BUILTIN\Administrators" -RunLevel Highest
$F = New-ScheduledTaskSettingsSet -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries -ExecutionTimeLimit 0
$D = New-ScheduledTask -Action $A -Principal $P -Trigger $T -Settings $S
Register-ScheduledTask Mouse-Speed-AHK -InputObject $D
```

The task is now registered and will run on the next logon. The task can be viewed or modified in *'Task Scheduler'*.

---

# Resources

*A detailed description of AutoHotKeys hotkeys can be found here: [AutoHotkey docs](https://autohotkey.com/docs/Hotkeys.htm).*<br>

*To see debug messages, download [SysInternals DebugView](https://technet.microsoft.com/en-us/sysinternals/debugview).*
