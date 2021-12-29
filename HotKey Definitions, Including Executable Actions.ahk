; Functional commands.
:*CO:jpq::「」 {Left 2}
:*CO:rdg::[...]{Space}
:*CO:anotq::≈{Space}

:*:]d::
; Auto-replace current date.
    FormatTime, CurrentDateTime,, d-M-yyyy
    SendInput %CurrentDateTime%
return

; Auto-replacement.
:CO:ckm::☑
:CO:deltq::Δ{Space}
:CO:cels::°
:CO:infn::∞
:CO:ligev::⇌{Space}
:CO:medf::⇒
:CO:fi@::frederikiwersen@hotmail.com

; ASCII, text art.
:CO:tconf::¯_(ツ)_/¯
:CO:hfuck::Hey   ╭∩╮ ◕_◕ ༽╭∩╮
:CO:heyfuck::( ° ͜ʖ͡°)╭∩╮
:CO:tflip::(╯°□°）╯︵ ┻━┻
:CO:twalk::( ͡° ͜ʖ ͡°)╯╲___

; Copypasta.


; Auto-Completion for Twitch Chat.
:*CO:feelsb::FeelsBadMan{Space}
:*CO:feelsg::FeelsGoodMan{Space}
:*CO:babyr::BabyRage{Space}
:*CO:4h::4Head{Space}
:CO:kap::Kappa{Space}
:*CO:bruh::cmonBruh{Space}
:*CO:kona::KKona{Space}
:*CO:poz::PogU{Space}
:*CO:fils::FailFish{Space}
:CO:dansg::DansGame{Space}
:*CO:resd::ResidentSleeper{Space}
:*CO:gigl::EleGiggle{Space}
:*CO:trih::TriHard{Space}
:*CO:brokb::BrokeBack{Space}
:*CO:wutf::WutFace{Space}
:*CO:pgp::PepegaPhone
:*CO:oknd::{:}ok_hand:
:*CO:wch::{:}raised_hand: WeirdChamp{Space}
:*CO:tjoy::{:}joy: :ok_hand:

------------------------------------------------------------------------------------------------------------
  #Esc:: WinHide A
  #F1::  Run onenote.exe
  #F2::  Run winword.exe
  #F3::  Run excel.exe 
; #F4::  
; #F5::  
; #F6::  
; #F7::  
; #F8::  
; #F9::  
; #F10:: 
; #F11::
; #F12:: 

  #Del:: Reload

; #½::
  #1::   Run "C:"
; #2::
; #3::
; #4::
; #5::
; #6::
 
; #q::
; #w::   
  #e::  Run "C:\Users\frede\AppData\Local\Programs\Messenger\Messenger.exe"
; #r::  Run command-line.
  #t::  Run "C:\Program Files\VeraCrypt\VeraCrypt.exe"
  #y::  Run "C:\Users\frede\Downloads\Studie\Brugerorienteret Design\to-do list\index.html"
; #u::
; #i::
  #o::  Run "C:\Program Files (x86)\Hearthstone\Hearthstone Beta Launcher.exe"
  #p::  Run "C:\Users\frede\AppData\Local\HearthstoneDeckTracker\HearthstoneDeckTracker.exe"
  #å::  Run "C:\Users\frede\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Steam\Rocket League.url"

  #a::  Run "C:\Users\frede\Dropbox\AutoHotkey\Fast-forward.ahk"
  #s::  Run "C:\Users\frede\Downloads\Studie"
  #d::
  #f::  Run "C:\Users\frede\AppData\Roaming\Spotify\Spotify.exe"
  #g::  Run "C:\Users\frede\Dropbox\"
; #h::  Possible hotkey conflict.

; #j::
; #k::
; #l::
; #æ::
; #ø::

; #z:: 
  #x::  Run "C:\Users\frede\Downloads\Memex\"
  #c::  Run "C:\Users\frede\Downloads\Memex\SLL"
  #v::  Run "C:\Users\frede\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Steam\New World.url"
  #b::  Run, EpicGamesLauncher.exe com.epicgames.launcher://apps/0584d2013f0149a791e7b9bad0eec102%3A6e563a2c0f5f46e3b4e88b5f4ed50cca%3A9d2d0eb64d5c44529cece33fe2a46482?action=launch, C:\Program Files (x86)\Epic Games\Launcher\Portal\Binaries\Win64\
; #n::
  #m::  Run "C:\Users\frede\Desktop\OpenHardwareMonitor\OpenHardwareMonitor.exe"

----------------------------------------------------------------------------------------------------------
  !½::WinSet, Transparent, 0, A
  !1::WinMove, A, , -8, 0, 960, 1047		; for regular titlebar size on Windows 10.
  !2::WinMove, A, , 936, 0, 992, 1047		; 1040 for Discord.
  !3::WinMove, A, , 1913, 0, 960, 1047
  !4::WinMove, A, , 2862, 0, 978, 1039
  !5::WinSet, Transparent, 255, A

  !NumPad1:: Run https://www.twitch.tv/directory
  !NumPad2::
      SetTitleMatchMode 2
      WinActivate, Google Chrome
      Send {LCtrl Down}{t}{LCtrl Up}
      Send https://genius.com/search?q=
  return

; !NumPad3::
  !NumPad4:: Run https://brightspace.au.dk/d2l/le/lessons/27874/units/322058
  !Numpad5:: Run https://brightspace.au.dk/d2l/le/lessons/27869/units/292892
  !NumPad6:: Run https://brightspace.au.dk/d2l/le/lessons/32007/units/348887
  !NumPad7:: Run https://play.typeracer.com/
  !NumPad8:: Run https://10fastfingers.com/typing-test/english
  !NumPad9:: Run http://libgen.rs/

; !a - Make current window AlwaysOnTop.

----------------------------------------------------------------------------------------------------------
+Space::SendInput {,}{.}{.}{.}{Space}
NumPadDown:: Run "C:\Users\frede\Dropbox\Gaming\Gaming.xlsx"

---------------------------------------------------------------------------------------------------
    ; Mouse wheel functions.

~LControl & WheelUp::
~LControl & WheelDown::

---------------------------------------------------------------------------------------------------
    ; Quick table-formatting tools for OneNote.

#IfWinActive ahk_class Framework::CFrame
	^r::
		DoubleLineSeparator := "|| "

		Send {Control Down}{Enter}{Control Up}
		SendRaw %DoubleLineSeparator%
		Send {Control Down}{b}{Control Up}
	return
	
	^f::
		TripleDashSeparator := "--- "

		Send {Control Down}{Enter}{b}{Control Up}
		SendRaw %TripleDashSeparator%	
	return

---------------------------------------------------------------------------------------------------
     ; Generic AlwaysOnTop window function.
SetTitleMatchMode, 2
#InstallKeybdHook
#SingleInstance force

!a::
    WinGet, currentWindow, ID, A
    WinGet, ExStyle, ExStyle, ahk_id %currentWindow%

    if (ExStyle & 0x8) {                                    ; 0x8 is WS_EX_TOPMOST.
       Winset, AlwaysOnTop, off, ahk_id %currentWindow%
       SplashImage,, x0 y0 b fs12, OFF always on top.
       Sleep, 1500
       SplashImage, Off
    } else {
       WinSet, AlwaysOnTop, on, ahk_id %currentWindow%
       SplashImage,,x0 y0 b fs12, ON always on top.
       Sleep, 1500
       SplashImage, Off
    }
return

TurnOffSI:
    SplashImage, off
    SetTimer, TurnOffSI, 1000, Off
return