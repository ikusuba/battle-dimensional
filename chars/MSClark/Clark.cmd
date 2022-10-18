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
command.time = 15
command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------
[Command]
name = "QFQB"
command = ~D, DF, F, D, DB
time = 24;32

[Command]
name = "QBQF"
command = ~D, DB, B, D, DF
time = 24;32

[Command]
name = "HCBx2"
command = ~F, $D, B, F, $D, B
time = 28

[Command]
name = "HCFx2"
command = ~B, $D, F, B, $D, F
time = 28

[Command]
name = "RDC"
command = a+x, b+c, c+z, y+z, x+y
time = 48

;-| Special Motions |--------------------------------------------------------
[command]
name = "HCB"
command = ~F, DF, $D, B
time = 24

[command]
name = "HCF"
command = ~B, DB, $D, F
time = 24

[Command]
name = "CFB"
command = ~$F, $B
time = 16

[Command]
name = "CBF"
command = ~$B, $F
time = 16

[Command]
name = "DP"
command = ~F, D, DF
time = 16

[Command]
name = "RDP"
command = ~B, D, DB
time = 16

[Command]
name = "QCBD"
command = ~B, DB, D
time = 15

[Command]
name = "QCFD"
command = ~F, DF, D
time = 15

[Command]
name = "QCB"
command = ~D, DB, B
time = 15

[Command]
name = "QCF"
command = ~D, DF, F
time = 15

[Command]
name = "Dx2"
command = ~D, D
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
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
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
[Statedef -1]

[State -1, Tick Fix]
type = CtrlSet
triggerall = !ctrl
trigger1 = (StateNo = 52 || StateNo = 101 || StateNo = 5120) && !AnimTime
trigger2 = (StateNo = [200,499]) && !AnimTime
trigger3 = (StateNo = [760,762]) && !AnimTime
trigger4 = StateNo = 810 && !AnimTime
trigger5 = (StateNo = 5001 || StateNo = 5011 || StateNo = 151 || StateNo = 153) && HitOver
trigger6 = (StateNo = [700,715]) && !AnimTime
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

[State -1, Rolling Sphere]
type = ChangeState
value = 3300
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(42)
triggerall = (helper(10371), var(3)) && (helper(10371), var(4)) || (helper(10371), var(4)) && (helper(10371), var(5)) || (helper(10371), var(3)) && (helper(10371), var(5))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 3000, power >= 1000)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Running Pirate]
type = ChangeState
value = 3250
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(40)
triggerall = (helper(10371), var(3)) && (helper(10371), var(4)) || (helper(10371), var(4)) && (helper(10371), var(5)) || (helper(10371), var(3)) && (helper(10371), var(5))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 2000, power >= 1000)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6) || var(7)

[State -1, Napalm Strike MAX]
type = ChangeState
value = 3150
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(41)
triggerall = (helper(10371), var(3)) && (helper(10371), var(4)) || (helper(10371), var(4)) && (helper(10371), var(5)) || (helper(10371), var(3)) && (helper(10371), var(5))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 2000, power >= 1000)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6) || var(7)

[State -1, Ultra Argentine Backbreaker MAX]
type = ChangeState
value = 3050
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(41)
triggerall = (helper(10371), var(0)) && (helper(10371), var(1)) || (helper(10371), var(1)) && (helper(10371), var(2)) || (helper(10371), var(0)) && (helper(10371), var(2))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 2000, power >= 1000)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6) || var(7)

