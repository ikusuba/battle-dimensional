;-| AI |------------------------------------------------------
[Command]
name = "CPU1"
command = U, D, F
time = 1

[Command]
name = "CPU2"
command = U, B, F
time = 1

[Command]
name = "CPU3"
command = U, D, D
time = 1

[Command]
name = "CPU4"
command = F, B, U
time = 1

[Command]
name = "CPU5"
command = U, F, U, B
time = 1

[Command]
name = "CPU6"
command = U, D, B
time = 1

[Command]
name = "CPU7"
command = F, F, B
time = 1

[Command]
name = "CPU8"
command = U, D, U
time = 1

[Command]
name = "CPU9"
command = F, B, B
time = 1

[Command]
name = "CPU10"
command = F, F, B, B
time = 1

[Command]
name = "CPU11"
command = U, U, F
time = 1

[Command]
name = "CPU12"
command = U, B, B
time = 1

[Command]
name = "CPU13"
command = U, B, F, F
time = 1

[Command]
name = "CPU14"
command = U, F, B, U
time = 1

[Command]
name = "CPU15"
command = U, B, F, U
time = 1

[Command]
name = "CPU16"
command = U, B, B, B
time = 1

[Command]
name = "CPU17"
command = U, D, B, F
time = 1

[Command]
name = "CPU18"
command = U, D, B, D
time = 1

[Command]
name = "CPU19"
command = U, D, F, U
time = 1

[Command]
name = "CPU20"
command = U, D, U, B
time = 1

[Command]
name = "CPU21"
command = U, D, F, F
time = 1

[Command]
name = "CPU22"
command = F, F, F, F
time = 1

[Command]
name = "CPU23"
command = U, U, U, D
time = 1

[Command]
name = "CPU24"
command = B, B, B
time = 1

[Command]
name = "CPU25"
command = D, D, D, D
time = 1

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
name = "Fuharenjin"
command = ~D, DF, F, D, DF, F, x
time = 32

[Command]
name = "Fuharenjin"
command = ~D, DF, F, D, DF, F, y
time = 32

[Command]
name = "Fuharenjin"
command = ~D, DF, F, D, DF, F, z
time = 32


[Command]
name = "Ultra"
command = ~D, DF, F, D, DF, F, x+y+z
time = 32

;-| Special Motions |------------------------------------------------------
[Command]
name = "TornadoThrow"
command = ~D, B, x
time = 15

[Command]
name = "TornadoThrow"
command = ~D, B, y
time = 15

[Command]
name = "TornadoThrow"
command = ~D, B, z
time = 15


[Command]
name = "WheelKick"
command = ~D, B, a
time = 15

[Command]
name = "WheelKick2"
command = ~D, B, b
time = 15

[Command]
name = "WheelKick2"
command = ~D, B, c
time = 15


[Command]
name = "MarseillesRoll"
command = ~D, F, a
time = 15

[Command]
name = "MarseillesRoll"
command = ~D, F, b
time = 15

[Command]
name = "MarseillesRoll"
command = ~D, F, c
time = 15


[Command]
name = "ChangeOfDirection"
command = ~D, F, x
time = 15

[Command]
name = "ChangeOfDirection"
command = ~D, F, y
time = 15

[Command]
name = "ChangeOfDirection"
command = ~D, F, z
time = 15



[Command]
name = "ChangeOfDirection2"
command = F+x

[Command]
name = "ChangeOfDirection2"
command = F+y

[Command]
name = "ChangeOfDirection2"
command = F+z



[Command]
name = "FallingSky"
command = ~F, DF, F, x
time = 15

[Command]
name = "FallingSky"
command = ~F, DF, F, y
time = 15

[Command]
name = "FallingSky"
command = ~F, DF, F, z
time = 15



[Command]
name = "412p" ;Zero Counter
command = ~B, DB, D, x
time = 16

[Command]
name = "412p" ;Zero Counter
command = ~B, DB, D, y
time = 16

