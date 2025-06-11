
sc079 & l::Send "{Blind}{right}"
sc079 & j::Send "{Blind}{left}"
sc079 & i::Send "{Blind}{up}"
sc079 & k::Send "{Blind}{down}"


sc079 & o::Send "{Blind}^{right}"
sc079 & u::Send "{Blind}^{left}"

*#up::MouseMove 0, -10, 0, "R"  ; Win+UpArrow hotkey => Move cursor upward
*#Down::MouseMove 0, 10, 0, "R"  ; Win+DownArrow => Move cursor downward
*#Left::MouseMove -10, 0, 0, "R"  ; Win+LeftArrow => Move cursor to the left
*#Right::MouseMove 10, 0, 0, "R"  ; Win+RightArrow => Move cursor to the right

*<#RCtrl::  ; LeftWin + RightControl => Left-click (hold down Control/Shift to Control-Click or Shift-Click).
{
    SendEvent "{Blind}{LButton down}"
    KeyWait "RCtrl"  ; Prevents keyboard auto-repeat from repeating the mouse click.
    SendEvent "{Blind}{LButton up}"
}

*<#AppsKey::  ; LeftWin + AppsKey => Right-click
{
    SendEvent "{Blind}{RButton down}"
    KeyWait "AppsKey"  ; Prevents keyboard auto-repeat from repeating the mouse click.
    SendEvent "{Blind}{RButton up}"
}

sc079::
{
if KeyWait("sc079","T0.2"){
send "{BS}"
}
else{
send "{sc079}"
;KeyWait "sc079"
}
return
}


Return
