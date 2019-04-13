#include <GUIConstantsEx.au3>
#include <MsgBoxConstants.au3>
Global $check
	Local $hGUI = GUICreate("Chọn",200,80) ; will create a dialog box that when displayed is centered
    Local $idRadio1 = GUICtrlCreateRadio("Chuột trái", 10, 10, 120, 20)
    Local $idRadio2 = GUICtrlCreateRadio("Chuột phải", 10, 40, 120, 20)

    GUISetState(@SW_SHOW) ; will display an  dialog box with 1 checkbox
    Local $idMsg

    While 1
        $idMsg = GUIGetMsg()
        Select
			Case $idMsg = $GUI_EVENT_CLOSE
                Exit
            Case $idMsg = $idRadio1
;~ 				InputBox("Chọn chuột","","Bạn đã chọn chuột trái")
				$check = 0
				GUISetState(@SW_HIDE)
				$idMsg = $GUI_EVENT_CLOSE
                ExitLoop
            Case $idMsg = $idRadio2
;~ 				InputBox("Bắt đầu lấy tọa độ","","Bạn đã chọn chuột phải")
				$check = 1
				GUISetState(@SW_HIDE)
				$idMsg = $GUI_EVENT_CLOSE
                ExitLoop
        EndSelect
    WEnd


;~ GUISetState(@SW_HIDE)
MsgBox(0, "Nhấn OK để lấy tọa độ","Trỏ chuột vào vị trí cần lấy tọa độ và nhấn Enter")
$pos = MouseGetPos() ; Lấy tọa độ chuột

MsgBox(0, "Vị trí chuột (x,y) :", $pos[0] & "," & $pos[1])

MouseMove($pos[0], $pos[1]) ; Di chuyển chuột đến tọa độ (100,100)

Global $Paused
HotKeySet("{F1}", "TogglePause")
HotKeySet("{ESC}", "Terminate")

$upgrade = 0
Sleep(0)
If ($check == 0) Then
	While $upgrade < 100
		MouseClick("left", $pos[0], $pos[1], 50,0) ; Click double chuột trỏ tọa độ (500,500)
		Sleep(0)
		$upgrade = $upgrade + 1
	WEnd
EndIf
If ($check == 1) Then
	While $upgrade < 100
		MouseClick("right", $pos[0], $pos[1], 50,0) ; Click double chuột trỏ tọa độ (500,500)
		Sleep(0)
		$upgrade = $upgrade + 1
	WEnd
EndIf

Func TogglePause()
	$Paused = Not $Paused
	While $Paused
		Sleep(100)
		ToolTip('Đã dừng (Nhấn ESC để Thoát - F1 để Play/Pause)', 0, 0)
	WEnd
	ToolTip("")
EndFunc   ;==>TogglePause

Func Terminate()
	Exit 0
EndFunc   ;==>Terminate