[State -1, Running Three]
type = ChangeState
value = 3200
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(40)
triggerall = (helper(10371), var(3)) || (helper(10371), var(4)) || (helper(10371), var(5)) || (helper(10371), var(10)) || (helper(10371), var(11)) || (helper(10371), var(12))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Napalm Strike]
type = ChangeState
value = 3100
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(41)
triggerall = (helper(10371), var(3)) || (helper(10371), var(4)) || (helper(10371), var(5)) || (helper(10371), var(10)) || (helper(10371), var(11)) || (helper(10371), var(12))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Ultra Argentine Backbreaker]
type = ChangeState
value = 3000
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(41)
triggerall = (helper(10371), var(0)) || (helper(10371), var(1)) || (helper(10371), var(2)) || (helper(10371), var(7)) || (helper(10371), var(8)) || (helper(10371), var(9)) 
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Shining Wizard]
type = ChangeState
value = 1530
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(25)
triggerall = (helper(10371), var(0)) && (helper(10371), var(1)) || (helper(10371), var(1)) && (helper(10371), var(2)) || (helper(10371), var(0)) && (helper(10371), var(2))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, EX Mount Tackle]
type = ChangeState
value = 1430
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(24)
triggerall = (helper(10371), var(0)) && (helper(10371), var(1)) || (helper(10371), var(1)) && (helper(10371), var(2)) || (helper(10371), var(0)) && (helper(10371), var(2))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, EX Super Argentine Backbreaker]
type = ChangeState
value = 1130
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(24)
triggerall = (helper(10371), var(3)) && (helper(10371), var(4)) || (helper(10371), var(4)) && (helper(10371), var(5)) || (helper(10371), var(3)) && (helper(10371), var(5))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, EX Gatling Attack]
type = ChangeState
value = 1030
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(21)
triggerall = (helper(10371), var(0)) && (helper(10371), var(1)) || (helper(10371), var(1)) && (helper(10371), var(2)) || (helper(10371), var(0)) && (helper(10371), var(2))
triggerall = ((helper(10371), p2dist X >= 0) && var(48) > 0) || ((helper(10371), p2dist X < 0) && var(48) < 0)
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, EX Frankensteiner]
type = ChangeState
value = 1330
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(23)
triggerall = (helper(10371), var(3)) && (helper(10371), var(4)) || (helper(10371), var(4)) && (helper(10371), var(5)) || (helper(10371), var(3)) && (helper(10371), var(5))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, EX Napalm Stretch]
type = ChangeState
value = 1230
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(23)
triggerall = (helper(10371), var(0)) && (helper(10371), var(1)) || (helper(10371), var(1)) && (helper(10371), var(2)) || (helper(10371), var(0)) && (helper(10371), var(2))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Shining Wizard3]
type = ChangeState
value = 1520
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(25)
triggerall = (helper(10371), var(2)) || (helper(10371), var(9))
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Shining Wizard2]
type = ChangeState
value = 1510
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(25)
triggerall = (helper(10371), var(1)) || (helper(10371), var(8))
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Shining Wizard]
type = ChangeState
value = 1500
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(25)
triggerall = (helper(10371), var(0)) || (helper(10371), var(7))
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Mount Tackle3]
type = ChangeState
value = 1420
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(24)
triggerall = (helper(10371), var(2)) || (helper(10371), var(9))
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Mount Tackle2]
type = ChangeState
value = 1410
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(24)
triggerall = (helper(10371), var(1)) || (helper(10371), var(8))
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Mount Tackle]
type = ChangeState
value = 1400
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(24)
triggerall = (helper(10371), var(0)) || (helper(10371), var(7))
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Super Argentine Backbreaker3]
type = ChangeState
value = 1120
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(24)
triggerall = (helper(10371), var(5)) || (helper(10371), var(12))
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Super Argentine Backbreaker2]
type = ChangeState
value = 1110
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(24)
triggerall = (helper(10371), var(4)) || (helper(10371), var(11))
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Super Argentine Backbreaker]
type = ChangeState
value = 1100
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(24)
triggerall = (helper(10371), var(3)) || (helper(10371), var(10))
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Gatling Attack3]
type = ChangeState
value = 1020
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(21)
triggerall = (helper(10371), var(2)) || (helper(10371), var(9))
triggerall = ((helper(10371), p2dist X >= 0) && var(48) > 0) || ((helper(10371), p2dist X < 0) && var(48) < 0)
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Gatling Attack2]
type = ChangeState
value = 1010
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(21)
triggerall = (helper(10371), var(1)) || (helper(10371), var(8))
triggerall = ((helper(10371), p2dist X >= 0) && var(48) > 0) || ((helper(10371), p2dist X < 0) && var(48) < 0)
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Gatling Attack]
type = ChangeState
value = 1000
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(21)
triggerall = (helper(10371), var(0)) || (helper(10371), var(7))
triggerall = ((helper(10371), p2dist X >= 0) && var(48) > 0) || ((helper(10371), p2dist X < 0) && var(48) < 0)
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

 [State -1, Frankensteiner3]
