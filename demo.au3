
;~ $x = 2
;~ $y = 5
;~ $z = $x + $y
;~ $t = "Nguyên"&"-"&"Đăng"
;~ MsgBox(0,"Kết quả: ",$t)

;~ $f = False And True
;~ MsgBox(5.5,"Là: ",$f)

;~ $x = InputBox("Tính","Nhập x = ")
;~ $y = InputBox("Tính","Nhập y = ")
;~ $z = $x + $y
;~ MsgBox(0,"Kết quả: ",$z)

;~   {!} Phím ALT
;~   {#}Phím WINDOW
;~   {+}Phím SHIFT
;~   {^}Phím CTRL

;~ Send("#r") ; Nhấn phím Window + phím r
;~ WinWaitActive("Run") ; Hàm dừng chờ cho đến khi cửa sổ hiện lên

;~ WinWaitActive("Run")  Hàm dừng chờ cho đến khi cửa sổ hiện lên
;~ Send("VNLT.exe{Enter}")  Gửi vào khung nhâp một chuỗi rồi nhấm Enter
;~ WinWaitActive("[CLASS:VLNT]")  Hàm dừng chờ cho đến khi cửa sổ hiện lên
;~ Send("Today's time/date is {F5}")  Gửi vào khung nhâp một chuỗi rồi nhấm F5

;~  @CR
;~  @LF	 	 các kí tự xuống hàng
;~  @CRLF

;~ $str = InputBox("Đo độ dài chuỗi: ","Nhập chuỗi");
;~ MsgBox(50,"Độ dài chuỗi là: ",StringLen($str));

;----------------------------------- If

;~ $ten = "Tỉnh"
;~ $tuoi = "21"
;~ $noi = "câu hỏi"

;~ $cauhoi = InputBox("Câu hỏi","Nhập câu hỏi:")

;~ $t = ($cauhoi = "tên")
;~ $tu = ($cauhoi = "bao nhiêu tuổi")

;~ If $t Then ; If($t == True) Then
;~ 	$traloi = $ten
;~ ElseIf $tu  Then
;~ 	$traloi = $tuoi      ; bao nhiêu lệnh cũng được
;~ Else
;~ 	$traloi = "Không biết " & $noi
;~ EndIf
;~ MsgBox(0,"Câu trả lời: ",$traloi)

;--------------------------------- Switch


;~ $hour = InputBox("Giờ","Nhập giờ")

;~ Switch $hour
;~     Case 6 To 11
;~         $sMsg = "Good Morning"
;~     Case 12 To 17
;~         $sMsg = "Good Afternoon"
;~     Case 18 To 21
;~         $sMsg = "Good Evening"
;~     Case Else
;~         $sMsg = "What are you still doing up?"
;~ EndSwitch

;~ MsgBox(0, "Kết quả", $sMsg)

;--------------------------------Select

;~ Example()

;~ Func Example()
;~     Local $value = InputBox("Kiểm tra","Nhập giá trị")

;~     Select
;~         Case $value = 1
;~             MsgBox(0, "Giá trị bằng","số")
;~         Case $value = "a"
;~             MsgBox(0, "Giá trị bằng","chuỗi")
;~         Case Else
;~             MsgBox(0, "Không có gì","")
;~     EndSelect
;~ EndFunc   ;==>Example

