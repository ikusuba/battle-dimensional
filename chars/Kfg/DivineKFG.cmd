;-| Button Remapping |-----------------------------------------------------
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s
 
;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15
; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1
 
;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1
buffer.time = 1
 
[Command]
name = "b"
command = b
time = 1
buffer.time = 1
 
[Command]
name = "c"
command = c
time = 1
buffer.time = 1
 
[Command]
name = "x"
command = x
time = 1
buffer.time = 1
 
[Command]
name = "y"
command = y
time = 1
buffer.time = 1
 
[Command]
name = "z"
command = z
time = 1
buffer.time = 1
 
[Command]
name = "start"
command = s
time = 1
buffer.time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1
 
;-| Hold Button |-----------------------------------------------------------
[Command]
name = "hold_a"
command = /a
time = 1
buffer.time = 1
 
[Command]
name = "hold_b"
command = /b
time = 1
buffer.time = 1
 
[Command]
name = "hold_c"
command = /c
time = 1
buffer.time = 1
 
[Command]
name = "hold_x"
command = /x
time = 1
buffer.time = 1
 
[Command]
name = "hold_y"
command = /y
time = 1
buffer.time = 1
 
[Command]
name = "hold_z"
command = /z
time = 1
buffer.time = 1
 
[Command]
name = "hold_start"
command = /s
time = 1
buffer.time = 1

;-| Super Motions |--------------------------------------------------------
[Command]
name = "QCFx2"
command = ~D, DF, F, D, DF
time = 21

[Command]
name = "QCBx2"
command = ~D, DB, B, D, DB
time = 21
;-| Special Motions |--------------------------------------------------------
[Command]
name = "CBF"
command = ~$B, $F
time = 16

[Command]
name = "CFB"
command = ~$F, $B
time = 16

[Command]
name = "DP"
command = ~F, D, DF
time = 12

[Command]
name = "RDP"
command = ~B, D, DB
time = 12

[Command]
name = "relf"
command = ~$F
time = 1
buffer.time = 8

[Command]
name = "relb"
command = ~$B
time = 1
buffer.time = 8

[Command]
name = "QCB"
command = ~D, DB, B
time = 15

[Command]
name = "QCF"
command = ~D, DF, F
time = 15

[Command]
name = "QCBD"
command = ~B, DB, D
time = 15

[Command]
name = "QCFD"
command = ~F, DF, D
time = 15

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10
 
;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
time = 1
 
;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = F;$F
time = 1

[Command]
name = "downfwd"
command = DF;$DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = D;$D
time = 1

[Command]
name = "downback"
command = DB;$DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = B;$B
time = 1

[Command]
name = "upback"
command = UB;$UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = U;$U
time = 1

[Command]
name = "upfwd"
command = UF;$UF
time = 1

;---------------------------------------------------------------------------
;Release Direction
[Command]
name = "rlsfwd"
command = ~$F
time = 1

[Command]
name = "rlsback"
command = ~$B
time = 1

[Command]
name = "rlsup"
command = ~$U
time = 1

[Command]
name = "rlsdown"
command = ~$D
time = 1

;--------------------------------------------------------------------------
;Release Button
[Command]
name = "rlsx"
command = ~x
time = 1
buffer.time = 1

[Command]
name = "rlsy"
command = ~y
time = 1
buffer.time = 1

[Command]
name = "rlsz"
command = ~z
time = 1
buffer.time = 1

[Command]
name = "rlsa"
command = ~a
time = 1
buffer.time = 1

[Command]
name = "rlsb"
command = ~b
time = 1
buffer.time = 1

[Command]
name = "rlsc"
command = ~c
time = 1
buffer.time = 1

[Command]
name = "rlss"
command = ~s
time = 1
buffer.time = 1

;---------------------------------------------------------------------------
;Other
[Command]
name = "highjump"
command = $D, $U
time = 15

;---------------------------------------------------------------------------
;It is VERY important to note, that the placement of Changestates, 
;here are HEAVILY important with this buffering system! 
;Even more so than default! I'm adding this notation as a constant, 
;reminder. Don't forget DW to adjust as needed!

;Also ALWAYS and I mean ALWAYS add these two triggers:
;triggerall = !IsHelper(10371) 
;triggerall = numhelper(10371)
;To EVERY Changestate that uses the buffer. You know why!
;Also be sure to adjust the "Tick Fix" on a char by char basis.
[Statedef -1]

[State -1, Tick Fix]
type = CtrlSet
triggerall = RoundState = 2
triggerall = !ctrl
triggerall = movetype!=H
trigger1 = (stateno = 52 || stateno = 101 || stateno = 5120) && !AnimTime
trigger2 = (stateno = [200,299]) && !AnimTime
trigger3 = (stateno = [400,499]) && !AnimTime
trigger4 = (stateno = [700,715]) && !AnimTime
trigger5 = (stateno = [760,762]) && !AnimTime
value = 1

[State -1, CtrlSet For Helpers];special thanks to 20S
type = CtrlSet
trigger1 = IsHelper
value = 0

[State -1, Hit Count For Helpers];special thanks to 20S
type = ParentVarAdd
trigger1 = IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime 
trigger1 = !(HitDefAttr = SCA, AT)
var(13) = 1

[State -1, Juggle Count For Helpers];special thanks to 20S
type = ParentVarAdd
trigger1 = IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime 
trigger1 = !(HitDefAttr = SCA, AT)
var(15) = 1

;[State -1, ProjContact];special thanks to 20S
;type = VarSet
;trigger1 = IsHelper
;trigger1 = MoveContact = 1 && NumTarget
;var(18) = 1

;[State -1, Root ProjContact];special thanks to 20S
;type = ParentVarSet
;trigger1 = IsHelper
;trigger1 = MoveContact = 1 && NumTarget
;var(18) = 1

[State -1, AI Guard Fix]
type = Assertspecial
triggerall = ailevel
trigger1 = stateno != [120,159]
trigger1 = stateno != 5210
flag = noairguard
flag2 = nocrouchguard
flag3 = nostandguard

[State -1, Kung Fu Fury]
type = ChangeState
value = 3200
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(41)
triggerall = (helper(10371), var(0)) && (helper(10371), var(1)) || (helper(10371), var(1)) && (helper(10371), var(2)) || (helper(10371), var(0)) && (helper(10371), var(2))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 3000, power >= 1000)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Kung Fu Ranbu Max]
type = ChangeState
value = 3150
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(40)
triggerall = (helper(10371), var(3)) && (helper(10371), var(4)) || (helper(10371), var(4)) && (helper(10371), var(5)) || (helper(10371), var(3)) && (helper(10371), var(5))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 2000, power >= 1000)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6) || var(7)

[State -1, Kung Fu Barrage Max]
type = ChangeState
value = 3050
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(40)
triggerall = (helper(10371), var(0)) && (helper(10371), var(1)) || (helper(10371), var(1)) && (helper(10371), var(2)) || (helper(10371), var(0)) && (helper(10371), var(2))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 2000, power >= 1000)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6) || var(7)

[State -1, Kung Fu Ranbu]
type = ChangeState
value = 3100
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(40)
triggerall = (helper(10371), var(3)) || (helper(10371), var(4)) || (helper(10371), var(5)) || (helper(10371), var(10)) || (helper(10371), var(11)) || (helper(10371), var(12))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Kung Fu Barrage]
type = ChangeState
value = 3000
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(40)
triggerall = (helper(10371), var(0)) || (helper(10371), var(1)) || (helper(10371), var(2)) || (helper(10371), var(7)) || (helper(10371), var(8)) || (helper(10371), var(9))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Roll Forward]
type = ChangeState
value = 710
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(14) ;LP+LK detection
triggerall = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdfwd"

[State -1, Roll Back]
type = ChangeState
value = 715
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(14) ;LP+LK detection
triggerall = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdback"

[State -1, EX KF Charge]
type = ChangeState
value = 1230
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(24)
triggerall = (helper(10371), var(0)) && (helper(10371), var(1)) || (helper(10371), var(1)) && (helper(10371), var(2)) || (helper(10371), var(0)) && (helper(10371), var(2))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, EX KF Knee]
type = ChangeState
value = 1130
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(23)
triggerall = (helper(10371), var(3)) && (helper(10371), var(4)) || (helper(10371), var(4)) && (helper(10371), var(5)) || (helper(10371), var(3)) && (helper(10371), var(5))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, EX KF Blow]
type = ChangeState
value = 1430
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(22)
triggerall = (helper(10371), var(0)) && (helper(10371), var(1)) || (helper(10371), var(1)) && (helper(10371), var(2)) || (helper(10371), var(0)) && (helper(10371), var(2))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, EX KF Shuffle]
type = ChangeState
value = 1330
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(22)
triggerall = (helper(10371), var(3)) && (helper(10371), var(4)) || (helper(10371), var(4)) && (helper(10371), var(5)) || (helper(10371), var(3)) && (helper(10371), var(5))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, EX KF Palm]
type = ChangeState
value = 1030
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(21)
triggerall = (helper(10371), var(0)) && (helper(10371), var(1)) || (helper(10371), var(1)) && (helper(10371), var(2)) || (helper(10371), var(0)) && (helper(10371), var(2))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, KF Charge]
type = ChangeState
value = 1200
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(24)
triggerall = (helper(10371), var(0)) || (helper(10371), var(1)) || (helper(10371), var(2)) || (helper(10371), var(7)) || (helper(10371), var(8)) || (helper(10371), var(9))
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Strong KF Knee]
type = ChangeState
value = 1120
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(23)
triggerall = (helper(10371), var(5)) || (helper(10371), var(12))
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Medium KF Knee]
type = ChangeState
value = 1110
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(23)
triggerall = (helper(10371), var(4)) || (helper(10371), var(11))
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Light KF Knee]
type = ChangeState
value = 1100
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(23)
triggerall = (helper(10371), var(3)) || (helper(10371), var(10))
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Alpha Counter(Kick)]
type = ChangeState
value = 750
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(20)
triggerall = (helper(10371), var(3)) || (helper(10371), var(4)) || (helper(10371), var(5)) || (helper(10371), var(10)) || (helper(10371), var(11)) || (helper(10371), var(12))
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20)

[State -1, Alpha Counter(Punch)]
type = ChangeState
value = 750
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(20)
triggerall = (helper(10371), var(0)) || (helper(10371), var(1)) || (helper(10371), var(2)) || (helper(10371), var(7)) || (helper(10371), var(8)) || (helper(10371), var(9))
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20)