type = ChangeState
value = 1320
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(23)
triggerall = (helper(10371), var(5)) || (helper(10371), var(12))
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Frankensteiner2]
type = ChangeState
value = 1310
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(23)
triggerall = (helper(10371), var(4)) || (helper(10371), var(11))
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Frankensteiner]
type = ChangeState
value = 1300
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(23)
triggerall = (helper(10371), var(3)) || (helper(10371), var(10))
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Napalm Stretch]
type = ChangeState
value = 1200
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(23)
triggerall = (helper(10371), var(0)) || (helper(10371), var(1)) || (helper(10371), var(2)) || (helper(10371), var(7)) || (helper(10371), var(8)) || (helper(10371), var(9)) 
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Alpha Counter(Kick)]
type = ChangeState
value = 750
triggerall = !AIlevel
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
triggerall = !AIlevel
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(20)
triggerall = (helper(10371), var(0)) || (helper(10371), var(1)) || (helper(10371), var(2)) || (helper(10371), var(7)) || (helper(10371), var(8)) || (helper(10371), var(9)) 
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20)

[State -1, Counter Movement]
type = ChangeState
value = 740
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(14)
triggerall = (helper(10371),command != "holdfwd") || (helper(10371),command != "holdback")
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20)

[State -1, Throw(Kick)]
type = ChangeState
value = 800
triggerall = !AIlevel
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = (helper(10371), var(3) && helper(10371), var(4)) || (helper(10371), var(4) && helper(10371), var(5)) || (helper(10371), var(3) && helper(10371), var(5))
trigger1 = (helper(10371),command = "holdfwd")|| (helper(10371),command = "holdback")
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Throw(Punch)]
type = ChangeState
value = 800
triggerall = !AIlevel
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = (helper(10371), var(0) && helper(10371), var(1)) || (helper(10371), var(1) && helper(10371), var(2)) || (helper(10371), var(0) && helper(10371), var(2))
trigger1 = (helper(10371),command = "holdfwd")|| (helper(10371),command = "holdback")
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Air Throw]
type = ChangeState
value = 900
triggerall = !AIlevel
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = (helper(10371), var(0) && helper(10371), var(1)) || (helper(10371), var(1) && helper(10371), var(2)) || (helper(10371), var(0) && helper(10371), var(2))
trigger1 = RoundState = 2 && StateType = A
trigger1 = ctrl && pos y <= -30
trigger1 = statetype != S

[State -1, Roll Forward]
type = ChangeState
value = 710
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(14)
triggerall = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdfwd"

[State -1, Roll Back]
type = ChangeState
value = 715
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(14)
triggerall = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdback"

[State -1, Power Charge]
type = ChangeState
value = 730
triggerall = !AIlevel
trigger1 = command = "hold_b" && command = "hold_y"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power < const(data.power) && power < PowerMax && !var(20)
trigger1 = ctrl || (StateNo = [100,101])

[State -1, MAX Mode]
type = ChangeState
value = 770
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(16)
triggerall = RoundState = 2 && StateType != A
triggerall = var(20) <= 0 && Power >= 1000
trigger1 = ctrl || (Stateno = [100,101])

[State -1, Dodge]
type = ChangeState
value = 700
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(14)
triggerall = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101]))

[State -1, Step (Comboed)]
type = Changestate
value = 103
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = (helper(10371), var(3)) && (helper(10371), var(4)) || (helper(10371), var(4)) && (helper(10371), var(5)) || (helper(10371), var(3)) && (helper(10371), var(5))
triggerall = (helper(10371),command != "holddown")
triggerall = command = "holdfwd"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])
trigger2 = var(4)

