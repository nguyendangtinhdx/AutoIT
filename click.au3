$pos = MouseGetPos() ; Láº¥y

MsgBox(0, "V? trí c?a chu?t là(x,y) :", $pos[0] & "," & $pos[1])

$x = InputBox("T?a d?", "Nh?p t?a d? x = ")
$y = InputBox("T?a d?", "Nh?p t?a d? y = ")

MouseMove($x, $y) ; Di chuy?n chu?t d?n t?a d?(100,100)



Global $Paused
HotKeySet("{F1}", "TogglePause")
HotKeySet("{ESC}", "Terminate")

$upgrade = 0
Sleep(0)
While $upgrade < 100

	MouseClick("left", $x, $y, 50, 100) ; Click double chu?t trái ? t?a d? (500,500)
	Sleep(0)
	$upgrade = $upgrade + 1
WEnd


Func TogglePause()
	$Paused = Not $Paused
	While $Paused
		Sleep(100)
		ToolTip('Script is "Paused"', 0, 0)
	WEnd
	ToolTip("")
EndFunc   ;==>TogglePause


Func Terminate()
	Exit 0
EndFunc   ;==>Terminate
