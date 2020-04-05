﻿; Script to cycle through pots on EG Shaiya.
; @author Jody Rutter 
; @version 4/05/2020 v1.0
; Notes: Please put dispel pots on the numberpad hot bar in positions 1,2,3,4,5.
; Enter will suspend the script until it is hit again (incase a user is typing a message).
; Program starts assuming a user is not typing a message.
; If you press 'enter' in another window, the script will count it.
; F12 will pause the program and, when it resumes, the program will start from its initial state.
; Program will have a random time of up to 50ms between using pots.
f12::
Pause
Suspend
EnterPressed := true
return
^j::
EnterPressed := true
Loop{
	if(EnterPressed = true){
		Sleep, Rand(50)
		if(EnterPressed = true){
			send {Numpad1 down}
			send {Numpad1 up}
		}
		Sleep, Rand(50)
		if(EnterPressed = true){
			send {Numpad2 down}
			send {Numpad2 up}
		}
		Sleep, Rand(50)
		if(EnterPressed = true){
			send {Numpad3 down}
			send {Numpad3 up}
		}
		Sleep, Rand(50)
		if(EnterPressed = true){
			send {Numpad4 down}
			send {Numpad4 up}
		}
		Sleep, Rand(50)
		if(EnterPressed = true){
			send {Numpad5 down}
			send {Numpad5 up}
		}
	}
}
~Enter::
{
	if(EnterPressed = true){
		EnterPressed := false
	}
	else{
		EnterPressed := true
	}
}
Rand( a=0.0, b=1 ) {
	IfEqual,a,,Random,,% r := b = 1 ? Rand(0,0xFFFFFFFF) : b
	Else Random,r,a,b
	Return r
}