[State -1, Stomping]
type = Changestate
value = 235
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(3)
triggerall = (helper(10371),command != "holddown")
triggerall = command = "holdfwd"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])

[State -1, Stomping (Comboed)]
type = Changestate
value = 236
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(3)
triggerall = (helper(10371),command != "holddown")
triggerall = command = "holdfwd"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])
trigger2 = var(4)

[State -1, Run Fwd]
type = ChangeState
value = 102
triggerall = !AIlevel
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !AIlevel
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;--------------------------------------------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(0)
triggerall = (helper(10371),command != "holddown")
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])
trigger2= (StateNo = 200 || StateNo = 400 || StateNo = 430) && Time >=5

[State -1, Stand Medium Punch]
type = ChangeState
value = 210 
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(1)
triggerall = (helper(10371),command != "holddown")
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Stand Strong Punch]
type = ChangeState
value = 220 
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(2)
triggerall = (helper(10371),command != "holddown")
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Stand Light Kick]
type = ChangeState
value = 230 + (Abs(P2BodyDist X) <= 15) * 1
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(3)
triggerall = (helper(10371),command != "holddown")
triggerall = command != "holdfwd"
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])

[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(4)
triggerall = (helper(10371),command != "holddown")
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])

[State -1, Stand Strong Kick]
type = ChangeState
value = 250 + (Abs(P2BodyDist X) <= 17) * 1
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(5)
triggerall = (helper(10371),command != "holddown")
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(0)
triggerall = (helper(10371),command = "holddown")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2= (StateNo = 200 || StateNo = 400 || StateNo = 430) && Time >=5

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(1)
triggerall = (helper(10371),command = "holddown")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(2)
triggerall = (helper(10371),command = "holddown")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(3)
triggerall = (helper(10371),command = "holddown")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2= (StateNo = 200 || StateNo = 400 || StateNo = 430) && Time >=5

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(4)
triggerall = (helper(10371),command = "holddown")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(5)
triggerall = (helper(10371),command = "holddown")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(0)
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(1)
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(2)
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(3)
triggerall = vel x !=0
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Neutral Jump Light Kick]
type = ChangeState
value = 631
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(3)
triggerall = vel x =0
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(4)
triggerall = vel x !=0
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Neutral Jump Medium Kick]
type = ChangeState
value = 641
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(4)
triggerall = vel x =0
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(5)
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !AIlevel
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = helper(10371), var(6)
triggerall = StateType != A
triggerall = StateNo != [200,699]
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(5)



;==============================================================================================
;AI by Finola
;==============================================================================================



[State -1, AI Parry Stand]
type = HitOverride
triggerall = AILevel&&statetype != A && ctrl
trigger1 = random < (150 * (AIlevel ** 2 / 64.0))
slot = 0
stateno = 760
attr = SA, AA, AP
time = 1
[State -1, AI Crouching Parry]
type = HitOverride
triggerall = AILevel&&statetype != A && ctrl
trigger1 =random < (150 * (AIlevel ** 2 / 64.0))
slot = 0
stateno = 761
attr = C, AA, AP
time = 1
[State -1, AI Aerial Parry]
type = HitOverride
triggerall = AILevel&& statetype = A && ctrl
trigger1 = random < (150 * (AIlevel ** 2 / 64.0))
slot = 0
stateno = 762
attr = SCA, AA, AP
time = 1

[State -1, Fall Recovery (Air)]
type = ChangeState
value = 5210
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && Alive
trigger1 = StateNo = 5050 && CanRecover
trigger1 = vel y > 0 && pos y < -20
trigger1 = Random < (25 * (AILevel ** 2 / 64.0))

[State -1, Fall Recovery (Ground)]
type = ChangeState
value = 5200
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && Alive
trigger1 = StateNo = 5050 && GetHitVar(fall.recover)
trigger1 = vel y > 0 && pos y >= -20
trigger1 = Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Jump]
type = ChangeState
value = 40
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A && ctrl
trigger1 = EnemyNear, MoveType = A && P2BodyDist x < 160 && EnemyNear, HitDefAttr = SC, AT
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))