[State -1, Strong KF Blow]
type = ChangeState
value = 1420
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(22)
triggerall = (helper(10371), var(2)) || (helper(10371), var(9))
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Medium KF Blow]
type = ChangeState
value = 1410
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(22)
triggerall = (helper(10371), var(1)) || (helper(10371), var(8))
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Light KF Blow]
type = ChangeState
value = 1400
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(22)
triggerall = (helper(10371), var(0)) || (helper(10371), var(7))
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, KF Shuffle]
type = ChangeState
value = 1300
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(22)
triggerall = (helper(10371), var(3)) || (helper(10371), var(4)) || (helper(10371), var(5)) || (helper(10371), var(10)) || (helper(10371), var(11)) || (helper(10371), var(12))
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Strong KF Palm]
type = ChangeState
value = 1020
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(21)
triggerall = (helper(10371), var(2)) || (helper(10371), var(9))
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Medium KF Palm]
type = ChangeState
value = 1010
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(21)
triggerall = (helper(10371), var(1)) || (helper(10371), var(8))
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Light KF Palm]
type = ChangeState
value = 1000
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(21)
triggerall = (helper(10371), var(0)) || (helper(10371), var(7))
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Counter Movement]
type = ChangeState
value = 740
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(14);LP+LK detection
triggerall = (helper(10371),command = "holdfwd") || (helper(10371),command = "holdback")
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20)

[State -1, Throw(Kick)]
type = ChangeState
value = 800
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = (helper(10371), var(3) && helper(10371), var(4)) || (helper(10371), var(4) && helper(10371), var(5)) || (helper(10371), var(3) && helper(10371), var(5))
trigger1 = (helper(10371),command = "holdfwd")|| (helper(10371),command = "holdback")
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Throw(Punch)]
type = ChangeState
value = 800
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = (helper(10371), var(0) && helper(10371), var(1)) || (helper(10371), var(1) && helper(10371), var(2)) || (helper(10371), var(0) && helper(10371), var(2))
trigger1 = (helper(10371),command = "holdfwd")|| (helper(10371),command = "holdback")
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Power Charge]
type = ChangeState
value = 730
triggerall = !ailevel
trigger1 = command = "hold_b" && command = "hold_y"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power < const(data.power) && power < PowerMax && !var(20)
trigger1 = ctrl || (StateNo = [100,101])
;^I'm gonna have to adapt this to the buffering system(maybe?) 
;I think it's good... I'll keep this as a reminder still though

[State -1, MAX Mode]
type = ChangeState
value = 770
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(16) ;HP+HK detection
triggerall = RoundState = 2 && StateType != A
triggerall = var(20) <= 0 && Power >= 1000
trigger1 = ctrl || (Stateno = [100,101])

[State -1, Dodge]
type = ChangeState
value = 700
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(14) ;LP+LK detection
triggerall = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101]))

[State -1, Kung Fu Chop]
type = Changestate
value = 211
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(1) ; The buffered version of MP
triggerall = (helper(10371),command != "holddown")
triggerall = command = "holdfwd"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])

[State -1, Kung Fu Chop Alt]
type = Changestate
value = 212
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(1) ; The buffered version of MP
triggerall = (helper(10371),command != "holddown")
triggerall = command = "holdfwd"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])
trigger2 = var(4)

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !ailevel
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !ailevel
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;|Normal Commands|--------------------------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(0) ; The buffered version of LP
triggerall = (helper(10371),command != "holddown")
;^Be sure to include the dir buffer check if needed DW!
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])
trigger2= (StateNo = 200 || StateNo = 400 || StateNo = 430) && Time >=5

[State -1, Stand Medium Punch]
type = ChangeState
value = 210 
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(1) ; The buffered version of MP
triggerall = (helper(10371),command != "holddown")
triggerall = command != "holdfwd"  
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Stand Strong Punch]
type = ChangeState
value = 220 + (Abs(P2BodyDist X) <= 15) * 1
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(2) ; The buffered version of HP
triggerall = (helper(10371),command != "holddown") 
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Stand Light Kick]
type = ChangeState
triggerall = !ailevel
value = 230 + (Abs(P2BodyDist X) <= 15) * 1
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(3) ; The buffered version of LK
triggerall = (helper(10371),command != "holddown")
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])

[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(4) ; The buffered version of MK
triggerall = (helper(10371),command != "holddown")
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])

[State -1, Standing Strong Kick]
type = ChangeState
value = 250 + (Abs(P2BodyDist X) <= 15) * 1
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(5) ; The buffered version of HK
triggerall = (helper(10371),command != "holddown")
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(0) ; The buffered version of LP
triggerall = (helper(10371),command = "holddown")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2= (StateNo = 200 || StateNo = 400 || StateNo = 430) && Time >=5

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(1) ; The buffered version of MP
triggerall = (helper(10371),command = "holddown")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(2) ; The buffered version of HP
triggerall = (helper(10371),command = "holddown")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(3) ; The buffered version of LK
triggerall = (helper(10371),command = "holddown")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2= (StateNo = 200 || StateNo = 400 || StateNo = 430) && Time >=5

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(4) ; The buffered version of MK
triggerall = (helper(10371),command = "holddown")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(5) ; The buffered version of HK
triggerall = (helper(10371),command = "holddown")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(0) ; The buffered version of LP
triggerall = vel x != 0
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Neutral Jump Light Punch]
type = ChangeState
value = 601
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(0) ; The buffered version of LP
triggerall = vel x = 0
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Med Punch]
type = ChangeState
value = 610
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(1) ; The buffered version of MP
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(2) ; The buffered version of HP
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(3) ; The buffered version of LK
triggerall = vel x != 0
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Neutral Jump Light Kick]
type = ChangeState
value = 631
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(3) ; The buffered version of LK
triggerall = vel x = 0
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Med Kick]
type = ChangeState
value = 640
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(4) ; The buffered version of MK
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(5) ; The buffered version of HK
triggerall = vel x != 0
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Neutral Jump Strong Kick]
type = ChangeState
value = 651
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(5) ; The buffered version of HK
triggerall = vel x = 0
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(6) ; The buffered version of Start
triggerall = StateType != A
triggerall = StateNo != [200,699]
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(5)

;============================================================================
; AI System Moves -----------------------------------------------------------
;============================================================================
[state -1, AI 20 Walk]
type = changestate
value = 20
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = statetype = S
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
;condition
trigger1 = ctrl
trigger1 = p2bodydist x = [cond(numtarget, -const240p(8), const240p(32)), const240p(160)]
trigger1 = p2movetype != A
trigger1 = !(enemynear, numproj)
trigger1 = stateno != [20, 119]
trigger1 = prevstateno != [20, 119]
trigger1 = gametime % floor(42 - (ailevel * 4.0)) = [0, ailevel]

[State -1, AI 5210 Fall Recovery (Air)]
type = changestate
value = 5210
trigger1 = ailevel && numenemy
trigger1 = roundstate = 2 && alive
; condition
trigger1 = stateno = 5050 && canrecover
trigger1 = vel y > -1 && pos y < -20
trigger1 = random < (25 * (ailevel ** 2.0 / 64.0))

[State -1, AI 5200 Fall Recovery (Ground)]
type = changestate
value = 5200
trigger1 = ailevel && numenemy
trigger1 = roundstate = 2 && alive
; condition
trigger1 = stateno = 5050 && gethitvar(fall.recover)
trigger1 = vel y > 0 && pos y >= -20
trigger1 = random < (100 * (ailevel ** 2.0 / 64.0))

[State -1, AI 40 Jump]
type = changestate
value = 40
triggerall = ailevel && numenemy
triggerall = roundstate = 2 && statetype != A
; condition
trigger1 = ctrl || (stateno = [100, 101]) || (stateno = [120, 131])
trigger1 = enemynear, movetype = A && p2bodydist x < 160 && enemynear, hitdefattr = SC, AT
trigger1 = random < (250 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = ctrl || (stateno = [100, 101])
trigger2 = backedgebodydist <= const240p(32)
trigger2 = p2statetype = L
trigger2 = p2bodydist x < const240p(128)
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))
; condition
trigger3 = ctrl || (stateno = [100, 101]) || (stateno = [120, 131])
trigger3 = p2movetype = A
trigger3 = p2statetype != A
trigger3 = (p2stateno = [1000, 1999]) || (enemynear, hitdefattr = SCA, SA, SP, ST)
trigger3 = enemynear, animtime < -32
trigger3 = p2bodydist x > const240p(90) || frontedgebodydist < const240p(60) || backedgebodydist < const240p(32)
trigger3 = (random < (25 * (ailevel ** 2.0 / 64.0))) || (enemynear, time = [7, 12])
trigger3 = (random < (25 * (ailevel ** 2.0 / 64.0))) || p2bodydist x > const240p(120)
trigger3 = random < (200 * (ailevel ** 2.0 / 64.0))

