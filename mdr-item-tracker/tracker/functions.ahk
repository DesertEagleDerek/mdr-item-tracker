#NoEnv
#include %A_ScriptDir%\version\version.ahk

global Param1 := ""
global IsLargeMode = -1
global WinTitle := ""
global Wait1 = 2
global Wait2 = 1

Param1 = %1%
Start()

Start()
{
	if (Param1 == "-large")
	{
		IsLargeMode = 1
		WinTitle1 := "MDR Item Tracker " TrackerVersion " (Large) - DesertEagleDerek"
		WinTitle2 := "MDR Item Tracker (Large) - DesertEagleDerek"
	}
	else
	{
		IsLargeMode = 0
		WinTitle1 := "MDR Item Tracker " TrackerVersion " - DesertEagleDerek"
		WinTitle2 := "MDR Item Tracker - DesertEagleDerek"
	}

	WinWait, %WinTitle1%, , %Wait1%
	if (ErrorLevel == 0)
	{
		WinTitle := WinTitle1
	}
	else
	{
		WinWait, %WinTitle2%, , %Wait2%
		if (ErrorLevel == 0)
		{
			WinTitle := WinTitle2
		}
	}
}

TargetWindow(X, Y, W, H, WinTitle)
{
	WinMove, % WinTitle,, X, Y, W, H
}