[State -1, Roll Forward]
type = ChangeState
value = 710
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Random < (50 * (AILevel ** 2 / 64.0))
trigger1 = (ctrl || (StateNo = [100,101])) && var(20) <= 164 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && !(EnemyNear, HitDefAttr = SCA, AT) && (P2BodyDist x = [92,122])

[State -1, Dodge]
type = ChangeState
value = 700
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Random < (50 * (AIlevel ** 2 / 64.0))
trigger1 = (ctrl || (StateNo = [100,101])) && var(20) <= 164 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && !(EnemyNear, HitDefAttr = SCA, AT) && (P2BodyDist x = [0,60])

[State -1, Dodge]
type = ChangeState
value = 700
triggerall = AIlevel && numenemy
triggerall = (facing=1 && (enemy,facing=-1)) || (facing=-1 && (enemy,facing=1))
triggerall = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (145 * (AILevel ** 2 / 64.0))
triggerall = roundstate=2  && statetype != A
trigger1 = enemynear,movetype=A && (p2bodydist x=[0,40])&&(p2bodydist y=[0,0])
trigger2 = ((enemynear,numproj) || (enemynear,numhelper)) && inguarddist && p2bodydist x>=25 
trigger3 = RoundState = 2 && InGuardDist
trigger3 = ctrl && (StateNo != [120, 155]) && !var(20)
trigger3 = !var(26) || P2BodyDist x >= 40
trigger3 = !(EnemyNear, HitDefAttr = SCA, AT) && (EnemyNear, Time < 120)
trigger3 = StateType != A || P2StateType = A
trigger3 = ifElse(StateType = A, ((var(3) != [1, 2]) || StateNo = 5210), 1)
trigger3 = Random <  (ifElse((P2StateNo = [200, 699]), 125, ifElse((P2StateNo = [1000,2999]), 333, 1000)) * (AILevel ** 2 / 64.0))

[State -1, Dash Backward]
type = ChangeState
value = 105
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = S
triggerAll = ctrl && (StateNo != [100,106]) && var(20) <= 150 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && BackEdgeDist >= 80 && (P2BodyDist x = [80,120]) && (EnemyNear, vel x)
trigger1 = Random < (ifElse((EnemyNear, HitDefAttr = SC, AT), 150, 50) * (AILevel ** 2 / 64.0))
trigger2 = (P2BodyDist x = [0,80]) && BackEdgeBodyDist >= 80
trigger2 = EnemyNear, StateNo = 5120 && EnemyNear, AnimTime = -4 && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Run]
type = ChangeState
value = 100
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl && (StateNo != [100,106])
trigger1 = (EnemyNear, MoveType != A) && P2BodyDist x >= 150 && Random < (25 * (AILevel ** 2 / 64.0))

[State -1, Guard]
type = ChangeState
value = 120
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && InGuardDist
trigger1 = ctrl && (StateNo != [120, 155]) && !var(20)
trigger1 = !var(26) || P2BodyDist x >= 40
trigger1 = !(EnemyNear, HitDefAttr = SCA, AT) && (EnemyNear, Time < 120)
trigger1 = StateType != A || P2StateType = A
trigger1 = ifElse(StateType = A, ((var(3) != [1, 2]) || StateNo = 5210), 1)
trigger1 = Random < (ifElse((P2StateNo = [200, 699]), 100, ifElse((P2StateNo = [1000,2999]), 333, 1000)) * (AILevel ** 2 / 64.0))

[State -1, Zero Counter]
type = ChangeState
value = 750
trigger1 = AILevel && NumEnemy
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = RoundState = 2 && StateType != A
trigger1 = Power >= 1000 && var(20) <= 60
trigger1 = Random < (25 * (AILevel ** 2 / 64.0))
trigger1 = (P2BodyDist x = [0,50]) && (Life < 0.5 * LifeMax)

