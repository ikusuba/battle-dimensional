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
name = "QBQF"
command = ~D, DB, B, D, DF
time = 24

[Command]
name = "QFQB"
command = ~D, DF, F, D, DB
time = 24

[Command]
name = "QCFx2"
command = ~D, DF, F, D, DF
time = 21;24

[Command]
name = "QCBx2"
command = ~D, DB, B, D, DB
time = 21;24

;-| Special Motions |--------------------------------------------------------
[command];easier HCB/F
name = "HCB"
command = ~F, DF, $D, B
time = 24

[command]
name = "HCF"
command = ~B, DB, $D, F
time = 24

[Command]
name = "DP"
command = ~F, D, DF
time = 12;15

[Command]
name = "RDP"
command = ~B, D, DB
time = 12;15

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
name = "CDU"
command = ~$D,$U
time = 15

[Command]
name = "QCF"
command = ~D, DF, F
time = 15;12

[Command]
name = "QCB"
command = ~D, DB, B
time = 15;12

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
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
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
buffer.time = 1;Not sure if this is nessecary?

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

[State -1, ProjContact];special thanks to 20S
type = VarSet
trigger1 = IsHelper
trigger1 = MoveContact = 1 && NumTarget
var(18) = 1

[State -1, Root ProjContact];special thanks to 20S
type = ParentVarSet
trigger1 = IsHelper
trigger1 = MoveContact = 1 && NumTarget
var(18) = 1

[State -1, AI Guard Fix]
type = Assertspecial
triggerall = ailevel
trigger1 = stateno != [120,159]
trigger1 = stateno != 5210
flag = noairguard
flag2 = nocrouchguard
flag3 = nostandguard

[State -1, Chou DNB MAX]
type = ChangeState
value = 3400
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(42)
triggerall = (helper(10371), var(3)) && (helper(10371), var(4)) || (helper(10371), var(4)) && (helper(10371), var(5)) || (helper(10371), var(3)) && (helper(10371), var(5))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 3000, power >= 1000)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Hana Arashi]
type = ChangeState
value = 3500
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(41)
triggerall = (helper(10371), var(0)) && (helper(10371), var(1)) || (helper(10371), var(1)) && (helper(10371), var(2)) || (helper(10371), var(0)) && (helper(10371), var(2))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 2000, power >= 1000)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6) || var(7)

[State -1, Crimson FD Max]
type = ChangeState
value = 3250
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(41)
triggerall = (helper(10371), var(0)) && (helper(10371), var(1)) || (helper(10371), var(1)) && (helper(10371), var(2)) || (helper(10371), var(0)) && (helper(10371), var(2))
triggerall = RoundState = 2 && StateType = A
triggerall = ifelse(var(20) <= 0, power >= 2000, power >= 1000)
triggerall = var(3)!=[1,2]
trigger1 = ctrl && pos y <= -30
trigger2 = var(6)

[State -1, Chou Kacho Max]
type = ChangeState
value = 3050
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(40)
triggerall = (helper(10371), var(0)) && (helper(10371), var(1)) || (helper(10371), var(1)) && (helper(10371), var(2)) || (helper(10371), var(0)) && (helper(10371), var(2))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 2000, power >= 1000)
triggerall = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101]) || var(6) || var(7)
trigger1 = NumHelper(3011) <= 0
trigger2 = NumHelper(3011) <= 2
trigger2 = Helper(3011),StateNo = [1062,1063]

[State -1, Chou Deadly Ninja Bees]
type = ChangeState
value = 3300
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(42)
triggerall = (helper(10371), var(3)) || (helper(10371), var(4)) || (helper(10371), var(5)) || (helper(10371), var(10)) || (helper(10371), var(11)) || (helper(10371), var(12))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Crimson Firebird Diver]
type = ChangeState
value = 3200
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(41)
triggerall = (helper(10371), var(0)) || (helper(10371), var(1)) || (helper(10371), var(2)) || (helper(10371), var(7)) || (helper(10371), var(8)) || (helper(10371), var(9))
triggerall = RoundState = 2 && StateType = A
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
triggerall = var(3)!=[1,2]
trigger1 = ctrl && pos y <= -30
trigger2 = var(6)

[State -1, Explosive Mai]
type = ChangeState
value = 3100
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(40)
triggerall = (helper(10371), var(3)) || (helper(10371), var(4)) || (helper(10371), var(5)) || (helper(10371), var(10)) || (helper(10371), var(11)) || (helper(10371), var(12))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
triggerall = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101]) || var(6)
trigger1 = NumHelper(3105) <= 0
trigger2 = NumHelper(3105) <= 1
trigger2 = Helper(3105),StateNo = 1063

[State -1, Chou Kacho Sen]
type = ChangeState
value = 3000
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(40)
triggerall = (helper(10371), var(0)) || (helper(10371), var(1)) || (helper(10371), var(2)) || (helper(10371), var(7)) || (helper(10371), var(8)) || (helper(10371), var(9))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
triggerall = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101]) || var(6)
trigger1 = NumHelper(3010) <= 0
trigger2 = NumHelper(3010) <= 2
trigger2 = Helper(3010),StateNo = [1062,1063]

[State -1, EX Killer Bees]
type = ChangeState
value = 1700
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(25)
triggerall = (helper(10371), var(3)) && (helper(10371), var(4)) || (helper(10371), var(4)) && (helper(10371), var(5)) || (helper(10371), var(3)) && (helper(10371), var(5))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, EX Hakuro No Mai]
type = ChangeState
value = 2350
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(24)
triggerall = (helper(10371), var(0)) && (helper(10371), var(1)) || (helper(10371), var(1)) && (helper(10371), var(2)) || (helper(10371), var(0)) && (helper(10371), var(2))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, EX Hishou Ryuu'en Jin]
type = ChangeState
value = 1800
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(24)
triggerall = (helper(10371), var(3)) && (helper(10371), var(4)) || (helper(10371), var(4)) && (helper(10371), var(5)) || (helper(10371), var(3)) && (helper(10371), var(5))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, EX Burning Mai]
type = ChangeState
value = 2000
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(23)
triggerall = (helper(10371), var(3)) && (helper(10371), var(4)) || (helper(10371), var(4)) && (helper(10371), var(5)) || (helper(10371), var(3)) && (helper(10371), var(5))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
triggerall = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101]) || var(5)
trigger1 = NumHelper(1450) <= 0
trigger2 = NumHelper(1450) <= 1
trigger2 = Helper(1450),StateNo = 1063

[State -1, EX Wall Fly]
type = ChangeState
value = 2100
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(23)
triggerall = (helper(10371), var(0)) && (helper(10371), var(1)) || (helper(10371), var(1)) && (helper(10371), var(2)) || (helper(10371), var(0)) && (helper(10371), var(2))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52
trigger2 = var(5)

[State -1, EX Ryu En Bu]
type = ChangeState
value = 1900
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(22)
triggerall = (helper(10371), var(0)) && (helper(10371), var(1)) || (helper(10371), var(1)) && (helper(10371), var(2)) || (helper(10371), var(0)) && (helper(10371), var(2))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, EX Flying Squirrel]
type = ChangeState
value = 2200
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(22)
triggerall = (helper(10371), var(0)) && (helper(10371), var(1)) || (helper(10371), var(1)) && (helper(10371), var(2)) || (helper(10371), var(0)) && (helper(10371), var(2))
triggerall = RoundState = 2 && StateType = A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
triggerall = var(3)!=[1,2]
trigger1 = ctrl && pos y <= -30
trigger2 = var(5)

[State -1, EX Saiyo Chidori]
type = ChangeState
value = 2450
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(22)
triggerall = (helper(10371), var(3)) && (helper(10371), var(4)) || (helper(10371), var(4)) && (helper(10371), var(5)) || (helper(10371), var(3)) && (helper(10371), var(5))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, EX Kacho Sen]
type = ChangeState
value = 1600
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(21)
triggerall = (helper(10371), var(0)) && (helper(10371), var(1)) || (helper(10371), var(1)) && (helper(10371), var(2)) || (helper(10371), var(0)) && (helper(10371), var(2))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
triggerall = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101]) || var(5)
trigger1 = NumHelper(1010) <= 0
trigger2 = NumHelper(1010) <= 2
trigger2 = Helper(1010),StateNo = [1015,1016]

[State -1, Killer Bees]
type = ChangeState
value = 1100
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(25)
triggerall = (helper(10371), var(3)) || (helper(10371), var(4)) || (helper(10371), var(5)) || (helper(10371), var(10)) || (helper(10371), var(11)) || (helper(10371), var(12))
triggerall = RoundState = 2 && StateType != A
trigger1= ctrl || StateNo = 40 || StateNo = 52 ||(stateno=[100,101])
trigger2 = var(5)

[State -1, Hakuro No Mai]
type = ChangeState
value = 2300
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(24)
triggerall = (helper(10371), var(0)) || (helper(10371), var(1)) || (helper(10371), var(2)) || (helper(10371), var(7)) || (helper(10371), var(8)) || (helper(10371), var(9))
triggerall = RoundState = 2 && StateType != A
trigger1= ctrl || StateNo = 40 || StateNo = 52 ||(stateno=[100,101])
trigger2 = var(5)

[State -1, Hishou Ryuu'en Jin]
type = ChangeState
value = 1200
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(24)
triggerall = (helper(10371), var(3)) || (helper(10371), var(4)) || (helper(10371), var(5)) || (helper(10371), var(10)) || (helper(10371), var(11)) || (helper(10371), var(12))
triggerall = RoundState = 2 && StateType != A
trigger1= ctrl || StateNo = 40 || StateNo = 52 ||(stateno=[100,101])
trigger2 = var(5)

[State -1, Burning Mai Strong]
type = ChangeState
value = 1420
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(23)
triggerall = (helper(10371), var(5)) || (helper(10371), var(15))
triggerall = RoundState = 2 && StateType != A
triggerall = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101]) || var(5)
trigger1 = NumHelper(1450) <= 0
trigger2 = NumHelper(1450) <= 1
trigger2 = Helper(1450),StateNo = 1063

[State -1, Burning Mai Med]
type = ChangeState
value = 1410
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(23)
triggerall = (helper(10371), var(4)) || (helper(10371), var(11))
triggerall = RoundState = 2 && StateType != A
triggerall = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101]) || var(5)
trigger1 = NumHelper(1450) <= 0
trigger2 = NumHelper(1450) <= 1
trigger2 = Helper(1450),StateNo = 1063

[State -1, Burning Mai]
type = ChangeState
value = 1400
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(23)
triggerall = (helper(10371), var(3)) || (helper(10371), var(10))
triggerall = RoundState = 2 && StateType != A
triggerall = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101]) || var(5)
trigger1 = NumHelper(1450) <= 0
trigger2 = NumHelper(1450) <= 1
trigger2 = Helper(1450),StateNo = 1063

[State -1, Wall Flying Squirrel Strong]
type = ChangeState
value = 1520
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(23)
triggerall = (helper(10371), var(2)) || (helper(10371), var(9))
triggerall = RoundState = 2 && StateType != A
trigger1= ctrl || StateNo = 40 || StateNo = 52
trigger2 = var(5)

[State -1, Wall Flying Squirrel Med]
type = ChangeState
value = 1510
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(23)
triggerall = (helper(10371), var(1)) || (helper(10371), var(8))
triggerall = RoundState = 2 && StateType != A
trigger1= ctrl || StateNo = 40 || StateNo = 52
trigger2 = var(5)

[State -1, Wall Flying Squirrel]
type = ChangeState
value = 1500
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(23)
triggerall = (helper(10371), var(0)) || (helper(10371), var(7))
triggerall = RoundState = 2 && StateType != A
trigger1= ctrl || StateNo = 40 || StateNo = 52
trigger2 = var(5)

[State -1, Alpha Counter(Kick)]
type = ChangeState
value = 750
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
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
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(20)
triggerall = (helper(10371), var(0)) || (helper(10371), var(1)) || (helper(10371), var(2)) || (helper(10371), var(7)) || (helper(10371), var(8)) || (helper(10371), var(9))
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20)

[State -1, Ryu En Bu Strong]
type = ChangeState
value = 1302
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(22)
triggerall = (helper(10371), var(2)) || (helper(10371), var(9))
triggerall = RoundState = 2 && StateType != A
trigger1= ctrl || StateNo = 40 || StateNo = 52 ||(stateno=[100,101])
trigger2 = var(5)

[State -1, Ryu En Bu Med]
type = ChangeState
value = 1301
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(22)
triggerall = (helper(10371), var(1)) || (helper(10371), var(8))
triggerall = RoundState = 2 && StateType != A
trigger1= ctrl || StateNo = 40 || StateNo = 52 ||(stateno=[100,101])
trigger2 = var(5)

[State -1, Ryu En Bu]
type = ChangeState
value = 1300
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(22)
triggerall = (helper(10371), var(0)) || (helper(10371), var(7))
triggerall = RoundState = 2 && StateType != A
trigger1= ctrl || StateNo = 40 || StateNo = 52 ||(stateno=[100,101])
trigger2 = var(5)

[State -1, Flying Squirrel Strong(Air)]
type = ChangeState
value = 1570
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(22)
triggerall = (helper(10371), var(2)) || (helper(10371), var(9))
triggerall = RoundState = 2 && StateType = A
triggerall = var(3)!=[1,2]
trigger1= ctrl && pos y <= -30
trigger2 = var(5)

[State -1, Flying Squirrel Med(Air)]
type = ChangeState
value = 1560
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(22)
triggerall = (helper(10371), var(1)) || (helper(10371), var(8))
triggerall = RoundState = 2 && StateType = A
triggerall = var(3)!=[1,2]
trigger1= ctrl && pos y <= -30
trigger2 = var(5)

[State -1, Flying Squirrel(Air)]
type = ChangeState
value = 1550
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(22)
triggerall = (helper(10371), var(0)) || (helper(10371), var(7))
triggerall = RoundState = 2 && StateType = A
triggerall = var(3)!=[1,2]
trigger1= ctrl && pos y <= -30
trigger2 = var(5)

