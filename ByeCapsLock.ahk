;Capslock modifiers

;================================================================================================
;  CapsLock processing.  Must double tap CapsLock to toggle CapsLock mode on or off.
;================================================================================================
; Must double tap CapsLock to toggle CapsLock mode on or off.
CapsLock::
    KeyWait, CapsLock                                                   ; Wait forever until Capslock is released.
    KeyWait, CapsLock, D T0.2                                           ; ErrorLevel = 1 if CapsLock not down within 0.2 seconds.
    if ((ErrorLevel = 0) && (A_PriorKey = "CapsLock") )                 ; Is a double tap on CapsLock?
        {
        SetCapsLockState, % GetKeyState("CapsLock","T") ? "Off" : "On"  ; Toggle the state of CapsLock LED
        }
return

;Numbers on top row
CapsLock & q::1
CapsLock & w::2
CapsLock & e::3
CapsLock & r::4
CapsLock & t::5
CapsLock & y::6
CapsLock & u::7
CapsLock & i::8
CapsLock & o::9
CapsLock & p::0

;Middle Row: s = ( || d = ) || j = LEFT || h = ESC || k = DOWN || l = UP || ; = RIGHT

CapsLock & s::(
CapsLock & d::)
CapsLock & j::Left
CapsLock & k::Down
CapsLock & l::Up
CapsLock & `;::Right
CapsLock & h::Esc

;Arithmetic: f = = || c = + || v = - || x = *
CapsLock & f::=
CapsLock & c::+
CapsLock & v::-
CapsLock & x::*

;Random programming keys
CapsLock & n::!
CapsLock & ,::&
CapsLock & .::|
CapsLock & m::_

;Space is backspace
CapsLock & Space::Backspace