[Command]
name = "412p" ;Zero Counter
command = ~B, DB, D, z
time = 16

[Command]
name = "412p" ;Zero Counter
command = ~B, DB, D, ~x
time = 16

[Command]
name = "412p" ;Zero Counter
command = ~B, DB, D, ~y
time = 16

[Command]
name = "412p" ;Zero Counter
command = ~B, DB, D, ~z
time = 16

[Command]
name = "412k" ;Zero Counter
command = ~B, DB, D, a
time = 16

[Command]
name = "412k" ;Zero Counter
command = ~B, DB, D, b
time = 16

[Command]
name=  "412k" ;Zero Counter
command = ~B, DB, D, c
time = 16

[Command]
name = "412k" ;Zero Counter
command = ~B, DB, D, ~a
time = 16

[Command]
name = "412k" ;Zero Counter
command = ~B, DB, D, ~b
time = 16

[Command]
name = "412k" ;Zero Counter
command = ~B, DB, D, ~c
time = 16

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+x
time = 1

[Command]
name = "pp"
command = x+y
time = 1

[Command]
name = "pp"
command = x+z
time = 1

[Command]
name = "pp"
command = y+z
time = 1

[Command]
name = "kk"
command = a+b
time = 1

[Command]
name = "kk"
command = a+c
time = 1

[Command]
name = "kk"
command = b+c
time = 1

[Command]
name = "a+x"
command = a+x
time=1

[Command]
name = "b+y"
command = b+y
time = 1

[Command]
name = "c+z"
command = c+z
time = 1

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

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
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

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_s"
command = /s
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

[Command]
name = "rlsy"
command = ~y
time = 1

[Command]
name = "rlsz"
command = ~z
time = 1

[Command]
name = "rlsa"
command = ~a
time = 1

[Command]
name = "rlsb"
command = ~b
time = 1

[Command]
name = "rlsc"
command = ~c
time = 1
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

[State -1, Kung Fu Barrage]
type = ChangeState
value = 3100
triggerall = var(59) = 0
triggerall = command = "Ultra"
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 3000, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Kung Fu Barrage]
type = ChangeState
value = 3000
triggerall = var(59) = 0
triggerall = command = "Fuharenjin"
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

;---------------------------------------------------------------------------
;Tornado Throw
[State -1, Tornado Throw]
type = ChangeState
value = 1000
triggerall = var(59) = 0
triggerall = command = "TornadoThrow"
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

;---------------------------------------------------------------------------
;Falling Sky
[State -1, Falling Sky]
type = ChangeState
value = 1300
triggerall = var(59) = 0
triggerall = command = "FallingSky"
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

;---------------------------------------------------------------------------
;Wheel Kick
[State -1, WheelKick]
type = ChangeState
value = 1200
triggerall = var(59) = 0
triggerall = command = "WheelKick"
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, WheelKick]
type = ChangeState
value = 1201
triggerall = var(59) = 0
triggerall = command = "WheelKick2"
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

;---------------------------------------------------------------------------
;Change Of Direction
[State -1, ChangeOfDirection]
type = ChangeState
value = 1100
triggerall = var(59) = 0
triggerall = command = "ChangeOfDirection"
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

;---------------------------------------------------------------------------
;Marseilles Roll
[State -1, MarseillesRoll]
type = ChangeState
value = 710
triggerall = var(59) = 0
triggerall = command = "MarseillesRoll"
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

;---------------------------------------------------------------------------
[State -1, Power Charge]
type = ChangeState
value = 730
triggerall = var(59) = 0
trigger1 = command = "hold_b" && command = "hold_y"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power < const(data.power) && power < PowerMax && !var(20)
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Dodge]
type = ChangeState
value = 700
triggerall = var(59) = 0
triggerall = command = "a+x"
triggerall = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101]))

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) = 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Dodge]
type = ChangeState
value = 800
triggerall = var(59) = 0
triggerall = command = "pp"
triggerall = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101]))