[State -1, Saiyo Chidori Strong]
type = ChangeState
value = 2402
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(22)
triggerall = (helper(10371), var(5)) || (helper(10371), var(12))
triggerall = RoundState = 2 && StateType != A
trigger1= ctrl || StateNo = 40 || StateNo = 52 ||(stateno=[100,101])
trigger2 = var(5)

[State -1, Saiyo Chidori Med]
type = ChangeState
value = 2401
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(22)
triggerall = (helper(10371), var(4)) || (helper(10371), var(11))
triggerall = RoundState = 2 && StateType != A
trigger1= ctrl || StateNo = 40 || StateNo = 52 ||(stateno=[100,101])
trigger2 = var(5)

[State -1, Saiyo Chidori]
type = ChangeState
value = 2400
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(22)
triggerall = (helper(10371), var(3)) || (helper(10371), var(10))
triggerall = RoundState = 2 && StateType != A
trigger1= ctrl || StateNo = 40 || StateNo = 52 ||(stateno=[100,101])
trigger2 = var(5)

[State -1, Kacho Sen]
type = ChangeState
value = 1000
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(21)
triggerall = (helper(10371), var(0)) || (helper(10371), var(1)) || (helper(10371), var(2)) || (helper(10371), var(7)) || (helper(10371), var(8)) || (helper(10371), var(9))
triggerall = RoundState = 2 && StateType != A
triggerall = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101]) || var(5)
trigger1 = NumHelper(1010) <= 0
trigger2 = NumHelper(1010) <= 2
trigger2 = Helper(1010),StateNo = [1015,1016]

[State -1, Fake Kacho Sen]
type = ChangeState
value = 196
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(21)
triggerall = (helper(10371), var(6)) || (helper(10371), var(13))
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Counter Movement]
type = ChangeState
value = 740
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
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
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = (helper(10371), var(3) && helper(10371), var(4)) || (helper(10371), var(4) && helper(10371), var(5)) || (helper(10371), var(3) && helper(10371), var(5))
trigger1 = (helper(10371),command = "holdfwd")|| (helper(10371),command = "holdback")
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Throw(Punch)]
type = ChangeState
value = 800
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = (helper(10371), var(0) && helper(10371), var(1)) || (helper(10371), var(1) && helper(10371), var(2)) || (helper(10371), var(0) && helper(10371), var(2))
trigger1 = (helper(10371),command = "holdfwd")|| (helper(10371),command = "holdback")
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Air Throw(Kick)]
type = ChangeState
value = 900
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = (helper(10371), var(3) && helper(10371), var(4)) || (helper(10371), var(4) && helper(10371), var(5)) || (helper(10371), var(3) && helper(10371), var(5))
trigger1 = (command = "holdfwd" || command = "holdback")
trigger1 = RoundState = 2 && StateType = A
trigger1 = ctrl && pos y <= -30
trigger1 = statetype != S

[State -1, Air Throw(Punch)]
type = ChangeState
value = 900
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = (helper(10371), var(0) && helper(10371), var(1)) || (helper(10371), var(1) && helper(10371), var(2)) || (helper(10371), var(0) && helper(10371), var(2))
trigger1 = (command = "holdfwd" || command = "holdback")
trigger1 = RoundState = 2 && StateType = A
trigger1 = ctrl && pos y <= -30
trigger1 = statetype != S

[State -1, Roll Forward]
type = ChangeState
value = 710
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(14) ;LP+LK detection
triggerall = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdfwd"

[State -1, Roll Back]
type = ChangeState
value = 715
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(14) ;LP+LK detection
triggerall = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdback"

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
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(16) ;HP+HK detection
triggerall = RoundState = 2 && StateType != A
triggerall = var(20) <= 0 && Power >= 1000
trigger1 = ctrl || (Stateno = [100,101])

[State -1, Dodge]
type = ChangeState
value = 700
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371)
triggerall = helper(10371), var(14) ;LP+LK detection
triggerall = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101]))

[State -1, Yusura Ume]
type = ChangeState
value = 641
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(4)
triggerall = command = "holddown"
triggerall = var(3)!=[1,2]
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Ukihane]
type = ChangeState
value = 631
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(3)
triggerall = command = "holddown"
triggerall = var(3)!=[1,2]
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Dairin Fuusha Otoshi]
type = ChangeState
value = 621
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(2)
triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Fierce Blossom]
type = Changestate
value = 251
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(5)
triggerall = (helper(10371),command != "holddown")
triggerall = command = "holdfwd"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])

[State -1, Fierce Blossom(Linked)]
type = Changestate
value = 253
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(5)
triggerall = (helper(10371),command != "holddown")
triggerall = command = "holdfwd"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])
trigger2 = var(4)

[State -1, Dancing of Tensui]
type = Changestate
value = 241
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(4)
triggerall = (helper(10371),command != "holddown")
triggerall = command = "holdfwd"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])

[State -1, Benitsuru no Mai]
type = Changestate
value = 232
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(3)
triggerall = (helper(10371),command != "holddown")
triggerall = command = "holdfwd"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])

[State -1, Benitsuru no Mai(Linked)]
type = Changestate
value = 234
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(3)
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

[State -1, Wall Jump Forward]
type = ChangeState
value = 60
triggerall = !ailevel
triggerall = StateNo != 60 && PrevStateNo != 60
trigger1 = command = "holdup" && command = "holdfwd"
trigger1 = RoundState = 2 && StateType = A
trigger1 = ctrl && pos y <= -30 && BackEdgeBodyDist <= 0

[State -1, Wall Jump Backwards]
type = ChangeState
value = 61
triggerall = !ailevel
triggerall = StateNo != 61 && PrevStateNo != 61
trigger1 = command = "holdup" && command = "holdback"
trigger1 = RoundState = 2 && StateType = A
trigger1 = ctrl && pos y <= -30 && FrontEdgeBodyDist <= 0

;|Normal Commands|--------------------------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 200 ;+ (Abs(P2BodyDist X) <= 20) * 1
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(0) ; The buffered version of LP
triggerall = (helper(10371),command != "holddown")
;^Be sure to include the dir buffer check if needed DW!
triggerall = P2BodyDist x > 20
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])

[State -1, Stand Close Light Punch]
type = ChangeState
value = 201 
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(0) ; The buffered version of LP
triggerall = (helper(10371),command != "holddown")
triggerall = P2BodyDist x <= 20
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])
trigger2= (StateNo = 201 || StateNo = 231|| StateNo = 400 || StateNo = 430) && Time >=5

[State -1, Stand Medium Punch]
type = ChangeState
value = 210 
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(1) ; The buffered version of MP
triggerall = (helper(10371),command != "holddown")  
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Stand Strong Punch]
type = ChangeState
value = 220 + (Abs(P2BodyDist X) <= 22) * 1
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(2) ; The buffered version of HP
triggerall = (helper(10371),command != "holddown") 
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Stand Light Kick]
type = ChangeState
value = 230 ;+ (Abs(P2BodyDist X) <= 20) * 1
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(3) ; The buffered version of LK
triggerall = (helper(10371),command != "holddown")
triggerall = command != "holdfwd"
triggerall = P2BodyDist x > 20
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])

[State -1, Stand Close Light Kick]
type = ChangeState
value = 231
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(3) ; The buffered version of LK
triggerall = (helper(10371),command != "holddown")
triggerall = command != "holdfwd"
triggerall = P2BodyDist x <= 20
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])
trigger2= (StateNo = 201 || StateNo = 231|| StateNo = 400 || StateNo = 430) && Time >=5

[State -1, Stand Medium Kick]
type = ChangeState
value = 240 + (Abs(P2BodyDist X) <= 13) * 2
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(4) ; The buffered version of MK
triggerall = (helper(10371),command != "holddown")
triggerall = command != "holdfwd"
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])

[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(5) ; The buffered version of HK
triggerall = (helper(10371),command != "holddown")
triggerall = command != "holdfwd"
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
trigger2= (StateNo = 201 || StateNo = 400 || StateNo = 430) && Time >=5

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
trigger2= (StateNo = 201 || StateNo = 231 || StateNo = 400 || StateNo = 430) && Time >=5

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
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(3) ; The buffered version of LK
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Med Kick]
type = ChangeState
value = 640
triggerall = !ailevel
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(4) ; The buffered version of MK
triggerall = command != "holddown"
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
; AI System moves -----------------------------------------------------------
;============================================================================
[state -1, AI 20 Walk]
type = changestate
value = 20
triggerall = ailevel && numenemy
triggerall = statetype = S && roundstate = 2
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
;condition
trigger1 = ctrl
trigger1 = p2bodydist x = [cond(numtarget, -const240p(8), const240p(32)), const240p(160)]
trigger1 = p2movetype != A
trigger1 = !(enemynear, numproj)
trigger1 = stateno != [20, 119]
trigger1 = prevstateno != [20, 119]
trigger1 = gametime % floor(42 - (ailevel * 4.0)) = [0, ailevel]

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
trigger3 = random < (100 * (ailevel ** 2.0 / 64.0))

[State -1, AI 5210 Fall Recovery (Air)]
type = changestate
value = 5210
trigger1 = ailevel && numenemy
trigger1 = roundstate = 2 && alive
; condition
trigger1 = stateno = 5050 && canrecover
trigger1 = vel y > const(movement.air.gethit.airrecover.threshold)
trigger1 = random < (25 * (ailevel ** 2.0 / 64.0))

[State -1, AI 5200 Fall Recovery (Ground)]
type = changestate
value = 5200
trigger1 = ailevel && numenemy
trigger1 = roundstate = 2 && alive
; condition
trigger1 = stateno = 5050 && canrecover
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
trigger1 = random < (150 * (ailevel ** 2.0 / 64.0))

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
trigger1 = ifelse(statetype = A, ((var(3) != [1, 2]) || stateno = 5210), 1)
trigger1 = random < (ifelse((p2stateno = [200, 699]), 100, ifelse((p2stateno = [1000, 2999]), 333, 1000)) * (ailevel ** 2 / 64.0))

[State -1, AI 60 Wall Jump Forward]
type = ChangeState
value = 60
triggerall = ailevel && numenemy
triggerall = StateNo != 60 && PrevStateNo != 60
trigger1 = RoundState = 2 && StateType = A
trigger1 = ctrl && pos y <= -30 && BackEdgeBodyDist <= 0
; condition
trigger1 = p2bodydist x < const240p(80)
trigger1 = p2movetype != A && p2statetype != A
trigger1 = random < (100 * (ailevel ** 2.0 / 64.0))

[State -1, AI 61 Wall Jump Backwards]
type = ChangeState
value = 61
triggerall = ailevel && numenemy
triggerall = StateNo != 61 && PrevStateNo != 61
trigger1 = RoundState = 2 && StateType = A
trigger1 = ctrl && pos y <= -30 && FrontEdgeBodyDist <= 0
; condition
trigger1 = p2bodydist x < const240p(80)
trigger1 = vel y < 1 || pos y <= -80
trigger1 = p2movetype = A && p2statetype != A
trigger1 = random < (100 * (ailevel ** 2.0 / 64.0))

[State -1, AI 730 Power Charge]
type = changestate
value = 730
triggerall = ailevel && numenemy
triggerall = statetype != A && roundstate = 2
; condition
trigger1 = ctrl && power < const(data.power) && power < powerMax && prevstateno != 5120 && !var(20)
trigger1 = !inguarddist && p2bodydist x >= 160
trigger1 = random < (cond(power < 1000 && p2statetype = L, 250, 100 * (ailevel ** 2.0 / 64.0)))

[State -1, AI 100 run]
type = changestate
value = 100
triggerall = ailevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = ctrl && (stateno != [100, 109])
triggerall = p2stateno != [5120, 5209]
; condition
trigger1 = enemynear, movetype != A
trigger1 = p2bodydist x > 160 || numhelper(1010) || numhelper(3010) || numhelper(3011)
trigger1 = random < (200 * (AIlevel ** 2 / 64.0))
; condition
trigger2 = enemynear, movetype = H
trigger2 = p2bodydist x > 60
trigger2 = random < (50 * (AIlevel ** 2 / 64.0))
; condition
trigger3 = ctrl || (stateno = [100, 101]) || (stateno = [120, 131])
trigger3 = !var(11)
trigger3 = enemynear, gethitvar(damage)
trigger3 = random < (640 * (ailevel ** 2.0 / 64.0))

[State -1, AI 105 Back Dash]
type = changestate
value = 105
triggerall = ailevel && numenemy
triggerall = statetype != A && roundstate = 2
; condition
trigger1 = ctrl && (stateno != [100, 119])
trigger1 = backedgebodydist > const240p(80)
trigger1 = p2statetype = L
trigger1 = p2bodydist x = [-const240p(8), const240p(120)]
trigger1 = random < (200 * (ailevel ** 2.0 / 64.0))

[State -1, AI 700 Dodge]
type = changestate
value = 700
triggerall = ailevel && numenemy
triggerall = statetype != A && roundstate = 2
; condition
triggerall = enemynear,hitdefattr != SC,AT
; condition
trigger1 = ctrl || (stateno = [100, 101]) || ((stateno = [120, 131]) && random < (25 * (ailevel ** 2 / 64.0)))
trigger1 = inguarddist
trigger1 = p2bodydist x > 32 || backedgebodydist <= const240p(32)
trigger1 = p2statetype != A
trigger1 = (enemynear, hitdefattr != SCA, NA)  || enemynear, animtime < -40
trigger1 = random < ((lifemax-life)/(lifemax/const(data.life)))/(12.0 - ailevel)