[State -1, AI 710 Roll Forward]
type = changestate
value = 710
triggerall = ailevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = ctrl || (stateno = [100, 101]) || (stateno = [120, 131])
; condition
triggerall = enemynear,hitdefattr != SC,AT
; condition
trigger1 = (p2bodydist X = [56,80]) || (p2bodydist X = [108,160]) || backedgebodydist <= const240p(32)
trigger1 = !enemynear, ctrl && p2movetype != H
trigger1 = enemynear, animtime = [-45,-30]
trigger1 = random < (75 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = ctrl || (stateno = [101, 102]) || (stateno = [120,131])
trigger2 = p2statetype = A
trigger2 = p2movetype != H
trigger2 = enemynear, vel x > 0
trigger2 = enemynear, vel y < const240p(1)
trigger2 = p2dist x < const240p(16)
trigger2 = random < (50 * (ailevel ** 2.0 / 64.0))

[State -1, AI 715 Roll Back]
type = ChangeState
value = 715
triggerall = ailevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = frontedgedist < backedgedist
; condition
triggerall = enemynear,hitdefattr != SC,AT
; condition
trigger1 = (ctrl || (stateno = [100, 101]) || (stateno = [120, 131]))
trigger1 = enemynear, movetype = A
trigger1 = inguarddist
trigger1 = (enemynear, stateno != [200, 699]) || (enemynear, animtime =[-28, -42])
trigger1 = random < (cond((stateno = [120, 131]), 25, 50) * (ailevel ** 2.0 / 64.0))

[State -1, AI 700 Dodge]
type = changestate
value = 700
trigger1 = ailevel && numenemy
trigger1 = roundstate = 2 && statetype != A
; condition
triggerall = enemynear,hitdefattr != SC,AT
; condition
trigger1 = ctrl || (stateno = [100, 101]) || ((stateno = [120, 131]) && random < (25 * (ailevel ** 2 / 64.0)))
trigger1 = inguarddist
trigger1 = p2bodydist x > 32 || backedgebodydist <= const240p(32)
trigger1 = p2statetype != A
trigger1 = (enemynear, hitdefattr != SCA, NA)  || enemynear, animtime < -40
trigger1 = random < ((lifemax-life)/(lifemax/const(data.life)))/(13.0 - ailevel)

[State -1, AI 105 Dash Backward]
type = ChangeState
value = 105
triggerall = ailevel && numenemy
triggerall = roundstate = 2 && statetype = S
triggerall = ctrl && (stateno != [100,106])
; condition
trigger1 = (enemynear, movetype = A) && backedgedist >= 80
trigger1 = (p2bodydist x = [const240p(80), const240p(120)])
trigger1 = (enemynear, vel x)
trigger1 = random < (ifelse((enemynear, hitdefattr = SC, AT), 200, 50) * (ailevel ** 2 / 64.0))
; condition
; condition
trigger2 = backedgebodydist > const240p(80) && p2statetype = L && p2bodydist x = [-8, 32]
trigger2 = random < 200 * (ailevel ** 2.0 / 64.0)

[State -1, AI 120 Guard]
type = changestate
value = 120
trigger1 = ailevel && numenemy
trigger1 = roundstate = 2 && inguarddist
; condition
trigger1 = ctrl && (stateno != [120, 155])
trigger1 = !var(26) && p2bodydist x >= const(size.ground.front) * 2.5
trigger1 = !(enemynear, hitdefattr = SCA, AT) && (enemynear, time < 120)
trigger1 = statetype != A || p2statetype = A
trigger1 = cond(statetype = A, ((var(3) != [1, 2]) || stateno = 5210), 1)
trigger1 = random < (cond((enemynear, hitdefattr = SCA, NA), 100, cond((enemynear, hitdefattr = SCA, SA), 333, 1000)) * (ailevel ** 2.0 / 64.0))

[State -1, AI 750 Zero Counter]
type = changestate
value = 750
trigger1 = ailevel && numenemy
trigger1 = stateno = 150 || stateno = 152
trigger1 = roundstate = 2 && statetype != A
trigger1 = power >= 1000 && !var(20)
trigger1 = life < 0.9 * p2life || life < (0.5 * lifemax)
trigger1 = p2bodydist x = [cond(p2statetype = A, const240p(32), const240p(8)), const240p(54)]
trigger1 = random < (3 ** (floor(power / 750.0)))

[State -1, AI 740 Counter Movement]
type = ChangeState
value = 740
trigger1 = ailevel && numenemy
trigger1 = stateno = 150 || stateno = 152
trigger1 = roundstate = 2 && statetype != A
trigger1 = power >= 1000 && !var(20)
; condition
trigger1 = (p2bodydist x = [0,50]) && (life < 0.5 * lifemax)
trigger1 = enemynear, animtime = [-45,-30]
trigger1 = random < (power / 10.0)
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0))

[State -1, AI 730 Power Charge]
type = changestate
value = 730
triggerall = ailevel && numenemy
trigger1 = roundstate = 2 && statetype != A
; condition
trigger1 = ctrl && power < const(data.power) && power < powerMax && prevstateno != 5120 && !var(20)
trigger1 = !inguarddist && p2bodydist x >= 160
trigger1 = random < (cond(power < 1000 && p2statetype = L, 250, 100 * (ailevel ** 2.0 / 64.0)))

