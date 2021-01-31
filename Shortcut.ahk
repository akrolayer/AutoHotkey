;;上下左右移動、無変換キーをF13に割り当てた状態を想定
F13 & l::Send, {Blind}{right}
F13 & j::Send, {Blind}{left}
F13 & i::Send, {Blind}{up}
F13 & k::Send, {Blind}{down}

;;単語移動と行頭末尾移動
F13 & o::Send, {Blind}^{right}
F13 & u::Send, {Blind}^{left}

;;マウスクリックとエンター
F13 & Space::Send, {Blind}{Enter}
F13 & w::MouseClick,left,,,,,D
F13 & w Up::MouseClick,left,,,,,U
F13 & R::MouseClick,right,,,,,D
F13 & R Up::MouseClick,right,,,,,U

;;無変換キー＋キーでマウス移動
F13 & s:: MouseMove, -20,0,0,R
F13 & f:: MouseMove, 20,0,0,R
F13 & e:: MouseMove, 0,-20,0,R
F13 & d:: MouseMove, 0,20,0,R

F13 & z:: MouseMove, -400,0,10,R
F13 & v:: MouseMove, 400,0,10,R
F13 & c:: MouseMove, 0,-400,10,R
F13 & x:: MouseMove, 0,400,10,R
Return

F13::
    KeyWait, F13, T0.5
if ErrorLevel == 1  
  	Send, {F13}
	else
    	Send,{BS}
Return