[State -1, Power Charge]
type = ChangeState
value = 730
triggerAll = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Power < const(data.power) && (!var(20) && !var(53))
trigger1 = ctrl && Power < const(data.power) && Power < PowerMax && !var(20) && PrevStateNo != 5120
trigger1 = !InGuardDist && P2BodyDist x >= 160 && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Throw]
type = ChangeState
value = 800
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = S
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != H
triggerAll = (P2BodyDist x = [-20,35]) && P2BodyDist y = 0
trigger1 = ctrl && Random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (P2StateNo = [120,140]) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Standing Low Punch AI]
type = ChangeState
value = 200
triggerall = !var(16) && (var(15) < 1 || var(20))
triggerall = AILevel && numenemy&&roundstate=2&&StateType != A
triggerall = p2bodydist x <=50&&(p2bodydist y = [-80,5])&&P2statetype != A&&P2statetype != C&&P2statetype != L&& random < (150 * (AIlevel ** 2 / 64.0))
trigger1 = ctrl
trigger2 = StateNo = 200 && Time >= 5 && p2bodydist x <=30 && random < (650 * (AIlevel ** 2 / 64.0))
[State -1, Standing Medium Punch AI]
type = ChangeState
value = 210
triggerall = !var(16) && (var(15) < 1 || var(20))
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != C
triggerall = (p2bodydist x = [0, 50])&&(p2bodydist y = [-60,5]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (125 * (AIlevel ** 2 / 64.0))
[State -1, Standing High Punch AI]
type = ChangeState
value = 220
triggerall = !var(16) && (var(15) < 1 || var(20))
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 84]) && (p2bodydist y = [ -40, 5]) && p2statetype != C && P2StateType != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (150 * (AIlevel ** 2 / 64.0))

[State -1, Standing Low Kick AI]
type = ChangeState
value = 230 + (Abs(P2BodyDist X) <= 15) * 1
triggerall = !var(16) && (var(15) < 1 || var(20))
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != A
triggerall = (p2bodydist x = [0, 33]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))
[State -1, Stomping]
type = ChangeState
value = 235 + 1*var(4)
triggerall = !var(16) && (var(15) < 1 || var(20))
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != A
triggerall = (p2bodydist x = [0, 58]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = (ctrl || (StateNo = [100,101])) && Random < (500 * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, StateType = C
trigger3 = var(4) && (p2bodydist x = [0, 35]) && MoveHit && Random < (300 * (AILevel ** 2 / 64.0))
[State -1, Standing Medium Kick AI]
type = ChangeState
value = 240
triggerall = !var(16) && (var(15) < 1 || var(20))
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != A && P2statetype != C
triggerall = (p2bodydist x = [0, 68]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))
[State -1, Standing High Kick AI]
type = ChangeState
value = 250 + (Abs(P2BodyDist X) <= 17) * 1
triggerall = !var(16) && (var(15) < 1 || var(20))
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != C
triggerall = (p2bodydist x = [0, 50]) && (p2bodydist y = [ -87, 5]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (150 * (AIlevel ** 2 / 64.0))

[State -1, Crouching Low Punch]
type = ChangeState
value = 400
triggerall = !var(16) && (var(15) < 1 || var(20))
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 40]) &&(p2bodydist y = [-10,5]) && P2statetype != A && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (175 * (AIlevel ** 2 / 64.0))
trigger2 = StateNo = 400 && Time >= 5 && p2bodydist x <=20 && random < (650 * (AIlevel ** 2 / 64.0))
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = !var(16) && (var(15) < 1 || var(20))
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 70]) &&(p2bodydist y = [-10,5]) && P2statetype != A && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (150 * (AIlevel ** 2 / 64.0))
[State -1, Crouching High Punch]
type = ChangeState
value = 420
triggerall = !var(16) && (var(15) < 1 || var(20))
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 40]) &&(p2bodydist y = [-145,5]) && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (200 * (AIlevel ** 2 / 64.0))

