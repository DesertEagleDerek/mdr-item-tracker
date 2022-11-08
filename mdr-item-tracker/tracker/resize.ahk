#NoTrayIcon
#NoEnv
#include %A_ScriptDir%\functions.ahk

if (WinTitle != "")
{
	if (IsLargeMode == 1)
	{
		TargetWindow(-7, 0, 1576, 295, WinTitle)
	}
	else if (IsQuadMode == 1)
	{
		TargetWindow(-7, 0, 412, 295, WinTitle)
	}
	else if (IsVerticalMode == 1)
	{
		TargetWindow(-7, 0, 156, 807, WinTitle)
	}
	else
	{
		TargetWindow(-7, 0, 1576, 103, WinTitle)
	}
}