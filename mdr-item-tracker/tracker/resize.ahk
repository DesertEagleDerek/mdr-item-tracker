#NoTrayIcon
#NoEnv
#include %A_ScriptDir%\functions.ahk

if (WinTitle != "")
{
	if (IsLargeMode == 1)
	{
		TargetWindow(-7, 0, 1576, 295, WinTitle)
	}
	else
	{
		TargetWindow(-7, 0, 1576, 103, WinTitle)
	}
}