;--------------------------------------------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])
trigger2= stateno = 200 && movecontact

[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command != "holddown"  
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2= stateno = 200 && movecontact

[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = var(59) = 0
triggerall = command = "z"
triggerall = command != "holddown" 
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2= stateno = 210 && movecontact

[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])

[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])

[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) = 0
triggerAll = command = "holddown" && command = "x"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2= stateno = 400 && movecontact

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = var(59) = 0
triggerAll = command = "holddown" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = var(59) = 0
triggerAll = command = "holddown" && command = "z"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59) = 0
triggerAll = command = "holddown" && command = "a"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2= stateno = 430 && movecontact

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = var(59) = 0
triggerAll = command = "holddown" && command = "b"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = var(59) = 0
triggerAll = command = "holddown" && command = "c"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])

;---------------------------------------------------------------------------
[State -1, DDBB]
type = ChangeState
value = 1101
triggerall = var(59) = 0
triggerall = (command="x"||command="y"||command="z")&&command="holdfwd"
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = stateno = 1100 && movecontact

[State -1, DDBB]
type = ChangeState
value = 1102
triggerall = var(59) = 0
triggerall = (command="a"||command="b"||command="c")&&command="holdfwd"
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = stateno = 1100 && movecontact

[State -1, DDBB]
type = ChangeState
value = 1105
triggerall = var(59) = 0
triggerall = (command="x"||command="y"||command="z")&&command="holdfwd"
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = stateno = 1101 && movecontact

[State -1, DDBB]
type = ChangeState
value = 1105
triggerall = var(59) = 0
triggerall = (command="a"||command="b"||command="c")&&command="holdfwd"
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = stateno = 1102 && movecontact

[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = var(59) = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = var(59) = 0
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(59) = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = var(59) = 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = var(59) = 0
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59) = 0
triggerall = command = "s"
triggerall = StateType != A
triggerall = StateNo != [200,699]
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(5)


;==============================================================================================
;===========================================<A.I>==============================================
;==============================================================================================
;= [ A.I ] =======================================================
[State -1, AI]
type = VarSet
triggerall = var(59) != 1
triggerall = RoundState != 3
trigger1  = command = "CPU1"
trigger2  = command = "CPU2"
trigger3  = command = "CPU3"
trigger4  = command = "CPU4"
trigger5  = command = "CPU5"
trigger6  = command = "CPU6"
trigger7  = command = "CPU7"
trigger8  = command = "CPU8"
trigger9  = command = "CPU9"
trigger10  = command = "CPU10"
trigger11  = command = "CPU11"
trigger12  = command = "CPU12"
trigger13  = command = "CPU13"
trigger14  = command = "CPU14"
trigger15  = command = "CPU15"
trigger16  = command = "CPU16"
trigger17  = command = "CPU17"
trigger18  = command = "CPU18"
trigger19  = command = "CPU19"
trigger20  = command = "CPU20"
trigger21  = command = "CPU21"
trigger22  = command = "CPU22"
trigger23  = command = "CPU23"
trigger24  = command = "CPU24"
trigger25  = command = "CPU25"
var(59) = 1

[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) = 1
trigger1 = statetype != A && roundstate = 2 && alive && ctrl && random < 100
trigger1 = (stateno != [100, 105]) && enemynear, movetype != A && p2dist x >= 150

[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) = 1
triggerall = roundstate = 2 && alive && statetype != A
triggerall = stateno = 100 && p2dist x <= 150
trigger1 = anim = 100 && time >= 1

[State -1]
Type = Changestate
triggerall = var(59) = 1
triggerall = roundstate = 2 && alive
triggerall = Inguarddist
triggerall = ctrl
trigger1 = random < 500
value = 120

