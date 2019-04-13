#include <GUIConstantsEx.au3>
#include <MsgBoxConstants.au3>

Example()

Func Example()
    GUICreate("Chọn chuột trái hoặc chuột phải") ; will create a dialog box that when displayed is centered

    Local $idRadio1 = GUICtrlCreateRadio("Trái", 10, 10, 120, 20)
    Local $idRadio2 = GUICtrlCreateRadio("Phải", 10, 40, 120, 20)
    GUICtrlSetState($idRadio2, $GUI_CHECKED)

    GUISetState(@SW_SHOW) ; will display an  dialog box with 1 checkbox

    Local $idMsg
    ; Loop until the user exits.
    While 1
        $idMsg = GUIGetMsg()
        Select
            Case $idMsg = $GUI_EVENT_CLOSE
                ExitLoop
            Case $idMsg = $idRadio1 And BitAND(GUICtrlRead($idRadio1), $GUI_CHECKED) = $GUI_CHECKED
                MsgBox($MB_SYSTEMMODAL, 'Info:', 'Bạn đã chọn chuột trái')
            Case $idMsg = $idRadio2 And BitAND(GUICtrlRead($idRadio2), $GUI_CHECKED) = $GUI_CHECKED
                MsgBox($MB_SYSTEMMODAL, 'Info:', 'Bạn đã chọn chuột phải')
        EndSelect
    WEnd
EndFunc   ;==>Example
