#NoEnv

global SelectedMode = 0
global MovementAmount = 1
MsgBox, F5 = Select X/Y`nF6 = Select W/H`nF8 = Movement Speed`nF9 = Copy To Clipboard`nEsc = Quit Script`nArrow Keys = Move / Resize

F5::SelectXY()
F6::SelectWH()
F8::MovementSpeed()
F9::CopyToClipboard()
Esc::ExitApp
Up::Up()
Down::Down()
Left::Left()
Right::Right()

MovementSpeed()
{
	if (MovementAmount == 1)
	{
		MovementAmount = 10
	}
	else
	{
		MovementAmount = 1
	}
}

CopyToClipboard()
{
	WinGetPos, X, Y, W, H, A
	clipboard = %X%, %Y%, %W%, %H%
	MsgBox, %X%, %Y%, %W%, %H%
}

SelectXY()
{
	SelectedMode = 0
}

SelectWH()
{
	SelectedMode = 1
}

Up()
{
	WinGetPos, X, Y, W, H, A
	if (SelectedMode == 0)
	{
		Y := Y - MovementAmount
	}
	else if (SelectedMode == 1)
	{
		H := H - MovementAmount
	}
	WinMove, A,, X, Y, W, H
}

Down()
{
	WinGetPos, X, Y, W, H, A
	if (SelectedMode == 0)
	{
		Y := Y + MovementAmount
	}
	else if (SelectedMode == 1)
	{
		H := H + MovementAmount
	}
	WinMove, A,, X, Y, W, H
}

Left()
{
	WinGetPos, X, Y, W, H, A
	if (SelectedMode == 0)
	{
		X := X - MovementAmount
	}
	else if (SelectedMode == 1)
	{
		W := W - MovementAmount
	}
	WinMove, A,, X, Y, W, H
}

Right()
{
	WinGetPos, X, Y, W, H, A
	if (SelectedMode == 0)
	{
		X := X + MovementAmount
	}
	else if (SelectedMode == 1)
	{
		W := W + MovementAmount
	}
	WinMove, A,, X, Y, W, H
}