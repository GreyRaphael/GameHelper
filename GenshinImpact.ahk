LControl::
; 左边Ctrl激活Macro
; 右快速移动3次，前移2次，左移一次，五个连击，一个大招E

Loop, 3
{
	Send {d down}
	Sleep, % rand(50, 70)
	Send {d up}
	Click, right, 802, 465
}

Loop, 2
{
	Send {w down}
	Sleep, % rand(50, 70)
	Send {w up}
}

Loop, 1
{
	Send {a down}
	Sleep, % rand(50, 70)
	Send {a up}
}


; 因为有些点击无效，所以需要循环多次，并且每次间隔很小
Loop, 38
{
	Click, 802, 465
	Sleep, % rand(5, 10)
}

Send, e

return


CapsLock::
; CapsLock按键激活Macro
; 5个连击

Loop, 38
{
	Click, 802, 465
	Sleep, % rand(5, 10)
}
Send, e

return


F9::
; 激活Macro
; 捡起所有物品
Loop, 39
{
	Send {f down}
	Sleep, % rand(10, 15)
	Send {f up}
}
return

F8::
; F8激活Macro
;攀爬10秒
Send {w down}
Sleep, 10000
Send {w up}
return

; 数字小键盘8,2,4,6分别激活上下左右冲刺
Numpad8::
dashHead()
return

Numpad4::
dashLeft()
return

Numpad2::
dashBack()
return

Numpad6::
dashRight()
return

; 各种函数体
rand(min, max)
{
	Random, ran, min, max
	return ran
}


dashHead()
{
	Loop, 2
	{
		Send {w down}
		Sleep, % rand(50, 100)
		Send {w up}
		Click, right, 802, 465
	}
}

dashLeft()
{
	Loop, 2
	{
		Send {a down}
		Sleep, % rand(50, 100)
		Send {a up}
		Click, right, 802, 465
	}
}

dashBack()
{
	Loop, 2
	{
		Send {s down}
		Sleep, % rand(50, 100)
		Send {s up}
		Click, right, 802, 465
	}
}

dashRight()
{
	Loop, 2
	{
		Send {d down}
		Sleep, % rand(50, 100)
		Send {d up}
		Click, right, 802, 465
	}
}