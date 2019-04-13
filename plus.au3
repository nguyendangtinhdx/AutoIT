#include <GuiConstantsEx.au3>
#include <Misc.au3>

$dll = DllOpen("user32.dll")

$number = 500
$GUI = GUICreate("Decrease/Increase Value", 200, 150)
$edit = GUICtrlCreateLabel($number,10, 70, 100, 20)
$up = GUICtrlCreateButton("Up", 80, 40, 50, 20)
$down = GUICtrlCreateButton("Down", 80, 65, 50, 20)

GUISetState()

While 1

    If _IsPressed("26", $dll) Then ; If UP pressed
        sleep(100)
        GUICtrlSetData($edit, $number + 1)
        $number += 1
    ElseIf _IsPressed("28", $dll) Then ; If Down pressed
        sleep(100)
        GUICtrlSetData($edit, $number - 1)
        $number -= 1
    EndIf

    Switch GUIGetMsg()
        Case $GUI_EVENT_CLOSE
            Exit
            DllClose($dll)
        Case $up
            GUICtrlSetData($edit, $number + 1)
            $number += 1
        Case $down
            GUICtrlSetData($edit, $number - 1)
            $number -= 1
    EndSwitch

WEnd