[State -1, Crouching Low Kick]
type = ChangeState
value = 430
triggerall = !var(16) && (var(15) < 1 || var(20))
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 52]) &&(p2bodydist y = [-50,25]) && P2statetype != A && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = StateNo = 430 && Time >= 7 && p2bodydist x <=22 && random < (650 * (AIlevel ** 2 / 64.0))
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = !var(16) && (var(15) < 1 || var(20))
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 58]) &&(p2bodydist y = [-50,25]) && P2statetype != A && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (125 * (AIlevel ** 2 / 64.0))
[State -1, Crouching High Kick]
type = ChangeState
value = 450
triggerall = !var(16) && (var(15) < 1 || var(20))
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != A
triggerall = (p2bodydist x = [0, 62]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype = S && !(enemynear, hitfall)
trigger1 = ctrl && random < (175 * (AIlevel ** 2 / 64.0))

[State -1, Jumping Low Punch]
type = ChangeState
value = 600
triggerall = AILevel && numenemy&&roundstate=2&&statetype = A && (p2bodydist x = [0,48]) && (p2bodydist y = [ -56, 60]) && p2statetype != L
trigger1 = ctrl && random < (75 * (AIlevel ** 2 / 64.0))
[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerall = AILevel && numenemy&&roundstate=2&&statetype = A && (p2bodydist x = [0, 56]) && (p2bodydist y = [ -60, 42]) && p2statetype != L 
trigger1 = ctrl && random < (ifelse((vel x > 0 && p2statetype = A), 100, 75) * (AIlevel ** 2 / 64.0)) 
[State -1, Jumping High Punch]
type = ChangeState
value = 620
triggerall = AILevel && numenemy&&roundstate=2&&statetype = A && (p2bodydist x = [0, 52]) && (p2bodydist y = [ -104, 40]) && p2statetype != L 
trigger1 = ctrl && random < (175 * (AIlevel ** 2 / 64.0)) && !(enemynear, hitfall)

[State -1, Jumping Low Kick]
type = ChangeState
value = 630
triggerall = AILevel && numenemy&&roundstate=2&&statetype = A && (p2bodydist x = [0, 58]) && (p2bodydist y = [ -68, 50]) && p2statetype != L 
trigger1 = ctrl && random < (75 * (AIlevel ** 2 / 64.0))
[State -1, Jumping Medium Kick]
type = ChangeState
value = 640
triggerall = AILevel && numenemy&&roundstate=2&&statetype = A && (p2bodydist x = [0, 58]) && (p2bodydist y = [ -108, 48]) && p2statetype != L 
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0)) && !(enemynear, hitfall)
[State -1, Jumping High Kick]
type = ChangeState
value = 650
triggerall = AILevel && numenemy &&roundstate=2&&statetype = A && (p2bodydist x = [0, 67]) && (p2bodydist y = [ -35, 54]) && p2statetype != L 
trigger1 = ctrl && random < (200 * (AIlevel ** 2 / 64.0)) && !(enemynear, hitfall) 

[State -1, Gatling Attack]
type = ChangeState
value = ifElse(Power >= 500 && Random < 25, 1030, 1000)
triggerAll = AIlevel && RoundState=2 && numenemy && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2StateType != A && P2StateType != C && P2StateType != L && P2MoveType != H
triggerAll = (P2BodyDist x = [5,100]) && (p2dist y = [ -10, 5])
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100, 101])) && Random < (150 * (AILevel ** 2 / 64.0))
trigger2 = var(5) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Super Argentine Backbreaker]
type = ChangeState
value = ifElse(Random < 333, 1120, 1110)
triggerall = !var(16) && (var(15) < 1 || var(20))
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = S
triggerAll = P2StateType != A && P2StateType != L
triggerAll = (P2BodyDist x = [-20,50]) && P2BodyDist y = 0
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100, 101])) && Random < (150 * (AILevel ** 2 / 64.0))
trigger2 = ctrl && (P2StateNo = [120,140]) && Random < (200 * (AILevel ** 2 / 64.0))
trigger3 = var(5) && (P2BodyDist x = [0,25]) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, Napalm Stretch]
type = ChangeState
value = ifElse(Power >= 500 && Random < 50, 1230, 1200)
triggerAll=AIlevel && RoundState=2 && numenemy && StateType != A
triggerall = !var(16) && (var(15) < 1 || var(20)) && enemynear, statetype = A
triggerall = (p2bodydist x = [0, 60]) && (p2dist y = [ -115, -40]) && (p2statetype != L) && (enemynear, vel y >= 0)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = var(5) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Frankensteiner]
type = ChangeState
value = ifElse(Power >= 500 && Random < 150, 1330, 1310)
triggerall = !var(16) && (var(15) < 1 || var(20))
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = S
triggerAll = P2StateType != A && P2StateType != L
triggerAll = (P2BodyDist x = [-20,40]) && P2BodyDist y = 0
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100, 101])) && Random < (200 * (AILevel ** 2 / 64.0))
trigger2 = ctrl && (P2StateNo = [120,140]) && Random < (200 * (AILevel ** 2 / 64.0))
trigger3 = var(5) && (P2BodyDist x = [0,30]) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, Mount Tackle]
type = ChangeState
value = ifElse(Power >= 500 && Random < 150, 1430, 1400)
triggerAll = AIlevel && RoundState=2 && numenemy && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2StateType != A && P2StateType != C && P2StateType != L
triggerAll = (P2BodyDist x = [5,70]) && (p2dist y = [ -10, 5])
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100, 101])) && Random < (50 * (AILevel ** 2 / 64.0))
trigger2 = var(5) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (25 * (AILevel ** 2 / 64.0))