[State -1, AI 710 Roll Forward]
type = changestate
value = 710
triggerall = ailevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = ctrl || (stateno = [100, 101]) || (stateno = [120, 131])
; condition
triggerall = enemynear,hitdefattr != SC,AT
; condition
trigger1 = ctrl || (stateno = [100, 101]) || ((stateno = [120, 131]) && random < (25 * (ailevel ** 2 / 64.0)))
trigger1 = inguarddist
trigger1 = p2bodydist x > 32 || backedgebodydist <= const240p(32)
trigger1 = p2statetype != A
trigger1 = (enemynear, hitdefattr != SCA, NA)  || enemynear, animtime < -40
trigger1 = random < ((lifemax-life)/(lifemax/const(data.life)))/(12.0 - ailevel)
; condition
trigger2 = ctrl || (stateno = [101, 102]) || (stateno = [120,131])
trigger2 = p2statetype = A
trigger2 = p2movetype != H
trigger2 = enemynear, vel x > 0
trigger2 = enemynear, vel y < const240p(1)
trigger2 = p2dist x < const240p(16)
trigger2 = random < ((lifemax-life)/(lifemax/const(data.life)))/(12.0 - ailevel)

[State -1, AI 715 Roll Back]
type = ChangeState
value = 715
triggerall = ailevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = frontedgedist < backedgedist
; condition
triggerall = enemynear,hitdefattr != SC,AT
; condition
trigger1 = ctrl || (stateno = [100, 101]) || (stateno = [120,131])
trigger1 = p2bodydist x > 0
trigger1 = p2bodydist x < const240p(80)
trigger1 = p2statetype != A
trigger1 = enemynear, movetype = A
trigger1 = !(enemynear, hitdefattr = SCA, NA) || (enemynear, animtime = [-32, -48])
trigger1 = facing != enemynear, facing
trigger1 = random < (25 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = ctrl || (stateno = [100, 101]) || (stateno = [120,131])
trigger2 = inguarddist
trigger2 = p2bodydist x > const240p(24)
trigger2 = p2statetype != A
trigger2 = (p2stateno != [200, 699]) || enemynear, animtime < -48
trigger2 = random < (25 * (ailevel ** 2.0 / 64.0))

[State -1, AI 770 MAX Mode]
type = ChangeState
value = 770
trigger1 = ailevel && numenemy
triggerall = RoundState = 2 && StateType != A
triggerall = var(20) <= 0 && Power >= 1000
; condition
trigger1 = ctrl || (Stateno = [100,101])
trigger1 = !inguarddist && p2bodydist x >= const240p(100)
trigger1 = enemynear, gethitvar(fall) || (p2stateno = [5050, 5110])
trigger1 = enemynear, life > enemynear, lifemax / 4.0
trigger1 = power >= 1500
trigger1 = life >= 350
trigger1 = power < 3000
trigger1 = random < (100 * (ailevel ** 2.0 / 64.0))

[State -1, AI 750 Alpha Counter]
type = ChangeState
value = 750
triggerall = ailevel && numenemy
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20)
;
trigger1 = life < p2life || life < (0.5 * lifemax)
trigger1 = power < 3000
trigger1 = p2bodydist x = [cond(p2statetype = A, const240p(32), const240p(8)), const240p(54)]
trigger1 = random < (3 ** (floor(power / 600.0)))

[State -1, AI 740 Counter Movement]
type = ChangeState
value = 740
trigger1 = ailevel && numenemy
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20)
trigger1 = life < p2life || life < (0.5 * lifemax)
trigger1 = power < 3000
trigger1 = p2bodydist x = [cond(p2statetype = A, const240p(32), const240p(8)), const240p(54)]
trigger1 = p2statetype = A
trigger1 = enemynear, animtime = [-45, -30]
trigger1 = random < (3 ** (ceil(power / 600.0)))

