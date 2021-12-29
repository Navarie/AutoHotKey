#SingleInstance, Force
#NoEnv                       ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn                        ; Enable warnings to assist with detecting common errors.
SendMode Input               ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ISSUE: Clipboard does not clear.  

Array := [] ; Temporary array for holding parsed clipboard contents
~^c:: ; pass-through
	clipboard =  ; clear clipboard 
	Send ^c 
	ClipWait ; wait for clipboard to be populated
	Loop, parse, clipboard, `n, `r ; loop through clipboard, seperate at newline
	{
	    Array.Push(A_LoopField) ; push current line of clipboard to array
	}
return


^g:: ; 
	address := ActiveFolderPath() 
	for index, element in Array {
		SplitPath, element, name, dir, ext, name_no_ext, drive ; split the path to corresponding variables 
		FileCreateShortcut, %element%, %address%%name_no_ext%.lnk 
	}	
return

ActiveFolderPath(WinTitle="A")
{
    WinGetClass Class, %WinTitle%
    If (Class ~= "Progman|WorkerW") ; desktop
        WinPath := A_Desktop
    Else {
        WinGetText, WinPath, A
        RegExMatch(WinPath, "Address:.*", WinPath)
        WinPath := RegExReplace(WinPath, "Address: ") ; remove "Address: " part
    }

    WinPath := RegExReplace(WinPath, "\\+$") ; remove single or double trailing backslash
    If WinPath ; if path not empty, append single backslash
        WinPath .= "\"
    Return WinPath
}