[State -1, AI 770 MAX Mode]
type = ChangeState
value = 770
triggerall = ailevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = var(20) <= 0 && Power >= 1000
triggerall = enemynear, life > (enemynear, lifemax / 4.0)
triggerall = life > (lifemax / 5.0)
triggerall = power < 3000
triggerall = ctrl || (stateno = [100,101])
; condition
trigger1 = p2bodydist x >= 160
trigger1 = enemynear, movetype != A
trigger1 = random < (25 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = enemynear, stateno = 5110
trigger2 = enemynear, time < enemynear, const(data.liedown.time) - 20
trigger2 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger3 = p2statetype = L
trigger3 = p2bodydist x >= 160
trigger3 = random < (50 * (ailevel ** 2.0 / 64.0))

[State -1, AI 800 Throw]
type = changestate
value = 800
triggerall = ailevel && numenemy
triggerall = roundstate = 2 && statetype = S
triggerall = !enemynear, ctrl && p2statetype != L && p2movetype != H
; condition
;Clsn1: 1
;  Clsn1[0] = 0, -39, 34, 0
triggerall = p2bodydist x = [-const240p(8), (34 - const(size.ground.front)) * const(size.xscale)]
triggerall = p2dist y = [(-72 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
; condition
trigger1 = ctrl
trigger1 = random < (125 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = ctrl && (p2stateno = [120,140])
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[State -1, AI 100 Run]
type = changestate
value = 100
trigger1 = ailevel && numenemy
trigger1 = roundstate = 2 && statetype = S
; condition
trigger1 = ctrl && (stateno != [100, 106])
trigger1 = (enemynear, movetype != A)
trigger1 = p2bodydist x > const240p(120)
trigger1 = random < 200 * (ailevel ** 2.0 / 64.0)

;============================================================================
; AI Command Moves ----------------------------------------------------------
;============================================================================
[State -1, AI 211 Kung Fu Chop]
type = Changestate
value = 211
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
; condition
; startup = 14
;Clsn1: 1
;  Clsn1[0] = 6, -58, 32, 0
; startup = 17
;Clsn1: 1
;  Clsn1[0] = 28, -32, 73, 0
triggerall = !(enemynear, hitfall)
; condition
trigger1 = statetype != A
trigger1 = ctrl || (stateno=[100,101])
trigger1 = p2bodydist x = [-const240p(8), (73 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-52 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = random < (cond(p2statetype = C, 125, 25) * (ailevel ** 2.0 / 64.0))

[State -1, AI 212 Kung Fu Chop Alt]
type = Changestate
value = 212
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = statetype != A
; condition
; startup = 12
trigger1 = var(4)
trigger1 = p2bodydist x = [-const240p(8), (36 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-52 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = enemynear, gethitvar(hittime) >= 12
trigger1 = random < (250 * (ailevel ** 2.0 / 64.0))

;=========================================================================
; AI Normal Commands -----------------------------------------------------
;=========================================================================
[State -1, AI 440 Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
; condition
; startup = 3
;Clsn1: 1
;  Clsn1[0] = -6, -21, 55, 0
triggerall = statetype != A
triggerall = p2bodydist x = [-const240p(8), (55 + (25 * var(9)) - const(size.ground.front)) * const(size.xscale)]
triggerall = p2dist y = [(-21 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
triggerall = p2statetype != A
; condition
trigger1 = ctrl || (StateNo = [100,101])
trigger1 = random < (150 * (ailevel ** 2.0 / 64.0)) + (ailevel * 48.0 * (enemynear, gethitvar(hittime) >= 3))
;condition
trigger2 = (((stateno = [200, 499]) && !animtime && movehit) || (ctrl && (enemynear, gethitvar(damage))))
trigger2 = enemynear, gethitvar(hittime) >= 3
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[State -1, AI 240 Stand Medium Kick]
type = ChangeState
value = 240
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
; condition
; startup = 6
;Clsn1: 1
;  Clsn1[0] = -5, -70, 76, -53
triggerall = statetype != A
triggerall = p2bodydist x = [-const240p(8), (76 + (25 * var(9)) - const(size.ground.front)) * const(size.xscale)]
triggerall = p2dist y = [(-70 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
triggerall = p2statetype = S
triggerall = (enemynear, const(size.head.pos.y) <= -const240p(40)) || (enemynear, statetype = A && numtarget)
; condition
trigger1 = ctrl || (StateNo = [100,101])
trigger1 = random < (150 * (ailevel ** 2.0 / 64.0)) + (ailevel * 48.0 * (enemynear, gethitvar(hittime) >= 6))
;condition
trigger2 = (((stateno = [200, 499]) && !animtime && movehit) || (ctrl && (enemynear, gethitvar(damage))))
trigger2 = enemynear, gethitvar(hittime) >= 6
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[State -1, AI 230 Stand Light Kick]
type = ChangeState
value = 230
triggerall = (Abs(P2BodyDist X) > 15)
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
; condition
; startup = 5
;Clsn1: 1
;  Clsn1[0] = 14, -37, 81, -17
triggerall = statetype != A
triggerall = p2bodydist x = [-const240p(8), (81 + (25 * var(9)) - const(size.ground.front)) * const(size.xscale)]
triggerall = p2dist y = [(-37 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
triggerall = p2statetype != A
; condition
trigger1 = ctrl || (StateNo = [100,101])
trigger1 = (p2bodydist x > (45 - const(size.ground.front)) * const(size.xscale)) || numtarget
trigger1 = random < (150 * (ailevel ** 2.0 / 64.0)) + (ailevel * 48.0 * (enemynear, gethitvar(hittime) >= 5))
;condition
trigger2 = (((stateno = [200, 499]) && !animtime && movehit) || (ctrl && (enemynear, gethitvar(damage))))
trigger2 = enemynear, gethitvar(hittime) >= 5
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[State -1, AI 210 Stand Medium Punch]
type = ChangeState
value = 210 
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
; condition
; startup = 5
;Clsn1: 1
;  Clsn1[0] = 22, -62, 54, -38
triggerall = statetype != A
triggerall = p2bodydist x = [-const240p(8), (54 - const(size.ground.front)) * const(size.xscale)]
triggerall = p2dist y = [(-62 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
triggerall = p2statetype = S || (p2statetype = A && numtarget)
triggerall = (enemynear, const(size.head.pos.y) <= -const240p(40)) || (enemynear, statetype = A && numtarget)
; condition
trigger1 = ctrl || (stateno = [100,101])
trigger1 = random < (100 * (ailevel ** 2.0 / 64.0)) + (ailevel * 48.0 * (enemynear, gethitvar(hittime) >= 5))
;condition
trigger2 = (((stateno = [200, 499]) && !animtime && movehit) || (ctrl && (enemynear, gethitvar(damage))))
trigger2 = enemynear, gethitvar(hittime) >= 5
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[State -1, AI 221 Stand Close Strong Punch]
type = ChangeState
value = 221
triggerall = (Abs(P2BodyDist X) <= 15)
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
; condition
; startup = 6
;Clsn1: 1
;  Clsn1[0] = 6, -58, 32, 0
triggerall = statetype != A
triggerall = p2bodydist x = [-const240p(8), (32 - const(size.ground.front)) * const(size.xscale)]
triggerall = p2dist y = [(-58 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
triggerall = p2statetype = S || (p2statetype = A && numtarget)
; condition
trigger1 = ctrl || (StateNo = [100,101])
trigger1 = random < (250 * (ailevel ** 2.0 / 64.0)) + (ailevel * 48.0 * (enemynear, gethitvar(hittime) >= 6))
;condition
trigger2 = (((stateno = [200, 499]) && !animtime && movehit) || (ctrl && (enemynear, gethitvar(damage))))
trigger2 = enemynear, gethitvar(hittime) >= 6
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[State -1, AI 251 Standing Strong Kick]
type = ChangeState
value = 251
triggerall = (Abs(P2BodyDist X) <= 15)
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
; condition
; startup = 7
;Clsn1: 1
;  Clsn1[0] = 17, -77, 52, -39
triggerall = statetype != A
triggerall = p2bodydist x = [-const240p(8), (52 - const(size.ground.front)) * const(size.xscale)]
triggerall = p2dist y = [(-77 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
; condition
trigger1 = ctrl || (StateNo = [100,101])
trigger1 = p2statetype != A || numtarget
trigger1 = random < (250 * (ailevel ** 2.0 / 64.0)) + (ailevel * 48.0 * (enemynear, gethitvar(hittime) >= 7))
;condition
trigger2 = (((stateno = [200, 499]) && !animtime && movehit) || (ctrl && (enemynear, gethitvar(damage))))
trigger2 = enemynear, gethitvar(hittime) >= 7
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[State -1, AI 231 Stand Light Kick]
type = ChangeState
value = 231
triggerall = (Abs(P2BodyDist X) <= 15)
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
; condition
; startup = 3
;Clsn1: 1
;  Clsn1[0] = 0, -25, 30, 0
triggerall = statetype != A
triggerall = p2bodydist x = [-const240p(8), (30 - const(size.ground.front)) * const(size.xscale)]
triggerall = p2dist y = [(-25 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
triggerall = p2statetype != A
; condition
trigger1 = ctrl || (StateNo = [100,101])
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0)) + (ailevel * 48.0 * (enemynear, gethitvar(hittime) >= 3))
;condition
trigger2 = (((stateno = [200, 499]) && !animtime && movehit) || (ctrl && (enemynear, gethitvar(damage))))
trigger2 = enemynear, gethitvar(hittime) >= 3
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[State -1, AI 250 Standing Strong Kick]
type = ChangeState
value = 250
triggerall = (Abs(P2BodyDist X) > 15)
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = (enemynear, const(size.head.pos.y) <= -const240p(40)) || (enemynear, statetype = A && numtarget)
; condition
; startup = 10
;Clsn1: 1
;  Clsn1[0] = -2, -85, 50, -47
triggerall = statetype != A
triggerall = !var(16) && (var(15) < 1)
triggerall = p2bodydist x = [-const240p(8), (50 - const(size.ground.front)) * const(size.xscale)]
triggerall = p2dist y = [(-85 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
triggerall = p2statetype = S
; condition
trigger1 = ctrl || (StateNo = [100,101])
trigger1 = random < (100 * (ailevel ** 2.0 / 64.0)) + (ailevel * 48.0 * (enemynear, gethitvar(hittime) >= 10))
;condition
trigger2 = (((stateno = [200, 499]) && !animtime && movehit) || (ctrl && (enemynear, gethitvar(damage))))
trigger2 = enemynear, gethitvar(hittime) >= 10
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[State -1, AI 430 Crouching Light Kick]
type = ChangeState
value = 430
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
; condition
; startup = 3
;Clsn1: 1
;  Clsn1[0] = -6, -21, 55, 0
triggerall = statetype != A
triggerall = p2bodydist x = [-const240p(8), (55 - const(size.ground.front)) * const(size.xscale)]
triggerall = p2dist y = [(-21 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
triggerall = p2statetype != A
; condition
trigger1 = ctrl || (StateNo = [100,101])
trigger1 = random < (100 * (ailevel ** 2.0 / 64.0)) + (ailevel * 48.0 * (enemynear, gethitvar(hittime) >= 3))
; condition
trigger2 = (StateNo = 200 || StateNo = 400 || StateNo = 430) && Time >=5
trigger2 = (random < (25 * (ailevel ** 2.0 / 64.0))) || movecontact
trigger2 = random < (100 * (ailevel ** 2.0 / 64.0))
; condition
trigger3 = (((stateno = [200, 499]) && !animtime && movehit) || (ctrl && (enemynear, gethitvar(damage))))
trigger3 = enemynear, gethitvar(hittime) >= 3
trigger3 = random < (250 * (ailevel ** 2.0 / 64.0))

[State -1, AI 450 Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
; condition
; startup = 3
;Clsn1: 1
;  Clsn1[0] = -54, -22, 52, 0
triggerall = statetype != A
triggerall = p2bodydist x = [-const240p(8), (52 - const(size.ground.front)) * const(size.xscale)]
triggerall = p2dist y = [(-22 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
triggerall = (p2statetype = S || (p2statetype = C && p2movetype = H))
; condition
trigger1 = ctrl || (StateNo = [100,101])
trigger1 = !enemynear, ctrl && (p2stateno != [120,155])
trigger1 = random < (125 * (ailevel ** 2.0 / 64.0)) + (ailevel * 48.0 * (enemynear, gethitvar(hittime) >= 3))
;condition
trigger2 = (((stateno = [200, 499]) && !animtime && movehit) || (ctrl && (enemynear, gethitvar(damage))))
trigger2 = enemynear, gethitvar(hittime) >= 3
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[State -1, AI 400 Crouching Light Punch]
type = ChangeState
value = 400
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
; condition
; startup = 3
;Clsn1: 1
;  Clsn1[0] = 0, -46, 49, -31
triggerall = statetype != A
triggerall = p2bodydist x = [-const240p(8), (49 - const(size.ground.front)) * const(size.xscale)]
triggerall = p2dist y = [(-46 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
triggerall = p2statetype != A
; condition
trigger1 = ctrl || (StateNo = [100,101])
trigger1 = random < (150 * (ailevel ** 2.0 / 64.0)) + (ailevel * 48.0 * (enemynear, gethitvar(hittime) >= 3))
; condition
trigger2 = (StateNo = 200 || StateNo = 400 || StateNo = 430) && Time >=5
trigger2 = random < (50 * (ailevel ** 2.0 / 64.0))
;condition
trigger3 = (((stateno = [200, 499]) && !animtime && movehit) || (ctrl && (enemynear, gethitvar(damage))))
trigger3 = enemynear, gethitvar(hittime) >= 3
trigger3 = random < (250 * (ailevel ** 2.0 / 64.0))

[State -1, AI 200 Stand Light Punch]
type = ChangeState
value = 200
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
; condition
; startup = 3
;Clsn1: 1
;  Clsn1[0] = 6, -81, 57, -66
triggerall = p2bodydist x = [-const240p(8), (57 - const(size.ground.front)) * const(size.xscale)]
triggerall = p2dist y = [(-81 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
triggerall = p2statetype = S || (p2statetype = A && numtarget)
triggerall = (enemynear, const(size.head.pos.y) <= -const240p(40)) || (enemynear, statetype = A && numtarget)
; condition
trigger1 = statetype != A
trigger1 = ctrl || (stateno = [100,101])
trigger1 = random < (125 * (ailevel ** 2.0 / 64.0)) + (ailevel * 48.0 * (enemynear, gethitvar(hittime) >= 3))
; condition
trigger2 = (StateNo = 200 || StateNo = 400 || StateNo = 430) && Time >=5
trigger2 = random < (100 * (ailevel ** 2.0 / 64.0))
;condition
trigger3 = (((stateno = [200, 499]) && !animtime && movehit) || (ctrl && (enemynear, gethitvar(damage))))
trigger3 = enemynear, gethitvar(hittime) >= 3
trigger3 = random < (250 * (ailevel ** 2.0 / 64.0))

[State -1, AI 220 Stand Far Strong Punch]
type = ChangeState
value = 220
triggerall = (Abs(P2BodyDist X) > 15)
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
; condition
; startup = 8
;Clsn1: 1
;  Clsn1[0] = 25, -72, 72, -58
triggerall = statetype != A
triggerall = p2bodydist x = [-const240p(8), (72 - const(size.ground.front)) * const(size.xscale)]
triggerall = p2dist y = [(-72 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
triggerall = p2statetype = S || (p2statetype = A && numtarget)
; condition
trigger1 = ctrl || (StateNo = [100,101])
trigger1 = random < (75 * (ailevel ** 2.0 / 64.0)) + (ailevel * 48.0 * (enemynear, gethitvar(hittime) >= 8))
;condition
trigger2 = (((stateno = [200, 499]) && !animtime && movehit) || (ctrl && (enemynear, gethitvar(damage))))
trigger2 = enemynear, gethitvar(hittime) >= 8
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[State -1, AI 410 Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
; condition
; startup = 7
;Clsn1: 1
;  Clsn1[0] = -6, -49, 25, -29
triggerall = statetype != A
triggerall = p2bodydist x = [-const240p(8), (25 - const(size.ground.front)) * const(size.xscale)]
triggerall = p2dist y = [(-49 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
triggerall = p2statetype != A
; condition
trigger1 = ctrl || (StateNo = [100,101])
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0)) + (ailevel * 48.0 * (enemynear, gethitvar(hittime) >= 7))
;condition
trigger2 = (((stateno = [200, 499]) && !animtime && movehit) || (ctrl && (enemynear, gethitvar(damage))))
trigger2 = enemynear, gethitvar(hittime) >= 7
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[State -1, AI 420 Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
; condition
; startup = 6
;Clsn1: 2
;  Clsn1[0] = 8, -66, 25, -32
;  Clsn1[1] = -1, -48, 25, -32
triggerall = statetype != A
triggerall = p2bodydist x = [-const240p(8), (25 - const(size.ground.front)) * const(size.xscale)]
triggerall = p2dist y = [(-66 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
; condition
trigger1 = ctrl || (StateNo = [100,101])
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0)) + (ailevel * 48.0 * (enemynear, gethitvar(hittime) >= 6))
;condition
trigger2 = (((stateno = [200, 499]) && !animtime && movehit) || (ctrl && (enemynear, gethitvar(damage))))
trigger2 = enemynear, gethitvar(hittime) >= 6
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

;============================================================================
; AI Jumping Moves ----------------------------------------------------------
;============================================================================
[State -1, AI 640 Jump Med Kick]
type = ChangeState
value = 640
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
; condition
; startup = 4
;Clsn1: 1
;  Clsn1[0] = -17, -63, 64, -39
triggerall = (vel y >= 0.5 && p2dist y >= -40) || p2statetype = A
;
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist x >= (-17 - const(size.ground.front)) * const(size.xscale)
trigger1 = p2bodydist x <= (64 + (4 * (vel x + (enemynear,vel x))) - const(size.ground.front)) * const(size.xscale)
trigger1 = p2dist y = [(-63 - 16) * const(size.yscale), (-39 + 72 + (32 * vel y * (vel y > 0))) * const(size.yscale)]
trigger1 = random < (150 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = statetype = A
trigger2 = ctrl
trigger2 = p2bodydist x >= (-17 - const(size.ground.front)) * const(size.xscale)
trigger2 = p2bodydist x <= (64 + (4 * (vel x + (enemynear,vel x))) - const(size.ground.front)) * const(size.xscale)
trigger2 = p2dist y = [(-63 - 16) * const(size.yscale), (-39 + 72 + 32 * (vel y > 2.0)) * const(size.yscale)]
trigger2 = p2statetype != A && vel y >= 0.5
trigger2 = random < 300 * (ailevel ** 2.0 / 64.0)

[State -1, AI 610 Jump Med Punch]
type = ChangeState
value = 610
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
; condition
; startup = 6
;Clsn1: 1
;  Clsn1[0] = 9, -65, 48, -40
triggerall = (vel y >= 0.5 && p2dist y >= -50) || p2statetype = A
;
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist x = [-const240p(8), (48 + (6 * (vel x + (enemynear,vel x))) - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-65 - 16) * const(size.yscale), (-40 + 72 + (32 * vel y * (vel y > 0))) * const(size.yscale)]
trigger1 = random < (150 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = statetype = A
trigger2 = ctrl
trigger2 = p2bodydist x = [-const240p(8), (48 + (6 * (vel x + (enemynear,vel x))) - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-65 - 16) * const(size.yscale), (-40 + 72 + 32 * (vel y > 2.0)) * const(size.yscale)]
trigger2 = p2statetype != A && vel y >= 0.5
trigger2 = random < 300 * (ailevel ** 2.0 / 64.0)

[State -1, AI 620 Jump Strong Punch]
type = ChangeState
value = 620
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
; condition
; startup = 7
;Clsn1: 1
;  Clsn1[0] = -3, -63, 41, -40
triggerall = (vel y >= 0.5 && p2dist y >= -50) || p2statetype = A
;
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist x = [-const240p(8), (41 + (7 * (vel x + (enemynear,vel x))) - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-63 - 16) * const(size.yscale), (-40 + 72 + (32 * vel y * (vel y > 0))) * const(size.yscale)]
trigger1 = random < (150 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = statetype = A
trigger2 = ctrl
trigger2 = p2bodydist x = [-const240p(8), (41 + (7 * (vel x + (enemynear,vel x))) - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-63 - 16) * const(size.yscale), (-40 + 72 + 32 * (vel y > 2.0)) * const(size.yscale)]
trigger2 = p2statetype != A && vel y >= 0.5
trigger2 = random < 300 * (ailevel ** 2.0 / 64.0)

[State -1, AI 600 Jump Light Punch]
type = ChangeState
value = 600
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
; condition
; startup = 4
;Clsn1: 1
;  Clsn1[0] = 11, -81, 40, -51
triggerall = vel x != 0
triggerall = (vel y >= 0.5 && p2dist y >= -40) || p2statetype = A
triggerall = p2statetype != C
triggerall = (enemynear, const(size.head.pos.y) <= -const240p(40)) || (enemynear, statetype = A && numtarget)
;
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist x = [-const240p(8), (40 + (7 * (vel x + (enemynear,vel x))) - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-81 - 16) * const(size.yscale), (-51 + 72 + (32 * vel y * (vel y > 0))) * const(size.yscale)]
trigger1 = random < (100 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = statetype = A
trigger2 = ctrl
trigger2 = p2bodydist x = [-const240p(8), (40 + (7 * (vel x + (enemynear,vel x))) - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-81 - 16) * const(size.yscale), (-51 + 72 + 32 * (vel y > 2.0)) * const(size.yscale)]
trigger2 = p2statetype != A && vel y >= 0.5
trigger2 = random < 200 * (ailevel ** 2.0 / 64.0)

[State -1, AI 601 Neutral Jump Light Punch]
type = ChangeState
value = 601
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = vel x = 0
; condition
; startup = 3
;Clsn1: 1
;  Clsn1[0] = 6, -86, 55, -70
triggerall = vel x != 0
triggerall = (vel y >= 0.5 && p2dist y >= -40) || p2statetype = A
triggerall = p2statetype != C
triggerall = (enemynear, const(size.head.pos.y) <= -const240p(40)) || (enemynear, statetype = A && numtarget)
;
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist x = [-const240p(8), (55 + (3 * (vel x + (enemynear,vel x))) - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-86 - 16) * const(size.yscale), (-70 + 72 + (32 * vel y * (vel y > 0))) * const(size.yscale)]
trigger1 = random < (100 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = statetype = A
trigger2 = ctrl
trigger2 = p2bodydist x = [-const240p(8), (55 + (3 * (vel x + (enemynear,vel x))) - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-86 - 16) * const(size.yscale), (-70 + 72 + 32 * (vel y > 2.0)) * const(size.yscale)]
trigger2 = p2statetype != A && vel y >= 0.5
trigger2 = random < 200 * (ailevel ** 2.0 / 64.0)

[State -1, AI 630 Jump Light Kick]
type = ChangeState
value = 630
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
; condition
; startup = 3
;Clsn1: 1
;  Clsn1[0] = 15, -68, 64, -43
triggerall = vel x != 0
triggerall = (vel y >= 0.5 && p2dist y >= -40) || p2statetype = A
;
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist x = [-const240p(8), (64 + (3 * (vel x + (enemynear,vel x))) - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-68 - 16) * const(size.yscale), (-43 + 72 + (32 * vel y * (vel y > 0))) * const(size.yscale)]
trigger1 = random < (100 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = statetype = A
trigger2 = ctrl
trigger2 = p2bodydist x = [-const240p(8), (64 + (3 * (vel x + (enemynear,vel x))) - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-68 - 16) * const(size.yscale), (-43 + 72 + 32 * (vel y > 2.0)) * const(size.yscale)]
trigger2 = p2statetype != A && vel y >= 0.5
trigger2 = random < 200 * (ailevel ** 2.0 / 64.0)

[State -1, AI 631 Neutral Jump Light Kick]
type = ChangeState
value = 631
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
; condition
; startup = 6
;Clsn1: 1
;  Clsn1[0] = 2, -66, 33, -42
triggerall = vel x = 0
triggerall = (vel y >= 0.5 && p2dist y >= -40) || p2statetype = A
triggerall = p2statetype != C
triggerall = (enemynear, const(size.head.pos.y) <= -const240p(40)) || (enemynear, statetype = A && numtarget)
;
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist x = [-const240p(8), (33 + (6 * (vel x + (enemynear,vel x))) - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-66 - 16) * const(size.yscale), (-42 + 72 + (32 * vel y * (vel y > 0))) * const(size.yscale)]
trigger1 = random < (100 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = statetype = A
trigger2 = ctrl
trigger2 = p2bodydist x = [-const240p(8), (33 + (6 * (vel x + (enemynear,vel x))) - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-66 - 16) * const(size.yscale), (-42 + 72 + 32 * (vel y > 2.0)) * const(size.yscale)]
trigger2 = p2statetype != A && vel y >= 0.5
trigger2 = random < 200 * (ailevel ** 2.0 / 64.0)

[State -1, AI 650 Jump Strong Kick]
type = ChangeState
value = 650
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
; condition
; startup = 9
;Clsn1: 1
;  Clsn1[0] = 12, -74, 47, -16
triggerall = (vel y >= 0.5 && p2dist y >= -50) || p2statetype = A
triggerall = p2statetype != C
triggerall = (enemynear, const(size.head.pos.y) <= -const240p(40)) || (enemynear, statetype = A && numtarget)
;
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist x = [-const240p(8), (47 + (7 * (vel x + (enemynear,vel x))) - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-74 - 16) * const(size.yscale), (-16 + 72 + (32 * vel y * (vel y > 0))) * const(size.yscale)]
trigger1 = random < (150 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = statetype = A
trigger2 = ctrl
trigger2 = p2bodydist x = [-const240p(8), (47 + (7 * (vel x + (enemynear,vel x))) - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-74 - 16) * const(size.yscale), (-16 + 72 + 32 * (vel y > 2.0)) * const(size.yscale)]
trigger2 = p2statetype != A && vel y >= 0.5
trigger2 = random < 300 * (ailevel ** 2.0 / 64.0)

[State -1, AI 651 Neutral Jump Strong Kick]
type = ChangeState
value = 651
triggerall = ailevel
triggerall = roundstate = 2
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
; condition
; startup = 4
;Clsn1: 1
;  Clsn1[0] = 6, -88, 70, -62
triggerall = vel x = 0
triggerall = vel y <= 2.0 && p2statetype = A
; condition
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist x = [-8, (70 + (4 * (vel x + enemynear, vel x)) - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-88 - 16) * const(size.yscale), (-62 + 72 + (32 * vel y * (vel y > 0))) * const(size.yscale)]
trigger1 = random < (150 * (ailevel ** 2.0 / 64.0))

;============================================================================
; AI EX Moves ---------------------------------------------------------------
;============================================================================
[State -1, AI 1030 EX KF Palm]
type = ChangeState
value = 1030
triggerall = ailevel
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = roundstate = 2 && statetype != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
triggerall = p2statetype != A
; condition
; startup = 4
;Clsn1: 1
;  Clsn1[0] = 4, -63, 51, -33
triggerall = (random < (power/10.0)) || var(20) || ((life/lifemax * 1.0) < 0.9 * (enemynear, life/enemynear, lifemax * 1.0)) || (life < 0.25 * lifemax)
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
; condition
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger1 = p2bodydist x = [-const240p(8), (119 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-63 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = !enemynear, ctrl && (p2stateno != [120, 155])
trigger1 = random < (25 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-const240p(8), (ceil(((3 / 4.0) * 119) - const(size.ground.front))) * const(size.xscale)]
trigger2 = p2dist y = [ceil(((3 / 4.0) * -63) * const(size.yscale)), const240p(8)]
trigger2 = movehit
trigger2 = p2statetype != A
trigger2 = random < cond(!var(20), (50 * (ailevel ** 2.0 / 64.0)), (ailevel * 48.0))

[State -1, AI 1230 EX KF Charge]
type = ChangeState
value = 1230
triggerall = ailevel
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = roundstate = 2 && statetype != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
triggerall = (enemynear, const(size.head.pos.y) <= -const240p(40)) || (enemynear, statetype = A && numtarget)
; condition
; startup = 5
;Clsn1Default: 1
;  Clsn1[0] = 8, -89, 37, -55
triggerall = (random < (power/10.0)) || var(20) || ((life/lifemax * 1.0) < 0.9 * (enemynear, life/enemynear, lifemax * 1.0)) || (life < 0.25 * lifemax)
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
;
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger1 = p2bodydist x = [-const240p(8), (125 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-89 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = (p2stateno != [120, 155]) || (enemynear, hitdefattr = SCA, NA)
trigger1 = !enemynear, ctrl
trigger1 = enemynear, animtime < -10
trigger1 = p2bodydist x > (40 - const(size.ground.front)) * const(size.xscale)
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-const240p(8), (ceil(((3 / 4.0) * 125) - const(size.ground.front))) * const(size.xscale)]
trigger2 = p2dist y = [ceil(((3 / 4.0) * -89) * const(size.yscale)), const240p(8)]
trigger2 = movehit
trigger2 = enemynear, gethitvar(hittime) >= 5
trigger2 = p2statetype != A
trigger2 = random < cond(!var(20), (50 * (ailevel ** 2.0 / 64.0)), (ailevel * 48.0))

[State -1, AI 1130 EX KF Knee]
type = ChangeState
value = 1130
triggerall = ailevel
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = roundstate = 2 && statetype != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
; condition
; startup = 8
;Clsn1: 2
;  Clsn1[0] = 14, -78, 37, -27
;  Clsn1[1] = 4, -70, 37, -46
triggerall = (random < (power/10.0)) || var(20) || ((life/lifemax * 1.0) < 0.9 * (enemynear, life/enemynear, lifemax * 1.0)) || (life < 0.25 * lifemax)
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
;
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger1 = p2bodydist x >= const(size.ground.front) * (p2statetype = A)
trigger1 = p2bodydist x <= ((37 + 8 * enemynear, vel x * (enemynear, statetype = A)) - const(size.ground.front)) * const(size.xscale)
trigger1 = p2dist y = [(-78 - (enemynear, vel y + 8 * (enemynear, const(movement.yaccel)))) * const(size.yscale), const240p(8)]
trigger1 = p2stateno != [120, 155]
trigger1 = p2movetype = A || p2statetype = A
trigger1 = enemynear, vel x >= 0 || numtarget
trigger1 = enemynear, vel y >= const240p(-3) || numtarget
trigger1 = enemynear, p2bodydist x > 0
trigger1 = random < (cond(p2statetype != A, 25, 75 * (ailevel ** 2.0 / 64.0)))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-const240p(8), (24 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [ceil(((3 / 4.0) * -32) * const(size.yscale)), const240p(8)]
trigger2 = movehit
trigger2 = stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430
trigger2 = p2statetype != A
trigger2 = enemynear, gethitvar(hittime) >= 7
trigger2 = random < ((cond(var(20), 250, 25) * (ailevel ** 2.0 / 64.0)))
; condition
trigger3 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger3 = p2bodydist x = [-8, ((37 + ((8 * enemynear, vel x) * p2statetype = A)) - const(size.ground.front)) * const(size.xscale)]
trigger3 = p2dist y = [(-78 - enemynear, vel y) * const(size.yscale), -20 - (2 * enemynear, vel y * (enemynear, vel y > 0))]
trigger3 = enemynear, statetype = A && enemynear, hitfall
trigger3 = !(enemynear, stateno = [820, 821])
trigger3 = !(enemynear, stateno = [860, 861])
trigger3 = !(numtarget(10750))
trigger3 = random < (50 * (ailevel ** 2.0 / 64.0))

[State -1, AI 1430 EX KF Blow]
type = ChangeState
value = 1430
triggerall = ailevel
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = roundstate = 2 && statetype != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
triggerall = (enemynear, const(size.head.pos.y) <= -const240p(40)) || (enemynear, statetype = A && numtarget)
; condition
; startup = 14
;Clsn1: 1
;  Clsn1[0] = -33, -71, 52, -49
triggerall = (random < (power/10.0)) || var(20) || ((life/lifemax * 1.0) < 0.9 * (enemynear, life/enemynear, lifemax * 1.0)) || (life < 0.25 * lifemax)
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
;
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger1 = p2bodydist x = [-const240p(8), (52 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-89 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = inguarddist && enemynear, vel x >= 0 && (enemynear, vel y >= -2)
trigger1 = !((enemynear, stateno = [1000, 4999]) || (enemynear, hitdefattr = SCA, SA, HA))
trigger1 = p2statetype != A
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-const240p(8), (ceil(((3 / 4.0) * 52) - const(size.ground.front))) * const(size.xscale)]
trigger2 = p2dist y = [ceil(((3 / 4.0) * -89) * const(size.yscale)), const240p(8)]
trigger2 = movehit
trigger2 = enemynear, gethitvar(hittime) >= 14
trigger2 = stateno != 221 && stateno != 251 && stateno != 420
trigger2 = p2statetype != A
trigger2 = random < cond(!var(20), (50 * (ailevel ** 2.0 / 64.0)), (ailevel * 48.0))

[State -1, AI 1330 EX KF Shuffle]
type = ChangeState
value = 1330
triggerall = ailevel
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = roundstate = 2 && statetype != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
triggerall = p2statetype != A
; condition
; startup = 6
;Clsn1: 1
;  Clsn1[0] = 0, -28, 71, 0
triggerall = (random < (power/10.0)) || var(20) || ((life/lifemax * 1.0) < 0.9 * (enemynear, life/enemynear, lifemax * 1.0)) || (life < 0.25 * lifemax)
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
;
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger1 = p2bodydist x = [-const240p(8), (98 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-28 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = p2bodydist x >= 60
trigger1 = p2statetype != A
trigger1 = !enemynear, ctrl && (enemynear, stateno != [120, 155])
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-const240p(8), (ceil(((3 / 4.0) * 71) - const(size.ground.front))) * const(size.xscale)]
trigger2 = p2dist y = [ceil(((3 / 4.0) * -28) * const(size.yscale)), const240p(8)]
trigger2 = movehit
trigger2 = enemynear, gethitvar(hittime) >= 4
trigger2 = random < cond(!var(20), (100 * (ailevel ** 2.0 / 64.0)), (ailevel * 48.0))

;============================================================================
; AI Special Moves ----------------------------------------------------------
;============================================================================
[State -1, AI 1300 KF Shuffle]
type = ChangeState
value = 1300
triggerall = ailevel
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = roundstate = 2 && statetype != A
triggerall = p2statetype != A
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200,499])
; condition
; startup = 6
;Clsn1: 1
;  Clsn1[0] = 0, -28, 71, 0
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
;condition
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger1 = p2bodydist x = [-const240p(8), (98 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-28 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = p2bodydist x >= (40 - const(size.ground.front)) * const(size.xscale)
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-const240p(8), (ceil(((3 / 4.0) * 98) - const(size.ground.front))) * const(size.xscale)]
trigger2 = p2dist y = [ceil(((3 / 4.0) * -28) * const(size.yscale)), const240p(8)]
trigger2 = movehit
trigger2 = enemynear, gethitvar(hittime) >= 4
trigger2 = p2statetype != A
trigger2 = random < (ailevel * 64.0)

[State -1, AI 1200 KF Charge]
type = ChangeState
value = 1200
triggerall = ailevel
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = roundstate = 2 && statetype != A
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200,499])
triggerall = p2statetype != A
triggerall = (enemynear, const(size.head.pos.y) <= -const240p(40)) || (enemynear, statetype = A && numtarget)
; condition
; startup = 7
;Clsn1Default: 1
;  Clsn1[0] = 8, -89, 37, -55
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
;
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger1 = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
trigger1 = p2bodydist x = [-const240p(8), (125 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-89 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = (p2stateno != [120, 155]) || (enemynear, hitdefattr = SCA, NA)
trigger1 = !enemynear, ctrl
trigger1 = enemynear, animtime < -10
trigger1 = p2bodydist x > (40 - const(size.ground.front)) * const(size.xscale)
trigger1 = random < (75 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-const240p(8), (ceil(60 - const(size.ground.front))) * const(size.xscale)]
trigger2 = p2dist y = [ceil(((3 / 4.0) * -89) * const(size.yscale)), const240p(8)]
trigger2 = movehit
trigger2 = enemynear, gethitvar(hittime) >= 7
trigger2 = p2statetype != A
trigger2 = random < (ailevel * 64.0)

[State -1, AI 1120 Strong KF Knee]
type = ChangeState
value = 1120
triggerall = ailevel
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = roundstate = 2 && statetype != A
; condition
; startup = 7
;Clsn1: 2
;  Clsn1[0] = 14, -78, 37, -27
;  Clsn1[1] = 4, -70, 37, -46
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
;
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger1 = p2bodydist x >= const(size.ground.front) * (p2statetype = A)
trigger1 = p2bodydist x <= ((37 + 8 * enemynear, vel x * (enemynear, statetype = A)) - const(size.ground.front)) * const(size.xscale)
trigger1 = p2dist y = [(-78 - (enemynear, vel y + 8 * (enemynear, const(movement.yaccel)))) * const(size.yscale), const240p(8)]
trigger1 = p2stateno != [120, 155]
trigger1 = p2movetype = A || p2statetype = A
trigger1 = enemynear, vel x >= 0 || numtarget
trigger1 = enemynear, vel y >= const240p(-3) || numtarget
trigger1 = enemynear, p2bodydist x > 0
trigger1 = random < (cond(p2statetype != A, 25, 200 * (ailevel ** 2.0 / 64.0)))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-const240p(8), (ceil(((3 / 4.0) * 37) - const(size.ground.front))) * const(size.xscale)]
trigger2 = p2dist y = [ceil(((3 / 4.0) * -70) * const(size.yscale)), const240p(8)]
trigger2 = movehit
trigger2 = stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430
trigger2 = enemynear, gethitvar(hittime) >= 7
trigger2 = p2statetype != A
trigger2 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger3 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger3 = p2bodydist x = [-8, ((37 + ((7 * enemynear, vel x) * p2statetype = A)) - const(size.ground.front)) * const(size.xscale)]
trigger3 = p2dist y = [(-78 - enemynear, vel y) * const(size.yscale), -20 - (7 * enemynear, vel y * (enemynear, vel y > 0))]
trigger3 = enemynear, statetype = A && enemynear, hitfall
trigger3 = !(enemynear, stateno = [820, 821])
trigger3 = !(enemynear, stateno = [860, 861])
trigger3 = !(numtarget(10750))
trigger3 = random < (200 * (ailevel ** 2.0 / 64.0))

[State -1, AI 1110 Medium KF Knee]
type = ChangeState
value = 1110
triggerall = ailevel
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = roundstate = 2 && statetype != A
; condition
; startup = 7
;Clsn1: 2
;  Clsn1[0] = 14, -78, 37, -27
;  Clsn1[1] = 4, -70, 37, -46
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
;
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger1 = p2bodydist x >= const(size.ground.front) * (p2statetype = A)
trigger1 = p2bodydist x <= ((37 + 8 * enemynear, vel x * (enemynear, statetype = A)) - const(size.ground.front)) * const(size.xscale)
trigger1 = p2dist y = [(-78 - (enemynear, vel y + 8 * (enemynear, const(movement.yaccel)))) * const(size.yscale), const240p(8)]
trigger1 = p2stateno != [120, 155]
trigger1 = p2movetype = A || p2statetype = A
trigger1 = enemynear, vel x >= 0 || numtarget
trigger1 = enemynear, vel y >= const240p(-3) || numtarget
trigger1 = enemynear, p2bodydist x > 0
trigger1 = random < (cond(p2statetype != A, 25, 200 * (ailevel ** 2.0 / 64.0)))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-const240p(8), (ceil(((3 / 4.0) * 37) - const(size.ground.front))) * const(size.xscale)]
trigger2 = p2dist y = [ceil(((3 / 4.0) * -70) * const(size.yscale)), const240p(8)]
trigger2 = movehit
trigger2 = stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430
trigger2 = enemynear, gethitvar(hittime) >= 7
trigger2 = p2statetype != A
trigger2 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger3 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger3 = p2bodydist x = [-8, ((37 + ((7 * enemynear, vel x) * p2statetype = A)) - const(size.ground.front)) * const(size.xscale)]
trigger3 = p2dist y = [(-78 - enemynear, vel y) * const(size.yscale), -20 - (7 * enemynear, vel y * (enemynear, vel y > 0))]
trigger3 = enemynear, statetype = A && enemynear, hitfall
trigger3 = !(enemynear, stateno = [820, 821])
trigger3 = !(enemynear, stateno = [860, 861])
trigger3 = !(numtarget(10750))
trigger3 = random < (200 * (ailevel ** 2.0 / 64.0))

[State -1, AI 1100 Light KF Knee]
type = ChangeState
value = 1100
triggerall = ailevel
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = roundstate = 2 && statetype != A
; condition
; startup = 7
;Clsn1: 2
;  Clsn1[0] = 14, -78, 37, -27
;  Clsn1[1] = 4, -70, 37, -46
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
;
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger1 = p2bodydist x >= const(size.ground.front) * (p2statetype = A)
trigger1 = p2bodydist x <= ((37 + 8 * enemynear, vel x * (enemynear, statetype = A)) - const(size.ground.front)) * const(size.xscale)
trigger1 = p2dist y = [(-78 - (enemynear, vel y + 8 * (enemynear, const(movement.yaccel)))) * const(size.yscale), const240p(8)]
trigger1 = p2stateno != [120, 155]
trigger1 = p2movetype = A || p2statetype = A
trigger1 = enemynear, vel x >= 0 || numtarget
trigger1 = enemynear, vel y >= const240p(-3) || numtarget
trigger1 = enemynear, p2bodydist x > 0
trigger1 = random < (cond(p2statetype != A, 25, 200 * (ailevel ** 2.0 / 64.0)))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-const240p(8), (ceil(((3 / 4.0) * 37) - const(size.ground.front))) * const(size.xscale)]
trigger2 = p2dist y = [ceil(((3 / 4.0) * -70) * const(size.yscale)), const240p(8)]
trigger2 = movehit
trigger2 = stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430
trigger2 = enemynear, gethitvar(hittime) >= 7
trigger2 = p2statetype != A
trigger2 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger3 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger3 = p2bodydist x = [-8, ((37 + ((7 * enemynear, vel x) * p2statetype = A)) - const(size.ground.front)) * const(size.xscale)]
trigger3 = p2dist y = [(-78 - enemynear, vel y) * const(size.yscale), -20 - (7 * enemynear, vel y * (enemynear, vel y > 0))]
trigger3 = enemynear, statetype = A && enemynear, hitfall
trigger3 = !(enemynear, stateno = [820, 821])
trigger3 = !(enemynear, stateno = [860, 861])
trigger3 = !(numtarget(10750))
trigger3 = random < (200 * (ailevel ** 2.0 / 64.0))

[State -1, AI 1020 Strong KF Palm]
type = ChangeState
value = 1020
triggerall = ailevel
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = roundstate = 2 && statetype != A
triggerall = p2statetype != A
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200,499])
triggerall = (enemynear, const(size.head.pos.y) <= -const240p(40)) || (enemynear, statetype = A && numtarget)
;Clsn1: 1
;  Clsn1[0] = -1, -63, 52, -49
; condition
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
;
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger1 = p2bodydist x = [-const240p(8), (116 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-22 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = p2bodydist x >= (50 - const(size.ground.front)) * const(size.xscale)
trigger1 = !enemynear, ctrl && (p2stateno != [120, 155])
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-const240p(8), (ceil(((3 / 4.0) * 68) - const(size.ground.front))) * const(size.xscale)]
trigger2 = p2dist y = [ceil(((3 / 4.0) * -63) * const(size.yscale)), const240p(8)]
trigger2 = p2statetype != A
trigger2 = random < (ailevel * 64.0)

[State -1, AI 1010 Medium KF Palm]
type = ChangeState
value = 1010
triggerall = ailevel
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = roundstate = 2 && statetype != A
triggerall = p2statetype != A
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200,499])
triggerall = (enemynear, const(size.head.pos.y) <= -const240p(40)) || (enemynear, statetype = A && numtarget)
;Clsn1: 1
;  Clsn1[0] = -1, -63, 52, -49
; condition
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
;
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger1 = p2bodydist x = [-const240p(8), (112 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-63 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = p2bodydist x >= (50 - const(size.ground.front)) * const(size.xscale)
trigger1 = !enemynear, ctrl && (p2stateno != [120, 155])
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-const240p(8), (ceil(((3 / 4.0) * 65) - const(size.ground.front))) * const(size.xscale)]
trigger2 = p2dist y = [ceil(((3 / 4.0) * -63) * const(size.yscale)), const240p(8)]
trigger2 = p2statetype != A
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[State -1, AI 1000 Light KF Palm]
type = ChangeState
value = 1000
triggerall = ailevel
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = roundstate = 2 && statetype != A
triggerall = p2statetype != A
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200,499])
triggerall = (enemynear, const(size.head.pos.y) <= -const240p(40)) || (enemynear, statetype = A && numtarget)
;Clsn1: 1
;  Clsn1[0] = -1, -63, 52, -49
; condition
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
;
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger1 = p2bodydist x = [-const240p(8), (120 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-63 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = p2bodydist x >= (50 - const(size.ground.front)) * const(size.xscale)
trigger1 = !enemynear, ctrl && (p2stateno != [120, 155])
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-const240p(8), (ceil(((3 / 4.0) * 63) - const(size.ground.front))) * const(size.xscale)]
trigger2 = p2dist y = [ceil(((3 / 4.0) * -63) * const(size.yscale)), const240p(8)]
trigger2 = p2statetype != A
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[State -1, AI 1400 Light KF Blow]
type = ChangeState
value = 1400
triggerall = ailevel
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = roundstate = 2 && statetype != A
triggerall = (enemynear, const(size.head.pos.y) <= -const240p(40)) || (enemynear, statetype = A && numtarget)
; condition
;Clsn1: 1
;  Clsn1[0] = -33, -71, 52, -49
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
;
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger1 = p2bodydist x = [-const240p(8), (52 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-71 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = enemynear, vel y > -1
trigger1 = !((enemynear, stateno = [1000, 4999]) || (enemynear, hitdefattr = SCA, SA, HA))
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-const240p(8), (ceil(((3 / 4.0) * 52) - const(size.ground.front))) * const(size.xscale)]
trigger2 = p2dist y = [ceil(((3 / 4.0) * -89) * const(size.yscale)), const240p(8)]
trigger2 = enemynear, gethitvar(hittime) >= 14
trigger2 = stateno != 221 && stateno != 251 && stateno != 420
trigger2 = p2statetype != A
trigger2 = random < (100 * (ailevel ** 2.0 / 64.0))

[State -1, AI 1410 Medium KF Blow]
type = ChangeState
value = 1410
triggerall = ailevel
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = roundstate = 2 && statetype != A
triggerall = (enemynear, const(size.head.pos.y) <= -const240p(40)) || (enemynear, statetype = A && numtarget)
; condition
;Clsn1: 1
;  Clsn1[0] = -33, -71, 52, -49
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
;
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger1 = p2bodydist x = [-const240p(8), (52 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-71 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = enemynear, vel y > -1
trigger1 = !((enemynear, stateno = [1000, 4999]) || (enemynear, hitdefattr = SCA, SA, HA))
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-const240p(8), (ceil(((3 / 4.0) * 52) - const(size.ground.front))) * const(size.xscale)]
trigger2 = p2dist y = [ceil(((3 / 4.0) * -89) * const(size.yscale)), const240p(8)]
trigger2 = enemynear, gethitvar(hittime) >= 14
trigger2 = stateno != 221 && stateno != 251 && stateno != 420
trigger2 = p2statetype != A
trigger2 = random < (100 * (ailevel ** 2.0 / 64.0))

[State -1, AI 1420 Strong KF Blow]
type = ChangeState
value = 1420
triggerall = ailevel
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = roundstate = 2 && statetype != A
triggerall = (enemynear, const(size.head.pos.y) <= -const240p(40)) || (enemynear, statetype = A && numtarget)
; condition
; startup = 14
;Clsn1: 1
;  Clsn1[0] = -33, -71, 52, -49
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
;
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger1 = p2bodydist x = [-const240p(8), (52 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-71 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = enemynear, vel y > -1
trigger1 = !((enemynear, stateno = [1000, 4999]) || (enemynear, hitdefattr = SCA, SA, HA))
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-const240p(8), (ceil(((3 / 4.0) * 52) - const(size.ground.front))) * const(size.xscale)]
trigger2 = p2dist y = [ceil(((3 / 4.0) * -89) * const(size.yscale)), const240p(8)]
trigger2 = enemynear, gethitvar(hittime) >= 14
trigger2 = stateno != 221 && stateno != 251 && stateno != 420
trigger2 = p2statetype != A
trigger2 = random < (100 * (ailevel ** 2.0 / 64.0))

;============================================================================
; AI Super Moves ------------------------------------------------------------
;============================================================================
[State -1, AI 3200 Kung Fu Fury]
type = ChangeState
value = 3200
triggerall = ailevel
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = roundstate = 2 && statetype != A
triggerall = ifelse(var(20) <= 0, power >= 3000, power >= 1000)
;
triggerall = enemynear, life >= 0.20 * enemynear, lifemax
triggerall = !enemynear, ctrl && (p2stateno != [120, 155])
triggerall = !(enemynear, pos y) && (enemynear, vel y > -1) && !(enemynear, hitfall)
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
; condition
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger1 = p2bodydist x = [-const240p(8), (72 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-92 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = (p2stateno != [120, 155]) || (enemynear, hitdefattr = SCA, NA)
trigger1 = !enemynear, ctrl
trigger1 = enemynear, animtime < -10
trigger1 = enemynear, vel y > -1
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(6)
trigger2 = p2bodydist x = [-const240p(8), (ceil(((3 / 4.0) * 72) - const(size.ground.front))) * const(size.xscale)]
trigger2 = p2dist y = [ceil(((3 / 4.0) * -92) * const(size.yscale)), const240p(8)]
trigger2 = movehit
trigger2 = enemynear, gethitvar(hittime) >= 8
trigger2 = stateno != 1300 && stateno != 1330 && stateno != 1331
trigger2 = !(stateno = 3000 && animelemtime(10) < 0)
trigger2 = !(stateno = 3101 && animelemtime(34) < 0)
trigger2 = p2statetype != A
trigger2 = random < (cond((stateno = [200, 499]), 50, 3 ** (ceil(power / 600.0))) * (ailevel ** 2.0 / 64.0))

[State -1, AI 3150 Kung Fu Ranbu Max]
type = ChangeState
value = 3150
triggerall = ailevel
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = roundstate = 2 && statetype != A
triggerall = ifelse(var(20) <= 0, power >= 2000, power >= 1000)
;
triggerall = enemynear, life >= 0.15 * enemynear, lifemax
triggerall = !enemynear, ctrl && (p2stateno != [120, 155])
triggerall = !(enemynear, pos y) && (enemynear, vel y > -1) && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -const240p(40)) || (enemynear, statetype = A && numtarget)
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
;condition
; startup = 8
;Clsn1: 1
;  Clsn1[0] = -1, -63, 52, -49
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger1 = p2bodydist x = [-const240p(8), (96 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-63 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = (p2stateno != [120, 155]) || (enemynear, hitdefattr = SCA, NA)
trigger1 = !enemynear, ctrl
trigger1 = enemynear, animtime < -10
trigger1 = enemynear, vel y > -1
trigger1 = random < (100 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(6) || var(7)
trigger2 = p2bodydist x = [-const240p(8), (ceil(((3 / 4.0) * 72) - const(size.ground.front))) * const(size.xscale)]
trigger2 = p2dist y = [ceil(((3 / 4.0) * -63) * const(size.yscale)), const240p(8)]
trigger2 = movehit
trigger2 = (enemynear, gethitvar(hittime) >= 7) || (enemynear, gethitvar(yvel) != 0)
trigger2 = stateno != 1300 && stateno != 1330 && stateno != 1331
trigger2 = !((stateno = 1302 || stateno = 1333) && enemynear,backedgebodydist > abs(enemynear,vel x + enemynear,const(size.ground.back)))
trigger2 = random < (cond((stateno = [200, 499]), 50, 300 * (ailevel ** 2.0 / 64.0)))
trigger2 = !(stateno = 3000 && animelemtime(10) < 0)
trigger2 = !(stateno = 3101 && animelemtime(34) < 0)
trigger2 = random < (cond((stateno = [200, 499]), 50, 3 ** (floor(power / 600.0))) * (ailevel ** 2.0 / 64.0))

[State -1, AI 3050 Kung Fu Barrage Max]
type = ChangeState
value = 3050
triggerall = ailevel
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = roundstate = 2 && statetype != A
triggerall = ifelse(var(20) <= 0, power >= 2000, power >= 1000)
; condition
; startup = 8
;Clsn1: 1
;  Clsn1[0] = -1, -63, 52, -49
;
triggerall = enemynear, life >= 0.15 * enemynear, lifemax
triggerall = !enemynear, ctrl && (p2stateno != [120, 155])
triggerall = !(enemynear, pos y) && (enemynear, vel y > -1) && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -const240p(40)) || (enemynear, statetype = A && numtarget)
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
;condition
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger1 = p2bodydist x = [-const240p(8), (52 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-63 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = (p2stateno != [120, 155]) || (enemynear, hitdefattr = SCA, NA)
trigger1 = !enemynear, ctrl
trigger1 = enemynear, animtime < -13
trigger1 = enemynear, vel y > -1
trigger1 = random < (100 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(6) || var(7)
trigger2 = p2bodydist x = [-const240p(8), (ceil(((3 / 4.0) * 72) - const(size.ground.front))) * const(size.xscale)]
trigger2 = p2dist y = [ceil(((3 / 4.0) * -63) * const(size.yscale)), const240p(8)]
trigger2 = movehit
trigger2 = (enemynear, gethitvar(hittime) >= 8) || (enemynear, gethitvar(yvel) != 0)
trigger2 = stateno != 1300 && stateno != 1330 &&stateno != 1331
trigger2 = !(stateno = 3000 && animelemtime(10) < 0)
trigger2 = !(stateno = 3101 && animelemtime(34) < 0)
trigger2 = p2statetype != A
trigger2 = random < (cond((stateno = [200, 499]), 50, (3 ** (floor(power / 600.0)))) * (ailevel ** 2.0 / 64.0))

[State -1, AI 3100 Kung Fu Ranbu]
type = ChangeState
value = 3100
triggerall = ailevel
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = roundstate = 2 && statetype != A
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
triggerall = !(enemynear, pos y) && (enemynear, vel y > -1) && !(enemynear, hitfall)
;
; startup = 7
;Clsn1Default: 1
;  Clsn1[0] = 29, -56, 56, 0
;
triggerall = !enemynear, ctrl && (p2stateno != [120, 155])
triggerall = !(enemynear, pos y) && (enemynear, vel y > -1) && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -const240p(40)) || (enemynear, statetype = A && numtarget)
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
; condition
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger1 = p2bodydist x = [-const240p(8), (120 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-56 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = (p2stateno != [120, 155]) || (enemynear, hitdefattr = SCA, NA)
trigger1 = !enemynear, ctrl
trigger1 = enemynear, animtime < -10
trigger1 = enemynear, vel y > -1
trigger1 = random < (100 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(6)
trigger2 = p2bodydist x = [-const240p(8), (ceil(((3 / 4.0) * 72) - const(size.ground.front))) * const(size.xscale)]
trigger2 = p2dist y = [ceil(((3 / 4.0) * -56) * const(size.yscale)), const240p(8)]
trigger2 = movehit
trigger2 = (enemynear, gethitvar(hittime) >= 7) || (enemynear, gethitvar(yvel) != 0)
trigger2 = stateno != 1300 && stateno != 1330 && stateno != 1331
trigger2 = !((stateno = 1302 || stateno = 1333) && enemynear,backedgebodydist > abs(enemynear,vel x + enemynear,const(size.ground.back)))
trigger2 = random < (cond((stateno = [200, 499]), 50 * (ailevel ** 2.0 / 64.0), (ailevel * 64.0)))

[State -1, AI 3000 Kung Fu Barrage]
type = ChangeState
value = 3000
triggerall = ailevel
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = !var(16) && (var(15) < 1)
triggerall = roundstate = 2 && statetype != A
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
; condition
; startup = 8
;Clsn1: 1
;  Clsn1[0] = -1, -63, 52, -49
;
triggerall = !enemynear, ctrl && (p2stateno != [120, 155])
triggerall = !(enemynear, pos y) && (enemynear, vel y > -1) && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -const240p(40)) || (enemynear, statetype = A && numtarget)
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
;condition
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100,101])
trigger1 = p2bodydist x = [-const240p(8), (96 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-63 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = (p2stateno != [120, 155]) || (enemynear, hitdefattr = SCA, NA)
trigger1 = !enemynear, ctrl
trigger1 = enemynear, animtime < -13
trigger1 = enemynear, vel y > -1
trigger1 = random < (75 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(6)
trigger2 = p2bodydist x = [-const240p(8), (ceil(((3 / 4.0) * 67) - const(size.ground.front))) * const(size.xscale)]
trigger2 = p2dist y = [ceil(((3 / 4.0) * -63) * const(size.yscale)), const240p(8)]
trigger2 = movehit
trigger2 = (enemynear, gethitvar(hittime) >= 8) || (enemynear, gethitvar(yvel) != 0)
trigger2 = stateno != 1300 && stateno != 1330 && stateno != 1331
trigger2 = random < (cond((stateno = [200, 499]), 50 * (ailevel ** 2.0 / 64.0), (ailevel * 64.0)))

;============================================================================
; AI Taunts -----------------------------------------------------------------
;============================================================================
[State -1, AI 195 Taunt]
type = ChangeState
value = 195
triggerall = ailevel
triggerall = numenemy
triggerall = p2statetype != L && p2stateno != 5120 && p2stateno != 5201
triggerall = roundstate = 2 && statetype != A
triggerall = stateno != [200,699]
triggerall = statetype != A && Life >= 0.5 * LifeMax
triggerall = (enemynear, Life) <= 0.5 * (enemynear, LifeMax)
; condition
trigger1 = ctrl || (stateno = [100,101])
trigger1 = p2dist x >= 160 && !(enemynear, ctrl)
trigger1 = (enemynear, movetype = H) && (enemynear, hitfall)
trigger1 = random < (25 * (ailevel ** 2.0 / 64.0))