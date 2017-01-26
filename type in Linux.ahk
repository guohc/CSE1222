#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
sendMode, Event
setkeyDelay, 10

Gui,Add,Edit,r30 w450 vText, put the codes here, press Ctrl+u to paste into emacs `n`nImportant `nYou will need to delete # and {}, and manually add them back
Gui,Show,,CSE1222 code transferrer
^u:: 
 {
	Gui,Submit, NoHide
	send %Text%
    Return
 }