[State -1, Shining Wizard]
type = ChangeState
value = ifElse(Power >= 500 && Random < 133, 1530, 1500)
triggerAll = AIlevel && RoundState=2 && numenemy && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2StateType != A && P2StateType = C && P2StateType != L
triggerAll = (P2BodyDist x = [5,100]) && (p2dist y = [ -10, 5])
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100, 101])) && Random < (150 * (AILevel ** 2 / 64.0))
trigger2 = var(5) && Random < (350 * (AILevel ** 2 / 64.0))
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (25 * (AILevel ** 2 / 64.0))

[State -1, Ultra Argentine Backbreaker]
type = ChangeState
value = ifElse(Power >= 2000 && Random < 333, 3050, 3000)
triggerall = !var(16) && (var(15) < 1 || var(20))
triggerAll = AILevel && NumEnemy && Power >= 1000
triggerAll = RoundState = 2 && StateType = S
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != H
triggerAll = (P2BodyDist x = [-20,45]) && P2BodyDist y = 0
trigger1 = ctrl && Random < (175 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (P2StateNo = [120,140]) && Random < (200 * (AILevel ** 2 / 64.0))
trigger3 = var(6) && random < (350 * (AIlevel ** 2 / 64.0))

[State -1, Napalm Strike]
type = ChangeState
value = 3100
triggerAll=AIlevel && RoundState=2 && numenemy && StateType != A && Power >= 1000
triggerall = !var(16) && (var(15) < 1 || var(20)) && enemynear, statetype = A
triggerall = (p2bodydist x = [0, 57]) && (p2dist y = [ -110, -40]) && (p2statetype != L)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Running Three]
type = ChangeState
value = ifElse(Power >= 2000 && Random < 2000, 3250, 3200)
triggerAll = AIlevel && RoundState=2 && numenemy && StateType != A && Power >= 1000
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2StateType != A && P2StateType != C && P2StateType != L
triggerAll = (P2BodyDist x = [0,50]) && (p2dist y = [ -10, 5])
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100, 101])) && Random < (50 * (AILevel ** 2 / 64.0))
trigger2 = var(6) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (25 * (AILevel ** 2 / 64.0))

[State -1, Rolling Sphere]
type = ChangeState
value = 3300
triggerAll = AIlevel && RoundState=2 && numenemy && StateType != A && Power >= 3000
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2StateType != A && P2StateType != L
triggerAll = (P2BodyDist x = [0,60]) && (p2dist y = [ 0, 5])
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100, 101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(6) && Random < (500 * (AILevel ** 2 / 64.0))
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (25 * (AILevel ** 2 / 64.0))


;=============================================================
;Character created by Cruz
;Greetings from Mugen Archive!
;Finola~
;=============================================================
