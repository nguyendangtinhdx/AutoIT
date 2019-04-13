#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=..\..\Downloads\game.ico
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <ListViewConstants.au3>
#include <ProgressConstants.au3>
#include <WindowsConstants.au3>
#include <GuiListView.au3>
#include <WinAPI.au3>
#include <Windowsconstants.au3>


Global $Form = GUICreate("Lựa chọn loại Auto", 300, 100)
Global $btnAutoLogin = GUICtrlCreateButton("Đăng nhập", 16, 30, 105, 33)
Global $btnAutoClick = GUICtrlCreateButton("Click chuột", 177, 30, 105, 33)
GUICtrlCreateLabel("Nguyễn Đăng Tỉnh",205,80,200,50)

Global $Paused
Func TogglePause()
	$Paused = Not $Paused
	While $Paused
		Sleep(100)
		ToolTip("Đã dừng (Nhấn ESC để Thoát - F1 để Play/Pause)",0,0,"Thông báo",1,1)
	WEnd
	ToolTip("")
EndFunc   ;==>TogglePause

Func Terminate()
	Exit 0
EndFunc   ;==>Terminate


GUISetState(@SW_SHOW)
Local $idMsg
	While 1
        $idMsg = GUIGetMsg()
        Switch $idMsg
			Case $GUI_EVENT_CLOSE
                Exit
			Case $btnAutoLogin

				Dim $item[11]
				Global $Form1_1 = GUICreate("Auto Login", 450, 300)
				Global $btnLogin = GUICtrlCreateButton("Đăng nhập", 16, 250, 105, 33)
				Global $btnLogout = GUICtrlCreateButton("Đăng xuất", 172, 250, 105, 33)
				Global $lstAccount = GUICtrlCreateListView("|Tên nhân vật   |   Nhân vật thứ|   Vị trí màn hình thứ", 16, 8, 417, 233,-1,$LVS_EX_CHECKBOXES) ;$LVS_EX_CHECKBOXES th?check box v?listview
				$item[1] = GUICtrlCreateListViewItem("|Quách Tỉnh|               1|               1", $lstAccount)
				$item[2] = GUICtrlCreateListViewItem("|MichaelJackson|               2|               4", $lstAccount)
				$item[3] = GUICtrlCreateListViewItem("|tinhbidx|               1|               2", $lstAccount)
				$item[4] = GUICtrlCreateListViewItem("|tinhbidx2-NoneName|               1|               3", $lstAccount)
				$item[5] = GUICtrlCreateListViewItem("|tinhbidx2-PROVINCE|               2|               3", $lstAccount)
				$item[6] = GUICtrlCreateListViewItem("|tinhbidx3|               1|               2", $lstAccount)
				$item[7] = GUICtrlCreateListViewItem("|tinhbidx4|               1|               3", $lstAccount)
				$item[8] = GUICtrlCreateListViewItem("|tinhbidx5|               1|               2", $lstAccount)
				$item[9] = GUICtrlCreateListViewItem("|tinhbidx00|               1|               2", $lstAccount)
				$item[10] = GUICtrlCreateListViewItem("|tinhbidx01|               1|               3", $lstAccount)

				GUICtrlSendMsg(-1, $LVM_SETCOLUMNWIDTH, 0, 30)
				GUICtrlSendMsg(-1, $LVM_SETCOLUMNWIDTH, 1, 150)
				GUICtrlSendMsg(-1, $LVM_SETCOLUMNWIDTH, 2, 120)
				Global $btnExit = GUICtrlCreateButton("Thoát", 330, 250, 105, 33)
				;~ Global $Progress1 = GUICtrlCreateProgress(16, 248, 248, 25)
				GUISetState(@SW_SHOW)
				#EndRegion ### END Koda GUI section ###

				HotKeySet("{F1}", "TogglePause")
				HotKeySet("{ESC}", "Terminate")

				While 1
					$nMsg = GUIGetMsg()
					Switch $nMsg
						Case $GUI_EVENT_CLOSE
							Exit
						Case $btnLogin
							For $x = 1 to 10
								If _GUICtrlListView_GetItemChecked($lstAccount,$x-1) Then
								Switch $x
									Case 1
										Run("D:\VLNT\Game.exe", "D:\VLNT")
										Sleep(1000)
										Send("{ENTER}")
										Sleep(500)
										Send("{ENTER}")
										Sleep(500)
										Send("{ENTER}")
										Sleep(500)
										ControlSend("","","","tinhnguyendangdx")
										Sleep(500)
										Send("{ENTER}")
										ControlSend("","","","tinhbi")
										Sleep(500)
										Send("{ENTER}")
										Sleep(500)
										Send("{ENTER}")
									Case 2
										Run("D:\VLNT\Game.exe", "D:\VLNT")
										Sleep(500)
										MouseClickDrag($MOUSE_CLICK_LEFT, 398, 9, 955, 9,0)
										MouseMove(955,174)
										Send("{ENTER}")
										Sleep(500)
										Send("{ENTER}")
										Sleep(500)
										Send("{ENTER}")
										Sleep(500)
										ControlSend("","","","nguyendangtinhdx")
										Sleep(1000)
										Send("{ENTER}")
										ControlSend("","","","812237559")
										Sleep(500)
										Send("{ENTER}")
										Sleep(500)
