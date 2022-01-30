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
* [Running At System Startup](#running-at-system-startup)
   * [Startup Folder Method](#startup-folder-method)
   * [Task Scheduler Method](#task-scheduler-method)
* [Resources](#resources)


# Overview
Using this AutoHotKey script, you are able to instantly toggle the speed of your mouse cursor with just a keypress

## Installation

1. Install [AutoHotkey](https://autohotkey.com/download/) if you havent already
2. Clone this repository:
```sh
$  git clone https://github.com/ConnerWill/Mouse-Speed-AHK.git
```
3. Run [`Mouse-Speed-AHK.ahk`](https://github.com/ConnerWill/Mouse-Speed-AHK/blob/main/Mouse-Speed-AHK.ahk)

## Usage

1. Run [`Mouse-Speed-AHK.ahk`](https://github.com/ConnerWill/Mouse-Speed-AHK/blob/main/Mouse-Speed-AHK.ahk) script.    *(open with AutoHotkey if prompted)*.

### Hotkeys

While you *hold* <kbd>F1</kbd>, your mouse cursor speed is very slow.

*Releasing* <kbd>F1</kbd>, will restore your previous cursor speed.


# Running At System Startup

You can make the script run on every boot with either of these methods.

## **Startup Folder Method**
*(Small-Brain method)*

1. Press <kbd>`Win`</kbd> + <kbd>`R`</kbd>
2. Enter the following command into the run box and click <kbd>OK</kbd>
```ms
shell:startup
```
3. Create a shortcut to the [`Mouse-Speed-AHK.ahk`](https://github.com/ConnerWill/Mouse-Speed-AHK/blob/main/Mouse-Speed-AHK.ahk) to the startup folder.

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
