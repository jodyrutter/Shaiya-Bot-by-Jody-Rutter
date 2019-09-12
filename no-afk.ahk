; Script to prevent character AFK on EG Shaiya.
; @author Jody Rutter 
; @version 9/11/2019 v1.0
^j::
$1::
Loop {
	send {w down}
	sleep, 10
	send {w up}
	sleep, 2500
	send {1 down}
	sleep, 10
	send {1 up}
	sleep, 5000
	send {c down}
	sleep, 5000
	send {c up}
	sleep, 99000
}