;~ 										MouseClick("left", 1117, 348, 1,5)
										Send("{RIGHT}")
										Sleep(500)
										Send("{ENTER}")
									Case 3
										Run("D:\VLNT\Game.exe", "D:\VLNT")
										Sleep(500)
										MouseClickDrag($MOUSE_CLICK_LEFT, 398, 9, 577, 9,0)
										MouseMove(577,174)
										Send("{ENTER}")
										Sleep(500)
										Send("{ENTER}")
										Sleep(500)
										Send("{ENTER}")
										Sleep(500)
										ControlSend("","","","tinhbidx")
										Sleep(1000)
										Send("{ENTER}")
										ControlSend("","","","812237559")
										Sleep(500)
										Send("{ENTER}")
										Sleep(500)
										Send("{ENTER}")
									Case 4
										Run("D:\VLNT\Game.exe", "D:\VLNT")
										Sleep(500)
										MouseClickDrag($MOUSE_CLICK_LEFT, 398, 9, 788, 9,0)
										MouseMove(788,174)
										Send("{ENTER}")
										Sleep(500)
										Send("{ENTER}")
										Sleep(500)
										Send("{ENTER}")
										Sleep(500)
										ControlSend("","","","tinhbidx2")
										Sleep(1000)
										Send("{ENTER}")
										ControlSend("","","","812237559")
										Sleep(500)
										Send("{ENTER}")
										Sleep(500)
										Send("{ENTER}")
									Case 5
										Run("D:\VLNT\Game.exe", "D:\VLNT")
										Sleep(500)
										MouseClickDrag($MOUSE_CLICK_LEFT, 398, 9, 788, 9,0)
										MouseMove(788,174)
										Send("{ENTER}")
										Sleep(500)
										Send("{ENTER}")
										Sleep(500)
										Send("{ENTER}")
										Sleep(500)
										ControlSend("","","","tinhbidx2")
										Sleep(1000)
										Send("{ENTER}")
										ControlSend("","","","812237559")
										Sleep(500)
										Send("{ENTER}")
										Sleep(500)
