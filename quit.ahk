#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Control::
KeyWait Control, T0.5
if ErrorLevel{
	Send {Control}
	return
}
WinGetActiveTitle, Title
IfInString, Title, IntelliJ
{
	return
}
CloseActiveWin()
return	


MButton::
KeyWait MButton, T0.5
if ErrorLevel {
	Send {MButton}
	return
}	
CloseActiveWin()
return	

CloseActiveWin(){
	WinGetClass, class, A
	IfInString, class, Chat
	{
	    send !{F4}
	    return
	}
	WinGetActiveTitle, Title
	IfInString, Title, Firefox
	{
	    send ^w
	    return
	}
	IfInString, Title, AutoHotkey
	{
	    send {esc}
	    return
	}
	else
	WinClose, %Title%
	return 
}




