;;上下左右移動、無変換キーをScrollLockに割り当てた状態を想定
ScrollLock & l::Send, {Blind}{right}
ScrollLock & j::Send, {Blind}{left}
ScrollLock & i::Send, {Blind}{up}
ScrollLock & k::Send, {Blind}{down}

;;単語移動と行頭末尾移動
ScrollLock & o::Send, {Blind}^{right}
ScrollLock & u::Send, {Blind}^{left}

;;マウスクリックとエンター
ScrollLock & Space::Send, {Blind}{Enter}
ScrollLock & w::MouseClick,left,,,,,D
ScrollLock & w Up::MouseClick,left,,,,,U
ScrollLock & R::MouseClick,right,,,,,D
ScrollLock & R Up::MouseClick,right,,,,,U

;;無変換キー＋CTRLでマウス移動
ScrollLock & s:: MouseMove, -20,0,0,R
ScrollLock & f:: MouseMove, 20,0,0,R
ScrollLock & e:: MouseMove, 0,-20,0,R
ScrollLock & d:: MouseMove, 0,20,0,R

ScrollLock & z:: MouseMove, -400,0,10,R
ScrollLock & v:: MouseMove, 400,0,10,R
ScrollLock & c:: MouseMove, 0,-400,10,R
ScrollLock & x:: MouseMove, 0,400,10,R
Return

;;参考サイト(wiki)
;;http://ahkwiki.net/Top
