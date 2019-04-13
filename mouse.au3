


$pos = MouseGetPos() ; Lấy tọa độ chuột

MsgBox(0, "Vị trí của chuột là(x,y) :", $pos[0] & "," & $pos[1])

$x = InputBox("Tọa độ","Nhập tọa độ x = ")
$y = InputBox("Tọa độ","Nhập tọa độ y = ")

MouseMove ($x,$y) ; Di chuyển chuột đến tọa độ(100,100)

MouseClick("left", $x,$y , 99999999999999999) ; Click double chuột trái ở tọa độ (500,500)
;~ MouseClick("left", $x,$y , 99999) ; Click double chuột trái ở tọa độ (500,500)