[State -1, Dodge]
type = ChangeState
value = 700
triggerall = var(59) = 1
triggerall = roundstate = 2 && alive && random < 100 && statetype != A
triggerall = (facing = 1 && (enemynear,facing = -1)) || (facing = -1 && (enemynear,facing = 1))
triggerall = p2statetype != A && p2statetype != L
triggerall = p2dist x <= 130 && p2movetype = A
trigger1 = ctrl

[State -1, Roll Forward]
type = ChangeState
value = 700
triggerall = var(59) = 1
triggerall = roundstate = 2 && alive && random < 100 && statetype != A
triggerall = p2statetype != A && p2statetype != L
triggerall = p2dist x <= 130 && p2movetype = A
trigger1 = ctrl

[State -1, Roll Forward]
type = ChangeState
value = 700
triggerall = var(59) = 1
triggerall = roundstate = 2 && alive && random < 300 && statetype != A && backedgedist <= 100
triggerall = p2statetype != A && p2statetype != L && p2dist x <= 80
trigger1 = ctrl

[State -1, Power Charge]
type = ChangeState
value = 730
triggerall = var(59) = 1
trigger1= numenemy
trigger1= roundstate = 2 && alive && statetype != A && ctrl
trigger1= power < powermax
trigger1= random < 50 && !inguarddist && p2movetype != A && p2dist x >= 160

;---------------------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(59) = 1
triggerall = roundState = 2 && alive && random < 200 && statetype != A
triggerall = p2statetype != A && p2statetype != L && p2statetype != C && p2dist x <= 70
trigger1 = ctrl