;~ 										MouseClick("left", 792, 339, 1,5)
										Send("{RIGHT}")
										Sleep(500)
										Send("{ENTER}")
									Case 6
										Run("D:\VLNT\Game.exe", "D:\VLNT")
										Sleep(500)
										MouseClickDrag($MOUSE_CLICK_LEFT, 398, 9, 577, 9,0)
										MouseMove(577,174)
										Send("{ENTER}")
										Sleep(500)
										Send("{ENTER}")
										Sleep(500)
										Send("{ENTER}")
										Sleep(500)
										ControlSend("","","","tinhbidx3")
										Sleep(1000)
										Send("{ENTER}")
										ControlSend("","","","812237559")
										Sleep(500)
										Send("{ENTER}")
										Sleep(500)
										Send("{ENTER}")
									Case 7
										Run("D:\VLNT\Game.exe", "D:\VLNT")
										Sleep(500)
										MouseClickDrag($MOUSE_CLICK_LEFT, 398, 9, 788, 9,0)
										MouseMove(788,174)
										Send("{ENTER}")
										Sleep(500)
										Send("{ENTER}")
										Sleep(500)
										Send("{ENTER}")
										Sleep(500)
										ControlSend("","","","tinhbidx4")
										Sleep(1000)
										Send("{ENTER}")
										ControlSend("","","","812237559")
										Sleep(500)
										Send("{ENTER}")
										Sleep(500)
										Send("{ENTER}")
									Case 8
										Run("D:\VLNT\Game.exe", "D:\VLNT")
										Sleep(500)
										MouseClickDrag($MOUSE_CLICK_LEFT, 398, 9, 577, 9,0)
										MouseMove(577,174)
										Send("{ENTER}")
										Sleep(500)
										Send("{ENTER}")
										Sleep(500)
										Send("{ENTER}")
										Sleep(500)
										ControlSend("","","","tinhbidx5")
										Sleep(1000)
										Send("{ENTER}")
										ControlSend("","","","812237559")
										Sleep(500)
										Send("{ENTER}")
										Sleep(500)
										Send("{ENTER}")
									Case 9
										Run("D:\VLNT\Game.exe", "D:\VLNT")
										Sleep(500)
										MouseClickDrag($MOUSE_CLICK_LEFT, 398, 9, 577, 9,0)
										MouseMove(577,174)
										Send("{ENTER}")
										Sleep(500)
										Send("{ENTER}")
										Sleep(500)
										Send("{ENTER}")
										Sleep(500)
										ControlSend("","","","tinhbidx00")
										Sleep(1000)
										Send("{ENTER}")
										ControlSend("","","","812237559")
										Sleep(500)
										Send("{ENTER}")
										Sleep(500)
										Send("{ENTER}")
									Case 10
										Run("D:\VLNT\Game.exe", "D:\VLNT")
										Sleep(500)
										MouseClickDrag($MOUSE_CLICK_LEFT, 398, 9, 788, 9,0)
										MouseMove(788,174)
										Send("{ENTER}")
										Sleep(500)
										Send("{ENTER}")
										Sleep(500)
										Send("{ENTER}")
										Sleep(500)
										ControlSend("","","","tinhbidx01")
										Sleep(1000)
										Send("{ENTER}")
										ControlSend("","","","812237559")
										Sleep(500)
										Send("{ENTER}")
										Sleep(500)
										Send("{ENTER}")
								EndSwitch
							EndIf
							Next

						Case $btnLogout
							MouseClick("left", 60, 12, 1,5)
							MouseClick("left", 780, 12, 1,5)
							Send("{ENTER}")
							MouseClick("left", 960, 12, 1,5)
							Send("{ENTER}")
							MouseClick("left", 1170, 12, 1,5)
							Send("{ENTER}")
							MouseClick("left", 1338, 12, 1,5)
							Send("{ENTER}")
						Case $btnExit
							Exit

					EndSwitch
				WEnd

			Case $btnAutoClick
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
							$check = 0
							GUISetState(@SW_HIDE)
							$idMsg = $GUI_EVENT_CLOSE
							ExitLoop
						Case $idMsg = $idRadio2
							$check = 1
							GUISetState(@SW_HIDE)
							$idMsg = $GUI_EVENT_CLOSE
							ExitLoop
					EndSelect
				WEnd


				MsgBox(0, "Nhấn OK để lấy tọa độ","Trỏ chuột vào vị trí cần lấy tọa độ và nhấn Enter")
				$pos = MouseGetPos() ; Lấy tọa độ chuột

;~ 				MsgBox(0, "Vị trí chuột (x,y) :", $pos[0] & "," & $pos[1])
				$x  = $pos[0]
				$y  = $pos[1]
				$t  = $x & "/" & $y
				ToolTip($t,0,0,"Tọa độ",1,1)
				MouseMove($pos[0], $pos[1]) ; Di chuyển chuột đến tọa độ (100,100)

				Global $Paused
				HotKeySet("{F1}", "TogglePause")
				HotKeySet("{ESC}", "Terminate")

				$upgrade = 0
				Sleep(0)
				If ($check == 0) Then
					While $upgrade < 100
						$x  = $pos[0]
						$y  = $pos[1]
						$t  = $x & "/" & $y
						ToolTip($t,0,0,"Tọa độ",1,1)
						$pos = MouseGetPos() ; Lấy tọa độ chuột
						MouseClick("left", $pos[0], $pos[1], 50,0) ; Click double chuột trỏ tọa độ (500,500)
						Sleep(0)
						$upgrade = $upgrade + 1
					WEnd
				EndIf
				If ($check == 1) Then
					While $upgrade < 100
						$x  = $pos[0]
						$y  = $pos[1]
						$t  = $x & "/" & $y
						ToolTip($t,0,0,"Tọa độ",1,1)
						$pos = MouseGetPos() ; Lấy tọa độ chuột
						MouseClick("right", $pos[0], $pos[1], 50,0) ; Click double chuột trỏ tọa độ (500,500)
						Sleep(0)
						$upgrade = $upgrade + 1
					WEnd
				EndIf

        EndSwitch
    WEnd