[State -1, AI 800 Throw]
type = changestate
value = 800
triggerall = ailevel && numenemy
triggerall = roundstate = 2 && statetype = S
triggerall = p2statetype != A && p2statetype != L && p2movetype != H
;Clsn1: 1
;  Clsn1[0] = 0, -42, 51, 0
triggerall = (p2bodydist x = [-8, 51 - const(size.ground.front)]) && (p2dist y = [-72, 8])
;
triggerall = stateno != 100
triggerall = !var(38)
; condition
trigger1 = ctrl
trigger1 = random < (125 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = ctrl && (p2stateno = [120,140])
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[State -1, AI 900 Air Throw]
type = ChangeState
value = 900
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = ctrl && pos y <= -30
trigger1 = p2statetype = A
trigger1 = p2movetype != H
trigger1 = p2bodydist x = [0, 30]
trigger1 = p2bodydist y = [-25, 25]
trigger1 = random < (250 * (AIlevel ** 2.0 / 64.0))

;=========================================================================
; AI Normal Commands -----------------------------------------------------
;=========================================================================
[State -1, AI 253 Fierce Blossom(Linked)]
type = Changestate
value = 253
triggerall = ailevel && numenemy && roundstate = 2
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
triggerall = statetype != A
; startup = 10
;Clsn1: 1
;  Clsn1[0] = 21, -77, 79, -53
triggerall = (enemynear, const(size.head.pos.y) <= -const240p(40)) || enemynear, statetype = A
triggerall = p2statetype = S || numtarget
triggerall = p2statetype != C
;
trigger1 = var(4)
trigger1 = p2bodydist x = [-const240p(8), (79 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-77 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = enemynear, gethitvar(hittime) >= 10
trigger1 = random < (400 * (ailevel ** 2.0 / 64.0))

[state -1, AI 410 Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = ailevel && numenemy && roundstate = 2
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
; startup = 4
;Clsn1: 1
;  Clsn1[0] = 9, -37, 79, -17
triggerall = p2statetype != A || numtarget
;
;condition
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger1 = p2bodydist x = [-const240p(8), (79 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-37 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = random < (175 * (ailevel ** 2.0 / 64.0)) + (ailevel * 48.0 * (enemynear, gethitvar(hittime) >= 4)) + (ailevel ** 2.0)
;condition
trigger2 = (((stateno = [200, 499]) && !animtime && movehit) || (ctrl && (enemynear, gethitvar(damage))))
trigger2 = enemynear, gethitvar(hittime) >= 4
trigger2 = p2bodydist x = [-const240p(8), (79 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-37 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0)) + (ailevel ** 2.0)

[state -1, AI 231 Stand Close Light Kick]
type = ChangeState
value = 231
triggerall = ailevel && numenemy && roundstate = 2
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
; startup = 4
;Clsn1: 1
 ; Clsn1[0] = 0, -38, 49, -12
triggerall = p2statetype != A || numtarget
;
triggerall = abs(P2BodyDist x) <= 20
;condition
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])
trigger1 = p2bodydist x = [-const240p(8), (49 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-38 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = random < (175 * (ailevel ** 2.0 / 64.0)) + (ailevel * 48.0 * (enemynear, gethitvar(hittime) >= 4)) + (ailevel ** 2.0)
;condition
trigger2= (StateNo = 201 || StateNo = 231|| StateNo = 400 || StateNo = 430) && Time >=5
trigger2 = p2bodydist x = [-const240p(8), (49 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-38 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger2 = random < (200 * (ailevel ** 2.0 / 64.0))
;condition
trigger3 = (((stateno = [200, 499]) && !animtime && movehit) || (ctrl && (enemynear, gethitvar(damage))))
trigger3 = enemynear, gethitvar(hittime) >= 4
trigger3 = p2bodydist x = [-const240p(8), (49 - const(size.ground.front)) * const(size.xscale)]
trigger3 = p2dist y = [(-38 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger3 = random < (250 * (ailevel ** 2.0 / 64.0))

[state -1, AI 221 Stand Strong Punch]
type = ChangeState
value = 221
triggerall = Abs(P2BodyDist X) <= 22
triggerall = ailevel && numenemy && roundstate = 2
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
; startup = 6
;Clsn1: 1
;  Clsn1[0] = 24, -81, 67, -52
triggerall = (enemynear, const(size.head.pos.y) <= -const240p(40)) || enemynear, statetype = A
triggerall = p2statetype != A || numtarget
;
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger1 = p2bodydist x = [-const240p(8), (67 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-81 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = enemynear, gethitvar(hittime) >= 6 || (enemynear, animtime = [-14,-8])
trigger1 = random < (200 * (ailevel ** 2.0 / 64.0)) + (ailevel * 48.0 * (enemynear, gethitvar(hittime) >= 6)) + (ailevel ** 2.0)
;condition
trigger2 = (((stateno = [200, 499]) && !animtime && movehit) || (ctrl && (enemynear, gethitvar(damage))))
trigger2 = enemynear, gethitvar(hittime) >= 6
trigger2 = p2bodydist x = [-const240p(8), (67 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-81 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger2 = random < (300 * (ailevel ** 2.0 / 64.0))

[state -1, AI 430 Crouching Light Kick]
type = ChangeState
value = 430
triggerall = ailevel && numenemy && roundstate = 2
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
; startup = 4
;Clsn1: 1
;  Clsn1[0] = 10, -12, 63, 0
triggerall = p2statetype != A || numtarget
;
;condition
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger1 = p2bodydist x = [-const240p(8), (63 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-12 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = random < (100 * (ailevel ** 2.0 / 64.0)) + (ailevel * 48.0 * (enemynear, gethitvar(hittime) >= 4)) + (ailevel ** 2.0)
;condition
trigger2= (StateNo = 201 || StateNo = 231 || StateNo = 400 || StateNo = 430) && Time >=5
trigger2 = p2bodydist x = [-const240p(8), (63 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-12 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger2 = (random < (25 * (ailevel ** 2.0 / 64.0))) || movecontact
trigger2 = random < (125 * (ailevel ** 2.0 / 64.0))
;condition
trigger3 = (((stateno = [200, 499]) && !animtime && movehit) || (ctrl && (enemynear, gethitvar(damage))))
trigger3 = enemynear, gethitvar(hittime) >= 4
trigger3 = p2bodydist x = [-const240p(8), (63 - const(size.ground.front)) * const(size.xscale)]
trigger3 = p2dist y = [(-12 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger3 = random < (100 * (ailevel ** 2.0 / 64.0))

[state -1, AI 400 Crouching Light Punch]
type = ChangeState
value = 400
triggerall = ailevel && numenemy && roundstate = 2
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
; startup = 4
;Clsn1: 1
;  Clsn1[0] = 6, -33, 58, -15
triggerall = p2statetype != A || numtarget
;condition
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger1 = p2bodydist x = [-const240p(8), (58 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-33 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = random < (150 * (ailevel ** 2.0 / 64.0)) + (ailevel * 48.0 * (enemynear, gethitvar(hittime) >= 4)) + (ailevel ** 2.0)
;condition
trigger2= (StateNo = 201 || StateNo = 400 || StateNo = 430) && Time >=5
trigger2 = p2bodydist x = [-const240p(8), (58 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-33 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger2 = (random < (25 * (ailevel ** 2.0 / 64.0))) || movecontact
trigger2 = random < (75 * (ailevel ** 2.0 / 64.0))
;condition
trigger3 = (((stateno = [200, 499]) && !animtime && movehit) || (ctrl && (enemynear, gethitvar(damage))))
trigger3 = enemynear, gethitvar(hittime) >= 4
trigger3 = p2bodydist x = [-const240p(8), (58 - const(size.ground.front)) * const(size.xscale)]
trigger3 = p2dist y = [(-33 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger3 = random < (250 * (ailevel ** 2.0 / 64.0))

[state -1, AI 440 Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = ailevel && numenemy && roundstate = 2
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
; startup = 7
;Clsn1: 1
;  Clsn1[0] = 4, -19, 60, 0
triggerall = p2statetype != A
;
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger1 = p2bodydist x = [-const240p(8), (90 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-19 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = p2bodydist x > 50
trigger1 = random < (75 * (ailevel ** 2.0 / 64.0)) + (ailevel * 48.0 * (enemynear, gethitvar(hittime) >= 7))
;condition
trigger2 = (((stateno = [200, 499]) && !animtime && movehit) || (ctrl && (enemynear, gethitvar(damage))))
trigger2 = enemynear, gethitvar(hittime) >= 6
trigger2 = p2bodydist x = [-const240p(8), (90 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-19 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger2 = p2bodydist x > 50
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[state -1, AI 200 Stand Light Punch]
type = ChangeState
value = 200
triggerall = ailevel && numenemy && roundstate = 2
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
; startup = 5
;Clsn1: 1
;  Clsn1[0] = 38, -70, 91, -58
;
triggerall = (enemynear, const(size.head.pos.y) <= -const240p(40)) || enemynear, statetype = A
triggerall = abs(P2BodyDist x) > 20
triggerall = p2statetype != A || numtarget
triggerall = p2statetype != C
;
;condition
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])
trigger1 = p2bodydist x = [-const240p(8), (91 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-70 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = random < (100 * (ailevel ** 2.0 / 64.0)) + (ailevel * 48.0 * (enemynear, gethitvar(hittime) >= 5)) + (ailevel ** 2.0)
;condition
trigger2 = (((stateno = [200, 499]) && !animtime && movehit) || (ctrl && (enemynear, gethitvar(damage))))
trigger2 = enemynear, gethitvar(hittime) >= 5
trigger2 = p2bodydist x = [-const240p(8), (91 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-70 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[state -1, AI 201 Stand Close Light Punch]
type = ChangeState
value = 201 
triggerall = ailevel && numenemy && roundstate = 2
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
; startup = 4
;Clsn1: 1
;  Clsn1[0] = 12, -52, 69, -39
;
triggerall = abs(P2BodyDist x) <= 20
triggerall = p2statetype != A || numtarget
;
;condition
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])
trigger1 = p2bodydist x = [-const240p(8), (69 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-52 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = random < (100 * (ailevel ** 2.0 / 64.0)) + (ailevel * 48.0 * (enemynear, gethitvar(hittime) >= 4)) + (ailevel ** 2.0)
;condition
trigger2= (StateNo = 201 || StateNo = 231|| StateNo = 400 || StateNo = 430) && Time >=5
trigger2 = p2bodydist x = [-const240p(8), (69 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-52 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger2 = (random < (25 * (ailevel ** 2.0 / 64.0))) || movecontact
trigger2 = random < (75 * (ailevel ** 2.0 / 64.0))
;condition
trigger3 = (((stateno = [200, 499]) && !animtime && movehit) || (ctrl && (enemynear, gethitvar(damage))))
trigger3 = enemynear, gethitvar(hittime) >= 4
trigger3 = p2bodydist x = [-const240p(8), (69 - const(size.ground.front)) * const(size.xscale)]
trigger3 = p2dist y = [(-52 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger3 = random < (250 * (ailevel ** 2.0 / 64.0))

[State -1, AI 210 Stand Medium Punch]
type = ChangeState
value = 210 
triggerall = ailevel && numenemy && roundstate = 2
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
triggerall = p2statetype != A || numtarget
; startup = 7
;Clsn1: 1
;  Clsn1[0] = 26, -47, 68, -9
; 
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger1 = p2bodydist x = [-const240p(8), (63 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-79 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0)) + (ailevel * 48.0 * (enemynear, gethitvar(hittime) >= 7))
;condition
trigger2 = (((stateno = [200, 499]) && !animtime && movehit) || (ctrl && (enemynear, gethitvar(damage))))
trigger2 = enemynear, gethitvar(hittime) >= 7
trigger2 = p2bodydist x = [-const240p(8), (63 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-79 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[state -1, AI 220 Stand Strong Punch]
type = ChangeState
value = 220 
triggerall = Abs(P2BodyDist X) > 22
triggerall = ailevel && numenemy && roundstate = 2
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
;startup = 6
;Clsn1: 1
;  Clsn1[0] = 40, -101, 86, -64
triggerall = (enemynear, const(size.head.pos.y) <= -const240p(40)) || enemynear, statetype = A
triggerall = p2statetype != C
;
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger1 = p2bodydist x >= ((-86 + (6 * enemynear, vel x * (enemynear, statetype = A))) - const(size.ground.front)) * const(size.xscale)
trigger1 = p2bodydist x <= ((86 + (6 * enemynear, vel x * (enemynear, statetype = A))) - const(size.ground.front)) * const(size.xscale)
trigger1 = p2dist y = [(-101 - (((enemynear, vel y) + (6 * enemynear, const(movement.yaccel))) * (p2statetype = A))) * const(size.yscale), const240p(8)]
trigger1 = enemynear, vel y > -1
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0)) + (ailevel * 48.0 * (enemynear, gethitvar(hittime) >= 6))
;condition
trigger2 = (((stateno = [200, 499]) && !animtime && movehit) || (ctrl && (enemynear, gethitvar(damage))))
trigger2 = enemynear, gethitvar(hittime) >= 6
trigger2 = p2bodydist x = [-const240p(8), (86 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-101 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[state -1, AI 230 Stand Light Kick]
type = ChangeState
value = 230
triggerall = ailevel && numenemy && roundstate = 2
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
; startup = 4
;Clsn1: 1
;  Clsn1[0] = 25, -96, 77, -67
;
triggerall = (enemynear, const(size.head.pos.y) <= -const240p(40)) || enemynear, statetype = A
triggerall = abs(P2BodyDist x) > 20
triggerall = p2statetype != A || numtarget
;
;condition
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])
trigger1 = p2bodydist x = [-const240p(8), (77 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-96 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0)) + (ailevel * 48.0 * (enemynear, gethitvar(hittime) >= 4))
;condition
trigger2 = (((stateno = [200, 499]) && !animtime && movehit) || (ctrl && (enemynear, gethitvar(damage))))
trigger2 = enemynear, gethitvar(hittime) >= 4
trigger2 = p2bodydist x = [-const240p(8), (77 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-96 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[State -1, AI 251 Fierce Blossom]
type = Changestate
value = 251
triggerall = ailevel && numenemy && roundstate = 2
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
triggerall = statetype != A
; startup = 10
;Clsn1: 1
;  Clsn1[0] = 21, -77, 79, -53
triggerall = (enemynear, const(size.head.pos.y) <= -const240p(40)) || enemynear, statetype = A
triggerall = p2statetype = S || numtarget
triggerall = p2statetype != C
;
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])
trigger1 = p2bodydist x = [-const240p(8), (104 + (25 * var(9)) - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-77 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = random < (100 * (ailevel ** 2.0 / 64.0))
;condition
trigger2 = (((stateno = [200, 499]) && !animtime && movehit) || (ctrl && (enemynear, gethitvar(damage))))
trigger2 = enemynear, gethitvar(hittime) >= 10
trigger2 = p2bodydist x = [-const240p(8), (76 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-77 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger2 = random < (75 * (ailevel ** 2.0 / 64.0))

[state -1, AI 250 Standing Strong Kick]
type = ChangeState
value = 250
triggerall = ailevel && numenemy && roundstate = 2
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
; startup = 6
;Clsn1: 1
;  Clsn1[0] = 24, -101, 70, -38
triggerall = (enemynear, const(size.head.pos.y) <= -const240p(40)) || enemynear, statetype = A
triggerall = p2statetype = S || numtarget
triggerall = p2statetype != C
;
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])
trigger1 = p2bodydist x >= ((-70 + (6 * enemynear, vel x * (enemynear, statetype = A))) - const(size.ground.front)) * const(size.xscale)
trigger1 = p2bodydist x <= ((70 + (6 * enemynear, vel x * (enemynear, statetype = A))) - const(size.ground.front)) * const(size.xscale)
trigger1 = p2dist y = [(-101 - (((enemynear, vel y) + (6 * enemynear, const(movement.yaccel))) * (p2statetype = A))) * const(size.yscale), const240p(8)]
trigger1 = enemynear, vel y > -1
trigger1 = (random < (25 * (ailevel ** 2.0 / 64.0))) || p2statetype != A
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0)) + (ailevel * 48.0 * (enemynear, gethitvar(hittime) >= 6))
;condition
trigger2 = (((stateno = [200, 499]) && !animtime && movehit) || (ctrl && (enemynear, gethitvar(damage))))
trigger2 = enemynear, gethitvar(hittime) >= 6
trigger2 = p2bodydist x = [-const240p(8), (70 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-101 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[state -1, AI 420 Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = ailevel && numenemy && roundstate = 2
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
; startup = 4
;Clsn1: 1
;  Clsn1[0] = 28, -54, 61, -25
triggerAll = StateType != A
triggerall = p2statetype != A || numtarget
;condition
trigger1 = ctrl || (StateNo = [100,101])
trigger1 = p2bodydist x = [-const240p(8), (61 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-54 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0)) + (ailevel * 48.0 * (enemynear, gethitvar(hittime) >= 4))
;condition
trigger2 = (((stateno = [200, 499]) && !animtime && movehit) || (ctrl && (enemynear, gethitvar(damage))))
trigger2 = enemynear, gethitvar(hittime) >= 4
trigger2 = p2bodydist x = [-const240p(8), (61 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-54 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[state -1, AI 450 Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = ailevel && numenemy && roundstate = 2
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
; startup = 5
;Clsn1: 1
;  Clsn1[0] = 16, -31, 84, -7
triggerall = !enemynear, ctrl && (p2stateno != [120,155])
triggerall = (p2statetype = S || (p2statetype = C && p2movetype = H))
triggerAll = StateType != A
;
trigger1 = ctrl || (StateNo = [100,101])
trigger1 = p2bodydist x = [-const240p(8), (84 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-31 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = random < (75 * (ailevel ** 2.0 / 64.0)) + (ailevel * 48.0 * (enemynear, gethitvar(hittime) >= 5))
;condition
trigger2 = (((stateno = [200, 499]) && !animtime && movehit) || (ctrl && (enemynear, gethitvar(damage))))
trigger2 = enemynear, gethitvar(hittime) >= 5
trigger2 = p2bodydist x = [-const240p(8), (84 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-31 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[State -1, AI 241 Dancing of Tensui]
type = Changestate
value = 241
triggerall = ailevel && numenemy && roundstate = 2
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
triggerall = statetype != A
;
triggerall = (enemynear, const(size.head.pos.y) <= -const240p(40)) || enemynear, statetype = A
triggerall = p2statetype = S
;
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])
trigger1 = p2bodydist x = [-const240p(8), (90 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-96 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = random < (75 * (ailevel ** 2.0 / 64.0)) + (ailevel * 48.0 * (enemynear, gethitvar(hittime) >= 8))
;condition
trigger2 = (((stateno = [200, 499]) && !animtime && movehit) || (ctrl && (enemynear, gethitvar(damage))))
trigger2 = enemynear, gethitvar(hittime) >= 8
trigger2 = p2bodydist x = [-const240p(8), (90 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-96 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[state -1, AI 240 Stand Medium Kick]
type = ChangeState
value = 240
triggerall = Abs(P2BodyDist X) > 13
triggerall = ailevel && numenemy && roundstate = 2
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
;
triggerall = (enemynear, const(size.head.pos.y) <= -const240p(40)) || enemynear, statetype = A
triggerall = p2statetype = S
; startup = 8
;Clsn1: 1
;  Clsn1[0] = 24, -80, 65, -63
;
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])
trigger1 = p2bodydist x = [-const240p(8), (77 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-96 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0)) + (ailevel * 48.0 * (enemynear, gethitvar(hittime) >= 8))
;condition
trigger2 = (((stateno = [200, 499]) && !animtime && movehit) || (ctrl && (enemynear, gethitvar(damage))))
trigger2 = enemynear, gethitvar(hittime) >= 4
trigger2 = p2bodydist x = [-const240p(8), (77 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-96 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[state -1, AI 242 Stand Medium Kick]
type = ChangeState
value = 242
triggerall = Abs(P2BodyDist X) <= 13
triggerall = ailevel && numenemy && roundstate = 2
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
; startup = 5
;Clsn1: 1
;  Clsn1[0] = 17, -122, 42, -50
triggerall = (enemynear, const(size.head.pos.y) <= -const240p(40)) || enemynear, statetype = A
triggerall = p2statetype = S || numtarget
triggerall = p2statetype != C
;
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])
trigger1 = p2bodydist x = [-const240p(8), (42 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-122 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0)) + (ailevel * 48.0 * (enemynear, gethitvar(hittime) >= 5))
;condition
trigger2 = (((stateno = [200, 499]) && !animtime && movehit) || (ctrl && (enemynear, gethitvar(damage))))
trigger2 = enemynear, gethitvar(hittime) >= 5
trigger2 = p2bodydist x = [-const240p(8), (42 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-122 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[State -1, AI 232 Benitsuru no Mai]
type = Changestate
value = 232
triggerall = ailevel && numenemy && roundstate = 2
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
triggerall = statetype != A
; startup = 26
;Clsn1: 1
;  Clsn1[0] = 15, -44, 80, -22
;
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])
trigger1 = p2statetype = C
trigger1 = p2stateno < 1000
trigger1 = enemynear, hitdefattr != SCA, SA, HA, SP, HP, ST, HT
trigger1 = p2bodydist x = [-8, (136 - const(size.ground.front)) * const(size.xscale)]
trigger1 = random < 125 * (ailevel ** 2.0 / 64.0) 

[State -1, AI 234 Benitsuru no Mai(Linked)]
type = Changestate
value = 234
triggerall = ailevel && numenemy && roundstate = 2
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
triggerall = statetype != A
; condition
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])
trigger1 = p2statetype = C
trigger1 = p2stateno < 1000
trigger1 = enemynear, hitdefattr != SCA, SA, HA, SP, HP, ST, HT
trigger1 = p2bodydist x = [-8, (136 - const(size.ground.front)) * const(size.xscale)]
trigger1 = random < 50 * (ailevel ** 2.0 / 64.0) 
; condition
trigger2 = var(4)
trigger2 = p2statetype = C
trigger2 = p2bodydist x = [-8, (136 - const(size.ground.front)) * const(size.xscale)]
trigger2 = moveguarded
trigger2 = random < 50 * (ailevel ** 2.0 / 64.0)

;============================================================================
; AI Jumping Moves ----------------------------------------------------------
;============================================================================
[state -1, AI 620 Jump Strong Punch]
type = ChangeState
value = 620
triggerall = ailevel && numenemy && roundstate = 2
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
; startup = 7
;Clsn1: 1
;  Clsn1[0] = 13, -43, 57, -13
triggerall = (vel y >= 0.5 && p2dist y >= -50) || p2statetype = A
;
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist x = [-const240p(8), (57 + (7 * (vel x + (enemynear,vel x))) - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-43 - 16) * const(size.yscale), (-13 + 72 + (32 * vel y * (vel y > 0))) * const(size.yscale)]
trigger1 = random < (175 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = statetype = A
trigger2 = ctrl
trigger2 = p2bodydist x = [-const240p(8), (57 + (7 * (vel x + (enemynear,vel x))) - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-43 - 16) * const(size.yscale), (-13 + 72 + 32 * (vel y > 2.0)) * const(size.yscale)]
trigger2 = p2statetype != A && vel y >= 0.5
trigger2 = random < 350 * (ailevel ** 2.0 / 64.0)

[State -1, AI 621 Dairin Fuusha Otoshi]
type = ChangeState
value = 621
triggerall = ailevel && numenemy && roundstate = 2
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
; startup = 11
;Clsn1: 1
;  Clsn1[0] = 5, -50, 53, -20
triggerall = (vel y >= 0.5 && p2dist y >= -66) && p2statetype != A
;
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist x = [-const240p(8), (53 + (11 * (vel x + (enemynear,vel x))) - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-50 - 16) * const(size.yscale), (-20 + 72 + (32 * vel y * (vel y > 0))) * const(size.yscale)]
trigger1 = random < (175 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = statetype = A
trigger2 = ctrl
trigger2 = p2bodydist x = [-const240p(8), (53 + (11 * (vel x + (enemynear,vel x))) - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-50 - 16) * const(size.yscale), (-20 + 72 + 32 * (vel y > 2.0)) * const(size.yscale)]
trigger2 = p2statetype != A && vel y >= 0.5
trigger2 = random < 350 * (ailevel ** 2.0 / 64.0)

[state -1, AI 610 Jump Med Punch]
type = ChangeState
value = 610
triggerall = ailevel && numenemy && roundstate = 2
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
; startup = 5
;Clsn1: 1
;  Clsn1[0] = 35, -51, 69, -21
triggerall = (vel y >= 0.5 && p2dist y >= -50) || p2statetype = A
;
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist x = [-const240p(8), (69 + (5 * (vel x + (enemynear,vel x))) - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-51 - 16) * const(size.yscale), (-21 + 72 + (32 * vel y * (vel y > 0))) * const(size.yscale)]
trigger1 = random < (150 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = statetype = A
trigger2 = ctrl
trigger2 = p2bodydist x = [-const240p(8), (69 + (5 * (vel x + (enemynear,vel x))) - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-51 - 16) * const(size.yscale), (-21 + 72 + 32 * (vel y > 2.0)) * const(size.yscale)]
trigger2 = p2statetype != A && vel y >= 0.5
trigger2 = random < 300 * (ailevel ** 2.0 / 64.0)

[state -1, AI 650 Jump Strong Kick]
type = ChangeState
value = 650
triggerall = ailevel && numenemy && roundstate = 2
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
; startup = 5
;Clsn1: 1
;  Clsn1[0] = 12, -44, 66, -10
;
triggerall = vel x != 0
triggerall = (vel y >= 0.5 && p2dist y >= -50) || p2statetype = A
;
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist x = [-const240p(8), (66 + (5 * (vel x + (enemynear,vel x))) - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-44 - 16) * const(size.yscale), (-10 + 72 + (32 * vel y * (vel y > 0))) * const(size.yscale)]
trigger1 = random < (175 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = statetype = A
trigger2 = ctrl
trigger2 = p2bodydist x = [-const240p(8), (66 + (5 * (vel x + (enemynear,vel x))) - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-44 - 16) * const(size.yscale), (-10 + 72 + 32 * (vel y > 2.0)) * const(size.yscale)]
trigger2 = p2statetype != A && vel y >= 0.5
trigger2 = random < 350 * (ailevel ** 2.0 / 64.0)

[state -1, AI 651 Neutral Jump Strong Kick]
type = ChangeState
value = 651
triggerall = ailevel && numenemy && roundstate = 2
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
; startup = 6
;Clsn1: 1
;  Clsn1[0] = 11, -55, 65, -22
;
triggerall = vel x = 0
triggerall = (vel y >= 0.5 && p2dist y >= -50) || p2statetype = A
;
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist x = [-const240p(8), (65 + (6 * (vel x + (enemynear,vel x))) - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-55 - 16) * const(size.yscale), (-22 + 72 + (32 * vel y * (vel y > 0))) * const(size.yscale)]
trigger1 = random < (175 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = statetype = A
trigger2 = ctrl
trigger2 = p2bodydist x = [-const240p(8), (65 + (6 * (vel x + (enemynear,vel x))) - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-55 - 16) * const(size.yscale), (-22 + 72 + 32 * (vel y > 2.0)) * const(size.yscale)]
trigger2 = p2statetype != A && vel y >= 0.5
trigger2 = random < 350 * (ailevel ** 2.0 / 64.0)

[state -1, AI 640 Jump Med Kick]
type = ChangeState
value = 640
triggerall = ailevel && numenemy && roundstate = 2
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
; startup = 5
;Clsn1: 1
;  Clsn1[0] = 0, -38, 66, -18
triggerall = (vel y >= 0.5 && p2dist y >= -50) || p2statetype = A
;
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist x = [-const240p(8), (66 + (5 * (vel x + (enemynear,vel x))) - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-38 - 16) * const(size.yscale), (-18 + 72 + (32 * vel y * (vel y > 0))) * const(size.yscale)]
trigger1 = random < (150 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = statetype = A
trigger2 = ctrl
trigger2 = p2bodydist x = [-const240p(8), (66 + (5 * (vel x + (enemynear,vel x))) - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-38 - 16) * const(size.yscale), (-18 + 72 + 32 * (vel y > 2.0)) * const(size.yscale)]
trigger2 = p2statetype != A && vel y >= 0.5
trigger2 = random < 300 * (ailevel ** 2.0 / 64.0)

[state -1, AI 600 Jump Light Punch]
type = ChangeState
value = 600
triggerall = ailevel && numenemy && roundstate = 2
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
; startup = 4
;Clsn1: 1
;  Clsn1[0] = 21, -51, 57, -27
triggerall = (vel y >= 0.5 && p2dist y >= -40) || p2statetype = A
;
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist x = [-const240p(8), (57 + (4 * (vel x + (enemynear,vel x))) - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-51 - 16) * const(size.yscale), (-27 + 72 + (32 * vel y * (vel y > 0))) * const(size.yscale)]
trigger1 = random < (100 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = statetype = A
trigger2 = ctrl
trigger2 = p2bodydist x = [-const240p(8), (57 + (4 * (vel x + (enemynear,vel x))) - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-51 - 16) * const(size.yscale), (-27 + 72 + 32 * (vel y > 2.0)) * const(size.yscale)]
trigger2 = p2statetype != A && vel y >= 0.5
trigger2 = random < 200 * (ailevel ** 2.0 / 64.0)

[state -1, AI 630 Jump Light Kick]
type = ChangeState
value = 630
triggerall = ailevel && numenemy && roundstate = 2
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
; startup = 6
;Clsn1: 1
;  Clsn1[0] = -6, -56, 33, -22
triggerall = (vel y >= 0.5 && p2dist y >= -40) || p2statetype = A
;
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2bodydist x = [-const240p(8), (33 + (6 * (vel x + (enemynear,vel x))) - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-56 - 16) * const(size.yscale), (-22 + 72 + (32 * vel y * (vel y > 0))) * const(size.yscale)]
trigger1 = random < (100 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = statetype = A
trigger2 = ctrl
trigger2 = p2bodydist x = [-const240p(8), (33 + (6 * (vel x + (enemynear,vel x))) - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-56 - 16) * const(size.yscale), (-22 + 72 + 32 * (vel y > 2.0)) * const(size.yscale)]
trigger2 = p2statetype != A && vel y >= 0.5
trigger2 = random < 200 * (ailevel ** 2.0 / 64.0)

[State -1, AI 641 Yusura Ume]
type = ChangeState
value = 641
triggerall = ailevel && numenemy && roundstate = 2
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
triggerall = var(3)!=[1,2]
;Clsn1Default: 1
;  Clsn1[0] = -8, -54, 23, -28
;
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2dist x > 0
trigger1 = p2dist y >= (-54 + enemynear,const(size.head.pos.y)) * const(size.yscale)
trigger1 = abs(atan(p2dist y / p2dist x) * (180.0 / pi)) = [cond(vel x > 0, 40, 24), cond(vel x > 0, 80, 48)]
trigger1 = enemynear, vel x <= 0
trigger1 = p2movetype != A
trigger1 = random < 50 * (ailevel ** 2.0 / 64.0)

[State -1, AI 631 Ukihane]
type = ChangeState
value = 631
triggerall = ailevel && numenemy && roundstate = 2
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
triggerall = var(3)!=[1,2]
;Clsn1Default: 1
;  Clsn1[0] = -23, -70, 18, -26
;
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = p2dist x > 0
trigger1 = p2dist y >= (-70 + enemynear,const(size.head.pos.y)) * const(size.yscale)
trigger1 = abs(atan(p2dist y / p2dist x) * (180.0 / pi)) = [40, 80]
trigger1 = enemynear, vel x <= 0
trigger1 = p2movetype != A
trigger1 = random < 50 * (ailevel ** 2.0 / 64.0)

;============================================================================
; AI Super moves ------------------------------------------------------------
;============================================================================
[State -1, AI 3400 Chou DNB MAX]
type = ChangeState
value = 3400
triggerall = ailevel && numenemy
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 3000, power >= 1000)
; startup = 4
;Clsn1: 1
;  Clsn1[0] = 0, -79, 43, -20
triggerall = enemynear, life >= 0.20 * enemynear, lifemax
; condition
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger1 = p2bodydist x = [32, (80 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-79 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = !enemynear, ctrl && (p2stateno != [120,155])
trigger1 = p2statetype != A && p2stateno != 40 && p2stateno != 105
trigger1 = !enemynear, numproj
trigger1 = enemynear, animtime < -13
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(6)
trigger2 = p2bodydist x = [-const240p(8), (50 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-79 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger2 = movecontact && ((enemynear, gethitvar(hittime) >= 4) || enemynear, gethitvar(yvel) != 0)
trigger2 = movehit = [1,8]
trigger2 = random < (500 * (ailevel ** 2 / 64.0))

[State -1, AI 3500 Hana Arashi]
type = ChangeState
value = 3500
triggerall = ailevel && numenemy
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 2000, power >= 1000)
; startup = 4
;Clsn1Default: 1
;  Clsn1[0] = 1, -74, 45, 0
triggerall = (enemynear, const(size.head.pos.y) <= -const240p(40)) || enemynear, statetype = A
triggerall = enemynear, life >= 0.15 * enemynear, lifemax
; condition
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger1 = p2bodydist x = [32, 120]
trigger1 = p2dist y = [(-74 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = !enemynear, ctrl && (p2stateno != [120,155])
trigger1 = enemynear, animtime < -13
trigger1 = p2statetype != A && p2stateno != 40 && p2stateno != 105
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(6) || var(7)
trigger2 = p2bodydist x = [-const240p(8), (80 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-67 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger2 = movecontact && ((enemynear, gethitvar(hittime) >= 4) || enemynear, gethitvar(yvel) != 0)
trigger2 = movehit
trigger2 = random < (500 * (ailevel ** 2 / 64.0))

[State -1, AI 3250 Crimson FD Max]
type = ChangeState
value = 3250
triggerall = ailevel && numenemy
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
triggerall = RoundState = 2 && StateType = A
triggerall = ifelse(var(20) <= 0, power >= 2000, power >= 1000)
triggerall = var(3)!=[1,2]
; startup = 5
;Clsn1Default: 1
;  Clsn1[0] = 3, -55, 57, -7
triggerall = enemynear, life >= 0.15 * enemynear, lifemax
; condition
trigger1 = ctrl && pos y <= -30
trigger1 = (p2bodydist x - p2bodydist y - (enemynear,vel y * 5)) = [-48,24]
trigger1 = enemynear, animtime < -13
trigger1 = !enemynear, ctrl && (p2stateno != [120,155])
trigger1 = random < (100 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(6)
trigger2 = (p2bodydist x - p2bodydist y - (enemynear,vel y * 5)) = [-48,24]
trigger2 = movehit
trigger2 = (enemynear, gethitvar(hittime) >= 5) || (enemynear, hitfall)
trigger2 = random < (500 * (ailevel ** 2 / 64.0))

[State -1, AI 3050 Chou Kacho Max]
type = ChangeState
value = 3050
triggerall = ailevel && numenemy
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 2000, power >= 1000)
triggerall = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101]) || var(6) || var(7)
;
triggerall = (enemynear, const(size.head.pos.y) <= -const240p(40)) || enemynear, statetype = A
triggerall = p2statetype != C
triggerall = enemynear, life >= 0.15 * enemynear, lifemax
; condition
trigger1 = NumHelper(3011) <= 0
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger1 = p2bodydist x >= (144 - const(size.ground.front)) * const(size.xscale)
trigger1 = p2bodydist x < (240 - const(size.ground.front)) * const(size.xscale)
trigger1 = (enemynear, vel y >= 0) && p2stateno != 40
trigger1 = !enemynear, ctrl && (p2stateno != [120, 155])
trigger1 = p2dist y = [(-81 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = enemynear, animtime < -13
trigger1 = (random < (25 * (ailevel ** 2.0 / 64.0))) || (p2statetype != A && p2stateno != 40)
trigger1 = random < (200 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = NumHelper(3011) = [1,2]
trigger2 = Helper(3011),StateNo = [1062,1063]
trigger2 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = p2bodydist x >= (144 - const(size.ground.front)) * const(size.xscale)
trigger2 = p2bodydist x < (240 - const(size.ground.front)) * const(size.xscale)
trigger2 = (enemynear, vel y >= 0) && p2stateno != 40
trigger2 = !enemynear, ctrl && (p2stateno != [120, 155])
trigger2 = p2dist y = [(-81 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger2 = enemynear, animtime < -13
trigger2 = (random < (25 * (ailevel ** 2.0 / 64.0))) || (p2statetype != A && p2stateno != 40)
trigger2 = random < (200 * (ailevel ** 2.0 / 64.0))
; condition
trigger3 = var(6)
trigger3 = NumHelper(3010) <= 0
trigger3 = p2bodydist x = [-const240p(8), (80 - const(size.ground.front)) * const(size.xscale)]
trigger3 = p2dist y = [(-81 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger3 = movecontact && ((enemynear, gethitvar(hittime) >= 7) || enemynear, gethitvar(yvel) != 0)
trigger3 = movehit = [1,8]
trigger3 = random < (500 * (ailevel ** 2 / 64.0))

[State -1, AI 3300 Chou Deadly Ninja Bees]
type = ChangeState
value = 3300
triggerall = ailevel && numenemy
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
; startup = 4
;Clsn1: 1
;  Clsn1[0] = 0, -79, 43, -20
;
triggerall = (enemynear, const(size.head.pos.y) <= -const240p(40)) || enemynear, statetype = A
triggerall = (random < (50 * (ailevel ** 2.0 / 64.0))) || (power >= 2000) || ((life/lifemax * 1.0) < 0.9 * (enemynear, life/enemynear, lifemax * 1.0)) || (life < 0.25 * lifemax)
; condition
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger1 = p2bodydist x = [32, (80 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-79 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = !enemynear, ctrl && (p2stateno != [120,155])
trigger1 = (p2statetype != A && p2stateno != 40 && p2stateno != 105) || numtarget
trigger1 = enemynear, vel y > -1
trigger1 = !enemynear, numproj
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(6)
trigger2 = p2bodydist x = [-const240p(8), (43 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-79 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger2 = movecontact && ((enemynear, gethitvar(hittime) >= 4) || enemynear, gethitvar(yvel) != 0)
trigger2 = movehit = [1,8]
trigger2 = power < 3000
trigger2 = random < (350 * (ailevel ** 2 / 64.0))

[State -1, AI 3200 Crimson Firebird Diver]
type = ChangeState
value = 3200
triggerall = ailevel && numenemy
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
triggerall = RoundState = 2 && StateType = A
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
triggerall = var(3)!=[1,2]
; startup = 5
;Clsn1Default: 1
;  Clsn1[0] = 3, -55, 57, -7
;
triggerall = (random < (50 * (ailevel ** 2.0 / 64.0))) || (power >= 2000) || ((life/lifemax * 1.0) < 0.9 * (enemynear, life/enemynear, lifemax * 1.0)) || (life < 0.25 * lifemax)
; condition
trigger1 = ctrl && pos y <= -30
trigger1 = (p2bodydist x - p2bodydist y - (enemynear,vel y * 9)) = [-48,24]
trigger1 = enemynear, animtime < -13
trigger1 = !enemynear, ctrl && (p2stateno != [120,155])
trigger1 = random < (100 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(6)
trigger2 = (p2bodydist x - p2bodydist y - (enemynear,vel y * 9)) = [-48,24]
trigger2 = movehit
trigger2 = (enemynear, gethitvar(hittime) >= 5) || (enemynear, hitfall)
trigger2 = random < (350 * (ailevel ** 2 / 64.0))

[State -1, AI 3100 Explosive Mai]
type = ChangeState
value = 3100
triggerall = ailevel && numenemy
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
triggerall = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101]) || var(6)
; startup = 5
;Clsn1Default: 1
;  Clsn1[0] = 3, -55, 57, -7
;Clsn2Default: 1
;  Clsn2[0] = -58, -254, 56, 0
;
triggerall = (random < (50 * (ailevel ** 2.0 / 64.0))) || (power >= 2000) || ((life/lifemax * 1.0) < 0.9 * (enemynear, life/enemynear, lifemax * 1.0)) || (life < 0.25 * lifemax)
; condition
trigger1 = NumHelper(3105) <= 0
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger1 = p2bodydist x >= ((-56 + 8 * enemynear, vel x * (enemynear, statetype = A)) - const(size.ground.front)) * const(size.xscale)
trigger1 = p2bodydist x <= ((56 + 8 * enemynear, vel x * (enemynear, statetype = A)) - const(size.ground.front)) * const(size.xscale)
trigger1 = p2dist y = [(-254 - (enemynear, vel y + 8 * (enemynear, const(movement.yaccel)))) * const(size.yscale), const240p(8)]
trigger1 = p2stateno != [120, 155]
trigger1 = p2statetype = A
trigger1 = enemynear, vel x >= 0 || numtarget
trigger1 = enemynear, vel y > -5.0
trigger1 = random < (200 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = NumHelper(3105) = 1
trigger2 = Helper(3105),StateNo = 1063
trigger2 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = p2bodydist x >= ((-56 + 5 * enemynear, vel x * (enemynear, statetype = A)) - const(size.ground.front)) * const(size.xscale)
trigger2 = p2bodydist x <= ((56 + 5 * enemynear, vel x * (enemynear, statetype = A)) - const(size.ground.front)) * const(size.xscale)
trigger2 = p2dist y = [(-254 - (enemynear, vel y + 5 * (enemynear, const(movement.yaccel)))) * const(size.yscale), const240p(8)]
trigger2 = p2stateno != [120, 155]
trigger2 = p2statetype = A
trigger2 = enemynear, vel x >= 0 || numtarget
trigger2 = enemynear, vel y > -5.0
trigger2 = random < (200 * (ailevel ** 2.0 / 64.0))
; condition
trigger3 = var(6)
trigger3 = p2bodydist x = [-const240p(8), (24 - const(size.ground.front)) * const(size.xscale)]
trigger3 = p2dist y = [(-254 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger3 = movecontact && ((enemynear, gethitvar(hittime) >= 5) || enemynear, gethitvar(yvel) != 0)
trigger3 = movehit = [1,8]
trigger3 = stateno != 220 && stateno != 221
trigger3 = stateno != 250 && stateno != 251
trigger3 = stateno != 420
trigger3 = power < 2000
trigger3 = enemynear, gethitvar(hittime) >= 5
trigger3 = p2statetype != A
trigger3 = random < (cond((stateno = 2300 || stateno = 2350), 250, 25) * (ailevel ** 2.0 / 64.0))

[State -1, AI 3000 Chou Kacho Sen]
type = ChangeState
value = 3000
triggerall = ailevel && numenemy
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
triggerall = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101]) || var(6)
;
triggerall = (enemynear, const(size.head.pos.y) <= -const240p(40)) || enemynear, statetype = A
triggerall = p2statetype != C
triggerall = (random < (50 * (ailevel ** 2.0 / 64.0))) || (power >= 2000) || ((life/lifemax * 1.0) < 0.9 * (enemynear, life/enemynear, lifemax * 1.0)) || (life < 0.25 * lifemax)
; condition
trigger1 = NumHelper(3010) <= 0
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger1 = p2bodydist x = [110, 200]
trigger1 = enemynear, vel y >= 0
trigger1 = p2statetype != A || enemynear, vel x < 0
trigger1 = !enemynear, ctrl && enemynear, stateno != [120,159]
trigger1 = p2dist y = [(-81 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = enemynear, animtime < -13
trigger1 = random < (100 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = NumHelper(3010) = [1,2]
trigger2 = Helper(3010),StateNo = [1062,1063]
trigger2 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = p2bodydist x = [110, 200]
trigger2 = enemynear, vel y >= 0
trigger2 = p2statetype != A || enemynear, vel x < 0
trigger2 = !enemynear, ctrl && enemynear, stateno != [120,159]
trigger2 = p2dist y = [(-81 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger2 = enemynear, animtime < -13
trigger2 = random < (100 * (ailevel ** 2.0 / 64.0))
; condition
trigger3 = var(6)
trigger3 = NumHelper(3010) <= 0
trigger3 = p2bodydist x = [-const240p(8), (80 - const(size.ground.front)) * const(size.xscale)]
trigger3 = p2dist y = [(-81 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger3 = movecontact && ((enemynear, gethitvar(hittime) >= 7) || enemynear, gethitvar(yvel) != 0)
trigger3 = movehit = [1,8]
trigger3 = random < (350 * (ailevel ** 2 / 64.0))

;============================================================================
; AI EX moves ---------------------------------------------------------------
;============================================================================
[State -1, AI 1700 EX Killer Bees]
type = ChangeState
value = 1700
triggerall = ailevel && numenemy
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
;
triggerall = (enemynear, const(size.head.pos.y) <= -const240p(40)) || enemynear, statetype = A
triggerall = (random < (power/10.0)) || var(20) || ((life/lifemax * 1.0) < 0.9 * (enemynear, life/enemynear, lifemax * 1.0)) || (life < 0.25 * lifemax)
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
; condition
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger1 = p2bodydist x = [50, (90 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-105 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = !enemynear, ctrl && (p2stateno != [120,155])
trigger1 = p2statetype != A
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-const240p(8), (80 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-105 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger2 = movecontact && (enemynear, gethitvar(hittime) >= 12)
trigger2 = movehit = [1,8]
trigger2 = random < (cond(var(20) && movehit, 350, 50) * (ailevel ** 2.0 / 64.0))

[State -1, AI 2350 EX Hakuro No Mai]
type = ChangeState
value = 2350
triggerall = ailevel && numenemy && roundstate = 2
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
;
triggerall = (random < (power/10.0)) || var(20) || ((life/lifemax * 1.0) < 0.9 * (enemynear, life/enemynear, lifemax * 1.0)) || (life < 0.25 * lifemax)
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
; condition
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger1 = p2bodydist x = [50, (90 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-105 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = !enemynear, ctrl && (p2stateno != [120,155])
trigger1 = p2statetype != A
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-const240p(8), (50 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-105 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger2 = movecontact && (enemynear, gethitvar(hittime) >= 9)
trigger2 = (random < (25 * (ailevel ** 2.0 / 64.0))) || (movehit = [1,8])
trigger2 = (p2bodydist x > (40 - const(size.ground.front)) * const(size.xscale)) || moveguarded
trigger2 = random < (cond(var(20) && movehit, 350, 50) * (ailevel ** 2.0 / 64.0))

[State -1, AI 2450 EX Saiyo Chidori]
type = ChangeState
value = 2450
triggerall = ailevel && numenemy
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
triggerall = (random < (25 * (ailevel ** 2.0 / 64.0))) || (power >= 1500) || ((life/lifemax * 1.0) < 0.9 * (enemynear, life/enemynear, lifemax * 1.0)) || (life < 0.25 * lifemax)
triggerall = var(12) 
triggerall = var(11)
;
triggerall = (random < (power/10.0)) || var(20) || ((life/lifemax * 1.0) < 0.9 * (enemynear, life/enemynear, lifemax * 1.0)) || (life < 0.25 * lifemax)
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
; condition
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger1 = p2bodydist x = [-const240p(8), (97 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-31 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = p2bodydist x > (40 - const(size.ground.front)) * const(size.xscale)
trigger1 = !enemynear, ctrl && (p2stateno != [120,155])
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(5)
trigger2 = movehit
trigger2 = enemynear, gethitvar(hittime) >= 14
trigger2 = p2bodydist x = [-const240p(8), (48 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-76 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger2 = random < (cond(var(20) && movehit, 350, 50) * (ailevel ** 2.0 / 64.0))

[State -1, AI 1800 EX Hishou Ryuu'en Jin]
type = ChangeState
value = 1800
triggerall = ailevel && numenemy
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
; condition
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
; startup = 2
;Clsn1: 2
;  Clsn1[0] = 15, -116, 47, -44
;  Clsn1[1] = 0, -95, 47, -59
;
triggerall = (random < (power/10.0)) || var(20) || ((life/lifemax * 1.0) < 0.9 * (enemynear, life/enemynear, lifemax * 1.0)) || (life < 0.25 * lifemax)
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
; condition
trigger1= ctrl || StateNo = 40 || StateNo = 52 ||(stateno=[100,101])
trigger1 = p2bodydist x >= 8 * const(size.xscale)
trigger1 = p2bodydist x <= ((47 + 5 * enemynear, vel x * (enemynear, statetype = A)) - const(size.ground.front)) * const(size.xscale)
trigger1 = p2dist y = [(-116 - (enemynear, vel y + 5 * (enemynear, const(movement.yaccel)))) * const(size.yscale), const240p(8)]
trigger1 = p2stateno != [120, 155]
trigger1 = p2movetype = A || p2statetype = A
trigger1 = enemynear, vel x >= 0 || numtarget
trigger1 = enemynear, vel y >= const240p(-2) || numtarget
trigger1 = facing != enemynear, facing
trigger1 = random < (cond(var(20), 250, 50 * (ailevel ** 2.0 / 64.0)))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-const240p(8), (25 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-72 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger2 = (movehit = [1,8]) && (enemynear, gethitvar(hittime) >= 2)
trigger2 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger3 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger3 = p2bodydist x = [-const240p(8), (47 - const(size.ground.front) + (5 * enemynear, vel x)) * const(size.xscale)]
trigger3 = p2dist y >= (-116 - (enemynear, vel y + 5 * (enemynear, const(movement.yaccel)))) * const(size.yscale)
trigger3 = p2dist y <= (enemynear, const(movement.air.gethit.groundrecover.ground.threshold) - (enemynear, vel y + 5 * (enemynear, const(movement.yaccel)))) * const(size.yscale)
trigger3 = enemynear, statetype = A && enemynear, hitfall && enemynear, vel y > 0
trigger3 = random < (cond(var(20) && movehit, 350, 50) * (ailevel ** 2.0 / 64.0))

[State -1, AI 2000 EX Burning Mai]
type = ChangeState
value = 2000
triggerall = ailevel && numenemy
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
triggerall = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101]) || var(5)
;
triggerall = (random < (power/10.0)) || var(20) || ((life/lifemax * 1.0) < 0.9 * (enemynear, life/enemynear, lifemax * 1.0)) || (life < 0.25 * lifemax)
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
; condition
trigger1 = NumHelper(1450) <= 0
trigger1 = ctrl || StateNo = 40 || StateNo = 52 ||(stateno=[100,101])
trigger1 = p2bodydist x >= ((-34 + 12 * enemynear, vel x * (enemynear, statetype = A)) - const(size.ground.front)) * const(size.xscale)
trigger1 = p2bodydist x <= ((34 + 12 * enemynear, vel x * (enemynear, statetype = A)) - const(size.ground.front)) * const(size.xscale)
trigger1 = p2dist y = [(-149 - (enemynear, vel y + 12 * (enemynear, const(movement.yaccel)))) * const(size.yscale), const240p(8)]
trigger1 = p2stateno != [120, 155]
trigger1 = p2statetype = A
trigger1 = enemynear, vel x >= 0 || numtarget
trigger1 = enemynear, vel y >= const240p(-2) || numtarget
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = NumHelper(1450) = 1
trigger2 = Helper(1450),StateNo = 1063
trigger2 = ctrl || StateNo = 40 || StateNo = 52 ||(stateno=[100,101])
trigger2 = p2bodydist x >= ((-34 + 12 * enemynear, vel x * (enemynear, statetype = A)) - const(size.ground.front)) * const(size.xscale)
trigger2 = p2bodydist x <= ((34 + 12 * enemynear, vel x * (enemynear, statetype = A)) - const(size.ground.front)) * const(size.xscale)
trigger2 = p2dist y = [(-149 - (enemynear, vel y + 12 * (enemynear, const(movement.yaccel)))) * const(size.yscale), const240p(8)]
trigger2 = p2stateno != [120, 155]
trigger2 = p2statetype = A
trigger2 = enemynear, vel x >= 0 || numtarget
trigger2 = enemynear, vel y >= const240p(-2) || numtarget
trigger2 = random < (50 * (ailevel ** 2.0 / 64.0))

[State -1, AI 1900 EX Ryu En Bu]
type = ChangeState
value = 1900
triggerall = ailevel && numenemy
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
; startup = 12
;Clsn1: 1
;  Clsn1[0] = 19, -88, 75, -44
;
triggerall = (random < (power/10.0)) || var(20) || ((life/lifemax * 1.0) < 0.9 * (enemynear, life/enemynear, lifemax * 1.0)) || (life < 0.25 * lifemax)
triggerall = p2statetype != A
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
; condition
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger1 = p2bodydist x = [-const240p(8), (75 + (25 * var(9)) - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-88 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = p2bodydist x > (40 - const(size.ground.front)) * const(size.xscale)
trigger1 = p2statetype != A && p2stateno != 40 && p2stateno != 105
trigger1 = !enemynear, ctrl && (p2stateno != [120,155])
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-const240p(8), (57 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-88 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger2 = movehit
trigger2 = enemynear, gethitvar(hittime) >= 12
trigger2 = random < (cond(var(20) && movehit, 350, 50) * (ailevel ** 2.0 / 64.0))

[State -1, AI 1600 EX Kacho Sen]
type = ChangeState
value = 1600
triggerall = ailevel && numenemy
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
triggerall = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101]) || var(5)
;
triggerall = (enemynear, const(size.head.pos.y) <= -const240p(40)) || enemynear, statetype = A
triggerall = p2statetype != C
triggerall = (random < (25 * (ailevel ** 2.0 / 64.0))) || (power >= 1500) || ((life/lifemax * 1.0) < 0.9 * (enemynear, life/enemynear, lifemax * 1.0)) || (life < 0.25 * lifemax)
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
; condition
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101]) || (StateNo = [120,131])
trigger1 = NumHelper(1010) <= 0
trigger1 = p2bodydist x = [80, 320]
trigger1 = enemynear, vel y >= 0
trigger1 = p2statetype != A || enemynear, vel x < 0
trigger1 = !enemynear, ctrl && (enemynear, stateno != [120,159])
trigger1 = p2dist y = [(-81 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101]) || (StateNo = [120,131])
trigger2 = NumHelper(1010) = [1,2]
trigger2 = Helper(1010),StateNo = [1015,1016]
trigger2 = p2bodydist x = [80, 320]
trigger2 = enemynear, vel y >= 0
trigger2 = p2statetype != A || enemynear, vel x < 0
trigger2 = !enemynear, ctrl && (enemynear, stateno != [120,159])
trigger2 = p2dist y = [(-81 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger2 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger3 = var(5)
trigger3 = NumHelper(1010) <= 0
trigger3 = (p2bodydist x = [-const240p(8), (80 - const(size.ground.front)) * const(size.xscale)]) || moveguarded
trigger3 = p2dist y = [(-81 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger3 = movehit
trigger3 = enemynear, gethitvar(hittime) >= 11
trigger3 = power < 3000 || var(20)
trigger3 = random < (cond(var(20) && movehit, 350, 50) * (ailevel ** 2.0 / 64.0))

[State -1, AI 2200 EX Flying Squirrel]
type = ChangeState
value = 2200
triggerall = ailevel && numenemy
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
triggerall = RoundState = 2 && StateType = A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
triggerall = var(3)!=[1,2]
; startup = 14
;Clsn1Default: 1
;  Clsn1[0] = 7, -50, 54, -10
;
triggerall = (random < (power/10.0)) || var(20) || ((life/lifemax * 1.0) < 0.9 * (enemynear, life/enemynear, lifemax * 1.0)) || (life < 0.25 * lifemax)
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
; condition
trigger1 = ctrl && pos y <= -30
trigger1 = (p2bodydist x - p2bodydist y - (enemynear,vel y * 9)) = [-48,24]
trigger1 = enemynear, animtime < -14
trigger1 = !enemynear, ctrl && (p2stateno != [120,155])
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(5)
trigger2 = (p2bodydist x - p2bodydist y - (enemynear,vel y * 9)) = [-48,24]
trigger2 = movehit
trigger2 = (enemynear, gethitvar(hittime) >= 18) || (enemynear, hitfall)
trigger2 = random < (cond(var(20) && movehit, 350, 50) * (ailevel ** 2.0 / 64.0))

[State -1, AI 2100 EX Wall Fly]
type = ChangeState
value = 2100
triggerall = ailevel && numenemy
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
;
triggerall = (random < (power/10.0)) || var(20) || ((life/lifemax * 1.0) < 0.9 * (enemynear, life/enemynear, lifemax * 1.0)) || (life < 0.25 * lifemax)
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
; condition
trigger1= ctrl || StateNo = 40 || StateNo = 52 ||(stateno=[100,101]) || (stateno = [120,131])
trigger1 = p2bodydist x = [32, 80]
trigger1 = enemynear, backedgebodydist > 100
trigger1 = p2movetype != A
trigger1 = p2statetype != A && p2stateno != 40 && p2stateno != 105
trigger1 = p2stateno != [120,155]
trigger1 = random < (25 * (ailevel ** 2.0 / 64.0))

;============================================================================
; AI Special moves ----------------------------------------------------------
;============================================================================
[State -1, AI 2300 Hakuro No Mai]
type = ChangeState
value = 2300
triggerall = ailevel && numenemy
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
triggerall = RoundState = 2 && StateType != A
triggerall = p2statetype != A
;
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
; condition
trigger1= ctrl || StateNo = 40 || StateNo = 52 ||(stateno=[100,101])
trigger1 = p2bodydist x = [50, (90 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-105 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]))
trigger1 = !(enemynear, hitfall)
trigger1 = p2statetype != A && p2stateno != 40 && p2stateno != 105
trigger1 = random < (25 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-const240p(8), (70 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-105 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger2 = movecontact && (enemynear, gethitvar(hittime) >= 12)
trigger2 = (random < (25 * (ailevel ** 2.0 / 64.0))) || (movehit = [1,8])
trigger2 = random < (300 * (ailevel ** 2.0 / 64.0))

[State -1, AI 1100 Killer Bees]
type = ChangeState
value = 1100
triggerall = ailevel && numenemy
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
triggerall = RoundState = 2 && StateType != A
; startup = 9
;Clsn1: 1
;  Clsn1[0] = 0, -79, 43, -20
triggerall = p2statetype != A
triggerall = (enemynear, const(size.head.pos.y) <= -const240p(40)) || enemynear, statetype = A
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
triggerall = p2statetype != C
; condition
trigger1= ctrl || StateNo = 40 || StateNo = 52 ||(stateno=[100,101])
trigger1 = p2bodydist x = [50, (90 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-105 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = !enemynear, ctrl && (p2stateno != [120,155])
trigger1 = p2statetype != A && p2stateno != 40 && p2stateno != 105
trigger1 = enemynear, animtime < -13
trigger1 = random < (25 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-const240p(8), (60 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-105 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger2 = movecontact && (enemynear, gethitvar(hittime) >= 9)
trigger2 = movehit = [1,8]
trigger2 = random < (300 * (ailevel ** 2.0 / 64.0))

[State -1, AI 2400 Saiyo Chidori]
type = ChangeState
value = 2400
triggerall = ailevel && numenemy
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
triggerall = RoundState = 2 && StateType != A
; startup = 14
;Clsn1: 1
;  Clsn1[0] = 40, -102, 97, -19
triggerall = p2statetype != A
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
; condition
trigger1= ctrl || StateNo = 40 || StateNo = 52 ||(stateno=[100,101])
trigger1 = p2bodydist x = [-const240p(8), (97 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-31 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = p2bodydist x > (40 - const(size.ground.front)) * const(size.xscale)
trigger1 = !enemynear, ctrl && (p2stateno != [120,155])
trigger1 = p2statetype != A && p2stateno != 40 && p2stateno != 105
trigger1 = enemynear, animtime < -18
trigger1 = random < (25 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(5)
trigger2 = enemynear, gethitvar(hittime) >= 14
trigger2 = p2bodydist x = [-const240p(8), (48 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-76 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[State -1, AI 1200 Hishou Ryuu'en Jin]
type = ChangeState
value = 1200
triggerall = ailevel && numenemy
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
triggerall = RoundState = 2 && StateType != A
; startup = 5
;Clsn1: 2
;  Clsn1[0] = 15, -116, 47, -44
;  Clsn1[1] = 0, -95, 47, -59
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
; condition
trigger1= ctrl || StateNo = 40 || StateNo = 52 ||(stateno=[100,101])
trigger1 = p2bodydist x >= 8 * const(size.xscale)
trigger1 = p2bodydist x <= ((47 + 8 * enemynear, vel x * (enemynear, statetype = A)) - const(size.ground.front)) * const(size.xscale)
trigger1 = p2dist y = [(-116 - (enemynear, vel y + 8 * (enemynear, const(movement.yaccel)))) * const(size.yscale), const240p(8)]
trigger1 = p2stateno != [120, 155]
trigger1 = p2movetype = A || p2statetype = A
trigger1 = enemynear, vel x >= 0 || numtarget
trigger1 = enemynear, vel y >= const240p(-4) || numtarget
trigger1 = facing != enemynear, facing
trigger1 = random < (200 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-const240p(8), (25 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-72 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger2 = (movehit = [1,8]) && (enemynear, gethitvar(hittime) >= 5)
trigger2 = random < (200 * (ailevel ** 2.0 / 64.0))
; condition
trigger3 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger3 = p2bodydist x = [-const240p(8), (47 - const(size.ground.front) + (5 * enemynear, vel x)) * const(size.xscale)]
trigger3 = p2dist y >= (-116 - (enemynear, vel y + 5 * (enemynear, const(movement.yaccel)))) * const(size.yscale)
trigger3 = p2dist y <= (enemynear, const(movement.air.gethit.groundrecover.ground.threshold) - (enemynear, vel y + 5 * (enemynear, const(movement.yaccel)))) * const(size.yscale)
trigger3 = enemynear, statetype = A && enemynear, hitfall && enemynear, vel y > 0
trigger3 = random < (25 * (ailevel ** 2.0 / 64.0))

[State -1, AI 1302 Ryu En Bu Strong]
type = ChangeState
value = 1302
triggerall = ailevel && numenemy
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
triggerall = RoundState = 2 && StateType != A
; startup = 5
;Clsn1: 1
;  Clsn1[0] = 15, -97, 55, -66
triggerall = p2statetype != A
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
; condition
trigger1= ctrl || StateNo = 40 || StateNo = 52 ||(stateno=[100,101])
trigger1 = p2bodydist x = [-const240p(8), (75 + (25 * var(9)) - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-88 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = p2bodydist x > (40 - const(size.ground.front)) * const(size.xscale)
trigger1 = p2statetype != A && p2stateno != 40 && p2stateno != 105
trigger1 = !enemynear, ctrl && (p2stateno != [120,155])
trigger1 = enemynear, animtime < -18
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-const240p(8), (32 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-66 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger2 = enemynear, gethitvar(hittime) >= 5
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[State -1, AI 1301 Ryu En Bu Med]
type = ChangeState
value = 1301
triggerall = ailevel && numenemy
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
triggerall = RoundState = 2 && StateType != A
; startup = 14
;Clsn1: 1
;  Clsn1[0] = 19, -88, 75, -44
triggerall = p2statetype != A
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
; condition
trigger1= ctrl || StateNo = 40 || StateNo = 52 ||(stateno=[100,101])
trigger1 = p2bodydist x = [-const240p(8), (75 + (25 * var(9)) - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-88 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = p2bodydist x > (40 - const(size.ground.front)) * const(size.xscale)
trigger1 = p2statetype != A && p2stateno != 40 && p2stateno != 105
trigger1 = !enemynear, ctrl && (p2stateno != [120,155])
trigger1 = enemynear, animtime < -18
trigger1 = random < (75 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-const240p(8), (40 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-66 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger2 = enemynear, gethitvar(hittime) >= 14
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[State -1, AI 1300 Ryu En Bu]
type = ChangeState
value = 1300
triggerall = ailevel && numenemy
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
triggerall = RoundState = 2 && StateType != A
; startup = 14
;Clsn1: 1
;  Clsn1[0] = 19, -88, 75, -44
triggerall = p2statetype != A
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
; condition
trigger1= ctrl || StateNo = 40 || StateNo = 52 ||(stateno=[100,101])
trigger1 = p2bodydist x = [-const240p(8), (75 + (25 * var(9)) - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-88 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = p2bodydist x > (40 - const(size.ground.front)) * const(size.xscale)
trigger1 = p2statetype != A && p2stateno != 40 && p2stateno != 105
trigger1 = !enemynear, ctrl && (p2stateno != [120,155])
trigger1 = enemynear, animtime < -18
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(5)
trigger2 = p2bodydist x = [-const240p(8), (40 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-66 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger2 = enemynear, gethitvar(hittime) >= 14
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[State -1, AI 1570 Flying Squirrel Strong(Air)]
type = ChangeState
value = 1570
triggerall = ailevel && numenemy
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
triggerall = RoundState = 2 && StateType = A
triggerall = var(3)!=[1,2]
;startup = 25
;Clsn1Default: 1
;  Clsn1[0] = 7, -50, 54, -10
; condition
trigger1= ctrl && pos y <= -30
trigger1 = !enemynear, ctrl && (p2stateno != [120,155])
trigger1 = enemynear, animtime < -28
trigger1 = (p2bodydist x - p2bodydist y - (enemynear,vel y * 8)) = [-104,64]
trigger1 = p2bodydist x = [8, (104 - const(size.air.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-50 - 16) * const(size.yscale), (-10 + 72 + (32 * vel y * (vel y > 0))) * const(size.yscale)]
trigger1 = random < (125 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(5)
trigger2 = (enemynear, gethitvar(hittime) >= 28) || moveguarded
trigger2 = (p2bodydist x - p2bodydist y - (enemynear,vel y * 8)) = [-104,64]
trigger2 = p2bodydist x = [8, (104 - const(size.air.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-50 - 16) * const(size.yscale), (-10 + 72 + (32 * vel y * (vel y > 0))) * const(size.yscale)]
trigger2 = random < (50 * (ailevel ** 2.0 / 64.0))

[State -1, AI 1560 Flying Squirrel Med(Air)]
type = ChangeState
value = 1560
triggerall = ailevel && numenemy
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
triggerall = RoundState = 2 && StateType = A
triggerall = var(3)!=[1,2]
;startup = 25
;Clsn1Default: 1
;  Clsn1[0] = 7, -50, 54, -10
trigger1= ctrl && pos y <= -30
trigger1 = !enemynear, ctrl && (p2stateno != [120,155])
trigger1 = enemynear, animtime < -28
trigger1 = (p2bodydist x - p2bodydist y - (enemynear,vel y * 8)) = [-104,64]
trigger1 = p2bodydist x = [8, (104 - const(size.air.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-50 - 16) * const(size.yscale), (-10 + 72 + (32 * vel y * (vel y > 0))) * const(size.yscale)]
trigger1 = random < (125 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(5)
trigger2 = (enemynear, gethitvar(hittime) >= 28) || moveguarded
trigger2 = (p2bodydist x - p2bodydist y - (enemynear,vel y * 8)) = [-104,64]
trigger2 = p2bodydist x = [8, (104 - const(size.air.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-50 - 16) * const(size.yscale), (-10 + 72 + (32 * vel y * (vel y > 0))) * const(size.yscale)]
trigger2 = random < (50 * (ailevel ** 2.0 / 64.0))

[State -1, AI 1550 Flying Squirrel(Air)]
type = ChangeState
value = 1550
triggerall = ailevel && numenemy
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
triggerall = RoundState = 2 && StateType = A
triggerall = var(3)!=[1,2]
;startup = 25
;Clsn1Default: 1
;  Clsn1[0] = 7, -50, 54, -10
; condition
trigger1= ctrl && pos y <= -30
trigger1 = !enemynear, ctrl && (p2stateno != [120,155])
trigger1 = enemynear, animtime < -28
trigger1 = (p2bodydist x - p2bodydist y - (enemynear,vel y * 8)) = [-104,64]
trigger1 = p2bodydist x = [8, (104 - const(size.air.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-50 - 16) * const(size.yscale), (-10 + 72 + (32 * vel y * (vel y > 0))) * const(size.yscale)]
trigger1 = random < (125 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(5)
trigger2 = (enemynear, gethitvar(hittime) >= 28) || moveguarded
trigger2 = (p2bodydist x - p2bodydist y - (enemynear,vel y * 8)) = [-104,64]
trigger2 = p2bodydist x = [8, (104 - const(size.air.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-50 - 16) * const(size.yscale), (-10 + 72 + (32 * vel y * (vel y > 0))) * const(size.yscale)]
trigger2 = random < (50 * (ailevel ** 2.0 / 64.0))

[State -1, AI 2402 Saiyo Chidori Strong]
type = ChangeState
value = 2402
triggerall = ailevel && numenemy
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
triggerall = RoundState = 2 && StateType != A
; startup = 18
;Clsn1: 1
;  Clsn1[0] = 40, -102, 97, -19
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
; condition
trigger1= ctrl || StateNo = 40 || StateNo = 52 ||(stateno=[100,101])
trigger1 = p2bodydist x = [-const240p(8), (97 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-31 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = p2bodydist x > (40 - const(size.ground.front)) * const(size.xscale)
trigger1 = !enemynear, ctrl && (p2stateno != [120,155])
trigger1 = p2statetype != A && p2stateno != 40 && p2stateno != 105
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(5)
trigger2 = (enemynear, gethitvar(hittime) >= 18) || moveguarded
trigger2 = p2bodydist x = [-const240p(8), (72 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-76 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[State -1, AI 2401 Saiyo Chidori Med]
type = ChangeState
value = 2401
triggerall = ailevel && numenemy
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
triggerall = RoundState = 2 && StateType != A
; startup = 14
;Clsn1: 1
;  Clsn1[0] = 40, -102, 97, -19
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
; condition
trigger1= ctrl || StateNo = 40 || StateNo = 52 ||(stateno=[100,101])
trigger1 = p2bodydist x = [-const240p(8), (97 - const(size.ground.front)) * const(size.xscale)]
trigger1 = p2dist y = [(-31 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = p2bodydist x > (40 - const(size.ground.front)) * const(size.xscale)
trigger1 = !enemynear, ctrl && (p2stateno != [120,155])
trigger1 = p2statetype != A && p2stateno != 40 && p2stateno != 105
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = var(5)
trigger2 = enemynear, gethitvar(hittime) >= 14
trigger2 = p2bodydist x = [-const240p(8), (72 - const(size.ground.front)) * const(size.xscale)]
trigger2 = p2dist y = [(-76 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger2 = random < (250 * (ailevel ** 2.0 / 64.0))

[State -1, AI 1000 Kacho Sen]
type = ChangeState
value = 1000
triggerall = ailevel && numenemy
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
triggerall = RoundState = 2 && StateType != A
triggerall = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101]) || var(5)
;
triggerall = (enemynear, const(size.head.pos.y) <= -const240p(40)) || enemynear, statetype = A
triggerall = p2statetype != C
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
; condition
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger1 = NumHelper(1010) <= 0
trigger1 = p2bodydist x = [80, 320]
trigger1 = enemynear, vel y >= 0
trigger1 = p2statetype != A || enemynear, vel x < 0
trigger1 = enemynear, stateno != [120,159]
trigger1 = p2dist y = [(-81 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger1 = random < (cond(p2bodydist x >= 200, 50, 100 * (ailevel ** 2.0 / 64.0)))
; condition
trigger2 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = NumHelper(1010) = [1,2]
trigger2 = Helper(1010),StateNo = [1015,1016]
trigger2 = p2bodydist x = [80, 320]
trigger2 = enemynear, vel y >= 0
trigger2 = p2statetype != A || enemynear, vel x < 0
trigger2 = enemynear, stateno != [120,159]
trigger2 = p2dist y = [(-81 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger2 = random < (cond(p2bodydist x >= 200, 50, 100 * (ailevel ** 2.0 / 64.0)))
; condition
trigger3 = var(5)
trigger3 = NumHelper(1010) <= 0
trigger3 = p2dist y = [(-81 - (enemynear, vel y * (enemynear, vel y > 0))) * const(size.yscale), const240p(8)]
trigger3 = (enemynear, gethitvar(hittime) >= 11) || moveguarded
trigger3 = enemynear, backedgebodydist > 40
trigger3 = random < (ailevel * 64.0)
; condition
trigger4 = (ctrl || stateno = 52 || (stateno = [100, 101]))
trigger4 = enemynear, stateno = 195
trigger4 = random < (50 * (ailevel ** 2 / 64.0))

[State -1, AI 1520 Wall Flying Squirrel Strong]
type = ChangeState
value = 1520
triggerall = ailevel && numenemy
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
triggerall = RoundState = 2 && StateType != A
;
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
; condition
trigger1= ctrl || StateNo = 40 || StateNo = 52
trigger1 = backedgebodydist < const240p(160)
trigger1 = !enemynear, ctrl && (p2stateno != [120, 155])
trigger1 = p2bodydist x = [24, 120]
trigger1 = random < (16 * (ailevel ** 2.0 / 64.0))
; condition
trigger2= ctrl || StateNo = 40 || StateNo = 52
trigger2 = p2bodydist x = [24, 80]
trigger2 = enemynear, backedgebodydist > 100
trigger2 = p2movetype != A
trigger2 = p2statetype != A && p2stateno != 40 && p2stateno != 105
trigger2 = random < (25 * (ailevel ** 2.0 / 64.0))

[State -1, AI 1510 Wall Flying Squirrel Med]
type = ChangeState
value = 1510
triggerall = ailevel && numenemy
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
triggerall = RoundState = 2 && StateType != A
;
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
; condition
trigger1= ctrl || StateNo = 40 || StateNo = 52
trigger1 = backedgebodydist < const240p(160)
trigger1 = !enemynear, ctrl && (p2stateno != [120, 155])
trigger1 = p2bodydist x = [24, 120]
trigger1 = random < (8 * (ailevel ** 2.0 / 64.0))
; condition
trigger2= ctrl || StateNo = 40 || StateNo = 52
trigger2 = p2bodydist x = [24, 80]
trigger2 = enemynear, backedgebodydist > 100
trigger2 = p2movetype != A
trigger2 = p2statetype != A && p2stateno != 40 && p2stateno != 105
trigger2 = random < (25 * (ailevel ** 2.0 / 64.0))

[State -1, AI 1500 Wall Flying Squirrel]
type = ChangeState
value = 1500
triggerall = ailevel && numenemy
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
triggerall = RoundState = 2 && StateType != A
;
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
; condition
trigger1= ctrl || StateNo = 40 || StateNo = 52
trigger1 = backedgebodydist < const240p(160)
trigger1 = !enemynear, ctrl && (p2stateno != [120, 155])
trigger1 = p2bodydist x = [24, 120]
trigger1 = random < (8 * (ailevel ** 2.0 / 64.0))
; condition
trigger2= ctrl || StateNo = 40 || StateNo = 52
trigger2 = p2bodydist x = [24, 80]
trigger2 = enemynear, backedgebodydist > 100
trigger2 = p2movetype != A
trigger2 = p2statetype != A && p2stateno != 40 && p2stateno != 105
trigger2 = random < (25 * (ailevel ** 2.0 / 64.0))

[State -1, AI 1400 Burning Mai]
type = ChangeState
value = 1400
triggerall = ailevel && numenemy
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = p2statetype != L
triggerall = !var(16) && (var(15) < 1)
triggerall = RoundState = 2 && StateType != A
triggerall = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101]) || var(5)
;startup = 12
;Clsn2: 1
;  Clsn2[0] = -47, -149, 34, 0
triggerall = !(((stateno = [200,699]) && Time <= 2) && numtarget)
; condition
trigger1 = NumHelper(1450) <= 0
trigger1 = ctrl || StateNo = 40 || StateNo = 52 ||(stateno=[100,101])
trigger1 = p2bodydist x >= ((-34 + 12 * enemynear, vel x * (enemynear, statetype = A)) - const(size.ground.front)) * const(size.xscale)
trigger1 = p2bodydist x <= ((34 + 12 * enemynear, vel x * (enemynear, statetype = A)) - const(size.ground.front)) * const(size.xscale)
trigger1 = p2dist y = [(-149 - (enemynear, vel y + 12 * (enemynear, const(movement.yaccel)))) * const(size.yscale), const240p(8)]
trigger1 = p2stateno != [120, 155]
trigger1 = p2statetype = A
trigger1 = enemynear, vel x >= 0 || numtarget
trigger1 = enemynear, vel y > -5.0
trigger1 = random < (50 * (ailevel ** 2.0 / 64.0))
; condition
trigger2 = NumHelper(1450) = 1
trigger2 = Helper(1450),StateNo = 1063
trigger2 = ctrl || StateNo = 40 || StateNo = 52 ||(stateno=[100,101])
trigger2 = p2bodydist x >= ((-34 + 12 * enemynear, vel x * (enemynear, statetype = A)) - const(size.ground.front)) * const(size.xscale)
trigger2 = p2bodydist x <= ((34 + 12 * enemynear, vel x * (enemynear, statetype = A)) - const(size.ground.front)) * const(size.xscale)
trigger2 = p2dist y = [(-149 - (enemynear, vel y + 12 * (enemynear, const(movement.yaccel)))) * const(size.yscale), const240p(8)]
trigger2 = p2stateno != [120, 155]
trigger2 = p2statetype = A
trigger2 = enemynear, vel x >= 0 || numtarget
trigger2 = enemynear, vel y >= const240p(-4) || numtarget
trigger2 = random < (50 * (ailevel ** 2.0 / 64.0))

;============================================================================
; AI Taunts -----------------------------------------------------------------
;============================================================================
[State -1, AI 196 Fake Ka Cho Sen]
type = ChangeState
value = 196
triggerall = ailevel && numenemy
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger1 = p2bodydist x = [100 * const(size.xscale), 144 * const(size.xscale)]
trigger1 = p2movetype != A
trigger1 = p2statetype != A && p2stateno != 40
trigger1 = enemynear, vel x <= 0
trigger1 = !(enemynear, gethitvar(damage) && (p2statetype = S || p2statetype = C))
trigger1 = random < (25 * (ailevel ** 2.0 / 64.0))

[State -1, AI 195 Taunt]
type = ChangeState
value = 195
triggerall = ailevel && numenemy && roundstate = 2
triggerall = statetype != A
triggerall = p2stateno != 5120 && p2stateno != 5201 || enemynear,ctrl
triggerall = StateNo != [200,699]
; condition
trigger1 = ctrl || (StateNo = [100,101])
trigger1 = p2dist x >= 160
trigger1 = (enemynear, movetype = H) && (enemynear, hitfall)
trigger1 = (life / (1.0 * lifemax)) - (enemynear, life / (1.0 * enemynear, lifemax)) >= 0.25
trigger1 = enemynear, life < (2 * enemynear, lifemax / 3.0)
trigger1 = random < (100 * (ailevel ** 2.0 / 64.0))