[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = var(59) = 1
triggerall = roundState = 2 && alive && random < 200 && statetype != A
triggerall = p2statetype != A && p2statetype != L && p2statetype != C && p2dist x <= 130 && p2dist x >= 80
trigger1 = ctrl

[State -1, Stand Strong Punch]
type = ChangeState
value = 221
triggerall = var(59) = 1
triggerall = roundState = 2 && alive && random < 200 && statetype != A
triggerall = p2statetype != A && p2statetype != L && p2dist x <= 60
trigger1 = ctrl

[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(59) = 1
triggerall = roundState = 2 && alive && random < 200 && statetype != A
triggerall = p2statetype != A && p2statetype != L && p2dist x <= 110
trigger1 = ctrl

[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = var(59) = 1
triggerall = roundState = 2 && alive && random < 200 && statetype != A
triggerall = p2statetype != A && p2statetype != L && p2dist x <= 130
trigger1 = ctrl

[State -1, Tiger Thrust]
type = Changestate
value = 250
triggerall = var(59) = 1
triggerall = roundState = 2 && alive && random < 200 && statetype != A && p2movetype = H
triggerall = p2statetype != A && p2statetype != L && p2statetype != C && p2dist x <= 80
trigger1 = ctrl
trigger2 = (stateno = 200 || stateno = 210 || stateno = 221 || stateno = 230 || stateno = 240) && movecontact && p2movetype = H

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59) = 1
triggerall = roundState = 2 && alive && random < 300 && statetype != A
triggerall = p2statetype != A && p2statetype != L && p2dist x <= 100
trigger1 = ctrl

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = var(59) = 1
triggerall = roundState = 2 && alive && random < 300 && statetype != A
triggerall = p2statetype != A && p2statetype != L && p2dist x <= 120 && p2dist x >= 100
trigger1 = ctrl

[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = var(59) = 1
triggerall = roundState = 2 && alive && random < 300 && statetype != A
triggerall = p2statetype != A && p2statetype != L && p2dist x <= 120 && p2dist x >= 100
trigger1 = ctrl

[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = var(59) = 1
triggerall = roundState = 2 && alive && random < 200 && statetype = A
triggerall = p2statetype = A && p2statetype != L && p2dist x <= 120 && p2dist x >= -100 && p2dist x <= 0
trigger1 = ctrl

[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = var(59) = 1
triggerall = roundState = 2 && alive && random < 200 && statetype = A
triggerall = p2statetype != A && p2statetype != L && p2dist x <= 120 && p2dist x <= 100 && p2dist x >= 20
trigger1 = ctrl


;---------------------------------------------------
[State -1, throw]
type=changestate
value=1000
triggerall= var(59) = 1 && numenemy && var(45)=0
triggerall= roundstate=2 && statetype=S && stateno!=100 && ctrl
triggerall= p2statetype!=A && p2statetype!=L && p2movetype!=H
trigger1= (p2bodydist x=[0,20]) && (p2bodydist y=[-25,25]) && random<250
trigger2= (p2stateno!=[120,155]) && (p2bodydist x=[0,26]) && (p2bodydist y=[-25,25]) && random<500

;---------------------------------------------------
[State -1, RIMON]
type=changestate
value=1100
triggerall= var(59) = 1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= !var(16) && (var(15)<1 || var(20))
triggerall= p2statetype!=L && (p2dist y=[-80,32])
triggerall= ((p2bodydist x=[-48,48]) && p2statetype!=A) || ((p2bodydist x=[-140,140]) && p2statetype=A)
trigger1= (ctrl || stateno=52 || (stateno=[100,101])) && random<25
trigger2= var(6) && movehit && random<100
trigger2= enemynear,gethitvar(hittime)>=3
trigger3= (stateno=5120 || stateno=5201) && !animtime && random<500

[State -1, RIMON]
type=changestate
value=1200
triggerall= var(59) = 1 && numenemy && var(45)=1
triggerall= roundstate=2 && statetype=A
triggerall= p2statetype!=A && p2statetype!=L
triggerall= p2dist x>=0 && p2bodydist x<=32 && p2dist y=0
triggerall= (enemynear,hitshakeover || var(20)) && !(enemynear,stateno=[150,155])
trigger1= (ctrl || stateno=52 || (stateno=[100,101]))
trigger1= random<ifelse((p2stateno=[120,140]), 500, 250)

[State -1, RIMON]
type=changestate
value=1201
triggerall= var(59) = 1 && numenemy && var(45)=0
triggerall= roundstate=2 && statetype=S
triggerall= (var(3)!=[1,2]) && pos y<=-80
triggerall= !var(16) && (var(15)<1 || var(20))
triggerall= (p2bodydist x=[-8,80]) && p2statetype!=A && p2stateno!=5120
trigger1= ctrl
trigger1= random<ifelse(p2stateno=40, 200, ifelse(p2statetype=C, 100, 50))

[State -1, RIMON]
type=changestate
value=1000
triggerall= var(59) = 1 && numenemy && var(45)=1
triggerall= roundstate=2 && statetype!=A
triggerall= !var(16) && (var(15)<1 || var(20))
triggerall= (enemynear,movetype!=A) || (enemynear,stateno=[200,499])
triggerall= (p2bodydist x=[-8,250]) && p2bodydist y>=-90 && p2statetype!=L
trigger1= (ctrl || stateno=52 || (stateno=[100,101]))
trigger1= p2bodydist x>=170 && random<33
trigger2= var(6) && movehit && random<100
trigger2= enemynear,gethitvar(hittime)>=15

[State -1, RIMON]
type=changestate
value=1201
triggerall= var(59) = 1 && numenemy && var(45)=0
triggerall= roundstate=2 && statetype!=A
triggerall= !var(16) && (var(15)<1 || var(20))
triggerall= (enemynear,movetype!=A) || (enemynear,stateno=[200,499])
triggerall= (p2bodydist x=[-8,196]) && p2statetype!=A && (p2statetype!=L || p2stateno=5120)
trigger1= (ctrl || stateno=52 || (stateno=[100,101]))
trigger1= p2bodydist x>=160 && random<50
trigger2= (ctrl || stateno=52 || (stateno=[100,101]))
trigger2= (enemynear,stateno=5120 || enemynear,stateno=5201) && (enemynear,animtime=-18) && random<250
trigger3= var(6) && movehit && random<100
trigger3= enemynear,gethitvar(hittime)>=6

[State -1, KNEE]
type=changestate
value=1000
triggerall= var(59) = 1 && numenemy && var(45)=0
triggerall= roundstate=2 && statetype!=A
triggerall= !var(16) && (var(15)<1 || var(20))
triggerall= p2bodydist x>=10 && (p2statetype!=L || p2stateno=5120)
trigger1= (ctrl || stateno=52 || (stateno=[100,101]))
trigger1= (enemynear,stateno=5120 || enemynear,stateno=5201) && (enemynear,time=1) && random<333

[State -1, KNEE]
type=changestate
value= 1000
triggerall= var(59) = 1 && numenemy && var(45)=0
triggerall= roundstate=2 && statetype!=A
triggerall= !var(16) && (var(15)<1 || var(20))
triggerall= !(enemynear,ctrl) && !inguarddist
triggerall= (p2bodydist x=[90,196]) && p2statetype=S
trigger1= (ctrl || stateno=52 || (stateno=[100,101]))
trigger1= (enemynear,animtime<=-32) && random<50

[State -1, SUPER]
type=changestate
value=3000
triggerall= var(59) = 1 && numenemy && var(45)=1
triggerall= roundstate=2 && statetype!=A
triggerall= power>=1000 && var(20)<=60 && !var(44)
triggerall= !var(16) && (var(15)<1 || var(20) || (stateno=[1000,4999]))
triggerall= !(enemynear,ctrl) && ((enemynear,stateno!=[120,155]) || enemynear,statetype=A)
triggerall= (enemynear,movetype!=A) || (enemynear,stateno=[200,1999])
triggerall= p2statetype!=L && p2bodydist x>=8 && p2dist y>=-64
trigger1= (ctrl || stateno=52 || (stateno=[100,101])) && random<100
trigger2= var(7) && movehit && random<ifelse((var(20)=[1,30]), 200, 50)
trigger2= enemynear,gethitvar(hittime)>=9
trigger3= var(8) && random<100
trigger3= stateno=3001 && animelemtime(9)<0
trigger3= enemynear,gethitvar(hittime)>=9

[State -1, Ultra]
type=changestate
value=3100
triggerall= var(59) = 1 && numenemy && var(45)=0
triggerall= roundstate=2 && statetype!=A
triggerall= power>=3000 && var(20)<=60
triggerall= !var(16) && (var(15)<1 || var(20) || (stateno=[1000,4999]))
triggerall= (enemynear,movetype!=A) || (enemynear,stateno=[200,499])
triggerall= !(enemynear,ctrl) && p2statetype!=A && p2statetype!=L
triggerall= (p2bodydist x=[-128,128]) && (p2dist y=[-32,32])
trigger1= (ctrl || stateno=52 || (stateno=[100,101])) && random<100
trigger2= var(7) && movehit && random<ifelse((var(20)=[1,30]), 200, 50)
trigger2= enemynear,gethitvar(hittime)>=11

[State -1, ULTRA]
type=changestate
value=3000
triggerall= var(59) = 1 && numenemy
triggerall= roundstate=2 && statetype!=A
triggerall= power>=2000 && var(20)<=60
triggerall= !var(16) && (var(15)<1 || var(20) || (stateno=[1000,4999]))
triggerall= !(enemynear,ctrl) && ((enemynear,stateno!=[120,155]) || enemynear,statetype=A)
triggerall= (p2bodydist x=[-60,60]) && (p2dist y=[-32,32])
triggerall= p2statetype!=A && p2statetype!=L && p2movetype!=A
trigger1= (ctrl || stateno=52 || (stateno=[100,101])) && random<100
trigger2= var(7) && movehit && random<ifelse((var(20)=[1,30]), 200, 50)
trigger2= enemynear,gethitvar(hittime)>=4

