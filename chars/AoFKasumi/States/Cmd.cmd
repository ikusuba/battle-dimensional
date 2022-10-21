;==============================================================================================
;=======================================<COMMAND FILE>=========================================
;==============================================================================================

;====================<BUTTON REMAPPING>====================

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;====================<DEFAULT VALUES>====================

[Defaults]
command.time = 15
command.buffer.time = 1

;====================<SINGLE BUTTON>====================

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

;==================<HOLD DIRECTION>==================

[Command]
name = "holdfwd"
command=/$F
time=1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time=1

[Command]
name = "holddown"
command = /$D
time = 1

;====================<HOLD BUTTON>====================

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holdstart"
command = /s
time = 1

;====================<DIRECTION>====================

[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "up"
command = U
time = 1

[Command]
name = "down"
command = D
time = 1

;====================<RELEASE DIR>====================

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

;====================<RELEASE BUTTON>====================

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

;====================<SUPER MOTIONS>===================
;----------------
;----------------LVL 3 Super
[Command]
name = "Sousei Kasane Ate Ryuukasumi"
command = ~D, DF, F, D, DF, F, x+y+z
time = 32
;----------------MAX Super 1
[Command]
name = "Chou Kasane Ate MAX"
command = ~D, DF, F, D, DF, F, x+y
time = 32
[Command]
name = "Chou Kasane Ate MAX"
command = ~D, DF, F, D, DF, F, y+z
time = 32
[Command]
name = "Chou Kasane Ate MAX"
command = ~D, DF, F, D, DF, F, x+z
time = 32

[Command]
name = "Shingan Kuzu OtoshiMAX"
command = ~D, DF, F, D, DB, B, x+y
time = 32
[Command]
name = "Shingan Kuzu OtoshiMAX"
command = ~D, DF, F, D, DB, B, y+z
time = 32
[Command]
name = "Shingan Kuzu OtoshiMAX"
command = ~D, DF, F, D, DB, B, x+z
time = 32

[Command]
name = "ShiranuiMAX"
command = ~D, DB, B, D, DB, B, x+y
time = 32
[Command]
name = "ShiranuiMAX"
command = ~D, DB, B, D, DB, B, y+z
time = 32
[Command]
name = "ShiranuiMAX"
command = ~D, DB, B, D, DB, B, x+z
time = 32

;Chou Kasane Ate
[Command]
name = "Chou Kasane Ate"
command = ~D, DF, F, D, DF, F, x
time = 32
[Command]
name = "Chou Kasane Ate"
command = ~D, DF, F, D, DF, F, y
time = 32
[Command]
name = "Chou Kasane Ate"
command = ~D, DF, F, D, DF, F, z
time = 32

;Shingan Kuzu Otoshi
[Command]
name = "Shingan Kuzu Otoshi"
command = ~D, DF, F, D, DB, B, x
time = 32
[Command]
name = "Shingan Kuzu Otoshi"
command = ~D, DF, F, D, DB, B, y
time = 32
[Command]
name = "Shingan Kuzu Otoshi"
command = ~D, DF, F, D, DB, B, z
time = 32

;Shiranui
[Command]
name = "Shiranui"
command = ~D, DB, B, D, DB, B, x
time = 32
[Command]
name = "Shiranui"
command = ~D, DB, B, D, DB, B, y
time = 32
[Command]
name = "Shiranui"
command = ~D, DB, B, D, DB, B, z
time = 32
;====================<SPECIAL MOTIONS>====================
;Kasane Ate
[Command]
name = "Kasane Ate1"
command = ~D, DF, F, x
time = 16
[Command]
name = "Kasane Ate2"
command = ~D, DF, F, y
time = 16
[Command]
name = "Kasane Ate3"
command = ~D, DF, F, z
time = 16

[Command]
name = "Kasane AteEX"
command = ~D, DF, F, x+y
time = 16
[Command]
name = "Kasane AteEX"
command = ~D, DF, F, y+z
time = 16
[Command]
name = "Kasane AteEX"
command = ~D, DF, F, x+z
time = 16

;Senkou Nagashi
[Command]
name = "Senkou Nagashi/Tatsumaki Souda1"
command = ~D, DB, B, x
time = 16
[Command]
name = "Senkou Nagashi/Tatsumaki Souda2"
command = ~D, DB, B, y
time = 16
[Command]
name = "Senkou Nagashi/Tatsumaki Souda3"
command = ~D, DB, B, z
time = 16

[Command]
name = "Senkou Nagashi/Tatsumaki SoudaEX"
command = ~D, DB, B, x+y
time = 16
[Command]
name = "Senkou Nagashi/Tatsumaki SoudaEX"
command = ~D, DB, B, y+z
time = 16
[Command]
name = "Senkou Nagashi/Tatsumaki SoudaEX"
command = ~D, DB, B, x+z
time = 16


;Atemi Nage
[Command]
name = "Atemi Nage1"
command = ~D, DF, F, a
time = 16
[Command]
name = "Atemi Nage2"
command = ~D, DF, F, b
time = 16
[Command]
name = "Atemi Nage3"
command = ~D, DF, F, c
time = 16

[Command]
name = "Atemi NageEX"
command = ~D, DF, F, a+b
time = 16
[Command]
name = "Atemi NageEX"
command = ~D, DF, F, b+c
time = 16
[Command]
name = "Atemi NageEX"
command = ~D, DF, F, a+c
time = 16

;Hakusan Tou
[Command]
name = "Hakusan Tou1"
command = ~D, DB, B, a
time = 16
[Command]
name = "Hakusan Tou2"
command = ~D, DB, B, b
time = 16
[Command]
name = "Hakusan Tou3"
command = ~D, DB, B, c
time = 16

[Command]
name = "Hakusan TouEX"
command = ~D, DB, B, a+b
time = 16
[Command]
name = "Hakusan TouEX"
command = ~D, DB, B, b+c
time = 16
[Command]
name = "Hakusan TouEX"
command = ~D, DB, B, a+c
time = 16
;----------------

[Command]
name = "412p"
command = ~B, DB, D, x
time = 16

[Command]
name = "412p"
command = ~B, DB, D, y
time = 16

[Command]
name = "412p"
command = ~B, DB, D, z
time = 16

[Command]
name = "412p"
command = ~B, DB, D, ~x
time = 16

[Command]
name = "412p"
command = ~B, DB, D, ~y
time = 16

[Command]
name = "412p"
command = ~B, DB, D, ~z
time = 16

[Command]
name = "412k"
command = ~B, DB, D, a
time = 16

[Command]
name = "412k"
command = ~B, DB, D, b
time = 16

[Command]
name=  "412k"
command = ~B, DB, D, c
time = 16

[Command]
name = "412k"
command = ~B, DB, D, ~a
time = 16

[Command]
name = "412k"
command = ~B, DB, D, ~b
time = 16

[Command]
name = "412k"
command = ~B, DB, D, ~c
time = 16

;====================<OTHER>====================

[Command]
name = "highjump"
command = $D, $U
time = 15
[Command]
name = "DU"
command = D, U
time = 18
[Command]
name = "DU"
command = DB, UF
time = 18
[Command]
name = "DU"
command = DF, UB
time = 18
[Command]
name = "DU"
command = $D, UF
time = 18
[Command]
name = "DU"
command = $D, UB
time = 18
;====================<DOUBLE TAP>====================

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;====================<2/3 BUTTON COMBINATION>====================

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = y+z
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

;==============================================================================================
;========================================<-1 STATES>===========================================
;==============================================================================================
[StateDef -1]

[State -1, Tick Fix]
type = CtrlSet
triggerAll = !ctrl
trigger1 = (StateNo = 52 || StateNo = 101 || StateNo = 5120) && !AnimTime
trigger2 = (StateNo = [200,499]) && !AnimTime && Anim != 251 
trigger3 = ((StateNo = [760,762]) || (StateNo = [700,715]) || (StateNo = [900,905])) && !AnimTime
trigger4 = (StateNo = 5001 || StateNo = 5011 || StateNo = 151 || StateNo = 153) && HitOver
value = 1

[State -1, CtrlSet For Helpers]
type = CtrlSet
trigger1 = IsHelper
value = 0

[State -1, Hit Count For Helpers]
type = ParentVarAdd
trigger1 = IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime
trigger1 = !(HitDefAttr = SCA, AT)
var(13) = 1

[State -1, Juggle Count For Helpers]
type = ParentVarAdd
trigger1 = IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime
trigger1 = !(HitDefAttr = SCA, AT)
var(15) = 1

[State -1, Roll Forward]
type = ChangeState
value = 710
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdfwd"
trigger2 = var(20) && var(4)

[State -1, Roll Backward]
type = ChangeState
value = 715
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdback"

[State -1, Dodge]
type = ChangeState
value = 700
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101]))

;--------------------------------------------------------------------------------------------------------------------------------------------

;LEVEL 3 SUPERS

;--------------------------------------------------------------------------------------------------------------------------------------------
[State -1, Sousei Kasane Ate Ryuukasumi]
type=ChangeState
value=3500
triggerall=!AILevel && RoundState=2 && StateType != A && !numhelper(3005) && !Numhelper(3505) && var(20) <= 60 && power >= 3000&&command ="Sousei Kasane Ate Ryuukasumi"
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
;--------------------------------------------------------------------------------------------------------------------------------------------

;LEVEL 2 SUPERS

;--------------------------------------------------------------------------------------------------------------------------------------------
[State -1, MAX Shiranui]
type = ChangeState
value = 3250
triggerall=!AILevel && RoundState=2 && StateType != A && var(20) <= 60 && power >= 2000&&command ="ShiranuiMAX"
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
trigger3=(stateno = [200,450]) && movecontact
;----------------------------------------------------------------------
[State -1, MAX Shingan Kuzu Otoshi]
type = ChangeState
value = 3150
triggerall=!AILevel && RoundState=2 && StateType != A && var(20) <= 60 && power >= 2000&&command ="Shingan Kuzu OtoshiMAX"
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
trigger3=(stateno = [200,450]) && movecontact
;----------------------------------------------------------------------
[State -1, Max Chou Kasane Ate]
type=ChangeState
value=3050
triggerall=!AILevel && RoundState=2 && StateType != A && !numhelper(3005) && !Numhelper(3055) && var(20) <= 60 && power >= 2000&&command ="Chou Kasane Ate MAX"
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)

;--------------------------------------------------------------------------------------------------------------------------------------------

;LEVEL 1 SUPERS

;--------------------------------------------------------------------------------------------------------------------------------------------
[State -1, Shiranui]
type = ChangeState
value = 3200
triggerall=!AILevel && RoundState=2 && (stateno!=[3100,3190]) && StateType != A && var(20) <= 60 && power >= 1000&&command ="Shiranui"
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
trigger3=(stateno = [200,450]) && movecontact
;--------------------------------------------------------------------------------------------------------------------------------------------
[State -1, Shingan Kuzu Otoshi]
type = ChangeState
value = 3100
triggerall=!AILevel && RoundState=2 && (stateno!=[3100,3190]) && StateType != A && var(20) <= 60 && power >= 1000&&command ="Shingan Kuzu Otoshi"
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
trigger3=(stateno = [200,450]) && movecontact
;----------------------------------------------------------------------
[State -1, Chou Kasane Ate]
type=ChangeState
value=3000
triggerall=!AILevel && RoundState=2 && stateno!=3000 && StateType != A && !numhelper(3005) && !Numhelper(3055) &&var(20) <= 60 && power >= 1000&&command ="Chou Kasane Ate"
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
;--------------------------------------------------------------------------------------------------------------------------------------------

;SPECIAL MOTIONS

;--------------------------------------------------------------------------------------------------------------------------------------------

[State -1, Kasane Ate]
type = ChangeState
value=Ifelse((command="Kasane AteEX")&&var(20) <= 60&&power>=500,1010,1000)
triggerall=!AILevel && RoundState=2 && StateType != A && Ifelse(!var(20),!Numhelper(1005),Numhelper(1005)<8)
triggerall=(var(45)=0&&(command="Kasane Ate1")||(command="Kasane Ate2")||(command="Kasane Ate3")||(command="Kasane AteEX"&&power>=500&&var(20) <= 60))
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)&&AnimElemTime(7) > 2
trigger3=(stateno = [200,450]) && movecontact && (command="Kasane AteEX"&&power>=500&&var(20) <= 60)

[State -1, Aerial Kasane Ate]
type = ChangeState
value=Ifelse(command="Kasane AteEX"&&var(20) <= 60&&power>=500,1060,1050)
triggerall=!AILevel && RoundState=2  && StateType = A && Pos y <= -30 && !Numhelper(1055) && Ifelse(!var(20),!Numhelper(1055),Numhelper(1055)<8)
triggerall=!AILevel && RoundState=2 && StateType = A && Pos y <= -30 && ((command="Kasane Ate1"|command="Kasane Ate2"|command="Kasane Ate3")||(command="Kasane AteEX"&&power>=500&&var(20) <= 60))
trigger1=ctrl
trigger2=var(5)
trigger3=(stateno=[600,650])&&movehit

[State -1, Tatsumaki Souda]
type = ChangeState
value=Ifelse(command="Senkou Nagashi/Tatsumaki SoudaEX" &&var(20) <= 60&&power>=500,1250,1200)
triggerall = (p2bodydist X <= 22) && (p2statetype != A)
triggerall=!AILevel && RoundState=2 && StateType != A && ((command="Senkou Nagashi/Tatsumaki Souda1"|command="Senkou Nagashi/Tatsumaki Souda2"|command="Senkou Nagashi/Tatsumaki Souda3")||(command="Senkou Nagashi/Tatsumaki SoudaEX"&&power>=500&&var(20) <= 60))
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)
trigger3=(stateno = [200,450]) && movecontact && (command="Senkou Nagashi/Tatsumaki SoudaEX"&&power>=500&&var(20) <= 60)

[State -1, Senkou Nagashi]
type = ChangeState
value=Ifelse(command="Senkou Nagashi/Tatsumaki SoudaEX" &&var(20) <= 60&&power>=500,1150,1100)
triggerall=!AILevel && RoundState=2 && StateType != A && ((command="Senkou Nagashi/Tatsumaki Souda1"|command="Senkou Nagashi/Tatsumaki Souda2"|command="Senkou Nagashi/Tatsumaki Souda3")||(command="Senkou Nagashi/Tatsumaki SoudaEX"&&power>=500&&var(20) <= 60))
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)
trigger3=(stateno = [200,450]) && movecontact && (command="Senkou Nagashi/Tatsumaki SoudaEX"&&power>=500&&var(20) <= 60)

[State -1, Atemi Nage]
type = ChangeState
value=Ifelse(command="Atemi NageEX" &&var(20) <= 60&&power>=500,1350,1300)
triggerall=!AILevel && RoundState=2 && StateType != A && ((command="Atemi Nage1"|command="Atemi Nage2"|command="Atemi Nage3")||(command="Atemi NageEX"&&power>=500&&var(20) <= 60))
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)
trigger3=(stateno = [200,450]) && movecontact && (command="Senkou Nagashi/Tatsumaki SoudaEX"&&power>=500&&var(20) <= 60)

[State -1, Hakusan Tou]
type = ChangeState
value=Ifelse(command="Hakusan TouEX" &&var(20) <= 60&&power>=500,1450,1400)
triggerall=!AILevel && RoundState=2 && StateType != A && ((command="Hakusan Tou1"|command="Hakusan Tou2"|command="Hakusan Tou3")||(command="Hakusan TouEX"&&power>=500&&var(20) <= 60))
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)
trigger3=(stateno = [200,450]) && movecontact && (command="Senkou Nagashi/Tatsumaki SoudaEX"&&power>=500&&var(20) <= 60)

[State -1]
type = Varset
var(2) = 1
trigger1 = (stateno = 1100) && (time = [20,30]) && (command="Senkou Nagashi/Tatsumaki Souda1"|command="Senkou Nagashi/Tatsumaki Souda2"|command="Senkou Nagashi/Tatsumaki Souda3")
trigger2 = (stateno = 1150) && (time = [20,30]) && (command="Senkou Nagashi/Tatsumaki Souda1"|command="Senkou Nagashi/Tatsumaki Souda2"|command="Senkou Nagashi/Tatsumaki Souda3"|command="Senkou Nagashi/Tatsumaki SoudaEX")

[State -1]
type = Varset
var(2) = 2
trigger1 = (stateno = 1110) && (time = [3,23]) && (command="Senkou Nagashi/Tatsumaki Souda1"|command="Senkou Nagashi/Tatsumaki Souda2"|command="Senkou Nagashi/Tatsumaki Souda3")
trigger2 = (stateno = 1160) && (time = [3,23]) && (command="Senkou Nagashi/Tatsumaki Souda1"|command="Senkou Nagashi/Tatsumaki Souda2"|command="Senkou Nagashi/Tatsumaki Souda3"|command="Senkou Nagashi/Tatsumaki SoudaEX")


[State -1, Zero Counter]
type = ChangeState
value = 750
triggerAll = !AILevel
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = command = "412p" || command = "412k"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20)

[State -1, Custom Combo]
type = ChangeState
value = ifElse(StateType = A, 905, 900)
triggerAll = !AILevel
trigger1 = command = "c+z"&&!var(54)
trigger1 = RoundState = 2
trigger1 = power >= 1000 && !var(20)
trigger1 = ctrl || StateNo = 52 || (StateNo = [100,101])
trigger1 = !var(41)

[State -1, MAX Mode]
type = ChangeState
value = 770
triggerall = command = "c+z"&&var(54)
triggerall = RoundState = 2 && StateType != A
triggerall = var(53) <= 0 && Power >= 1000
trigger1 = ctrl || (Stateno = [100,101])

[State -1, Power Charging]
type = ChangeState
value = 730
triggerAll = !AILevel
trigger1 = command = "holdb" && command = "holdy"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power < const(data.power) && power < PowerMax && !var(20)
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Dash Forward/Run]
type = ChangeState
value = 102
triggerAll = !AILevel
trigger1 = command = "FF"
trigger1 = roundstate = 2 && StateType = S
trigger1 = ctrl

[State -1, Dash Backward]
type = ChangeState
value = 105
triggerAll = !AILevel
trigger1 = command = "BB"
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Throw]
type = ChangeState
value = 800
triggerAll = !AILevel
trigger1 = (command = "holdfwd" || command = "holdback") && command = "pp" 
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Throw]
type = ChangeState
value = 800
triggerAll = !AILevel
trigger1 = (command = "holdfwd" || command = "holdback") && command = "kk"
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Super Jump]
type = ChangeState
value = 123
triggerall= !AILevel && var(55)=2 && roundstate=2 && statetype != A
trigger1 = ctrl && command = "DU" 
trigger2 = stateno=420 && movehit && command = "holdup"
;---------------------------------------------------------------------------
[State -1, Hiji Ate]
type=ChangeState
value=228
triggerall=!AILevel&& roundstate=2 && statetype != A&&command != "holddown"&&command = "holdfwd"&& command="x"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=(stateno = 250 && anim = 255)&&movecontact
trigger4=(stateno = [210,220])&&movecontact
trigger5=((stateno=[200,210])||(stateno=[230,240])||(stateno=[400,410])||(stateno=[440,440]))&&movecontact&&var(55)
;--------------------------------------------------------------------------
[State -1, Standing Low Punch]
type=ChangeState
value=200
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="x"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
;---------------------------------------------------------------------------
[State -1, Standing Medium Punch]
type=ChangeState
value=210
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="y"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=((stateno=[200,209])||(stateno=[230,239])||(stateno=[400,409])||(stateno=[430,439]))&&movecontact&&var(55)
;---------------------------------------------------------------------------
[State -1, Standing High Punch]
type=ChangeState
value=220
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="z"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=((stateno=[200,219])||(stateno=[230,240])||(stateno=[400,419])||(stateno=[430,449]))&&movecontact&&var(55)
;---------------------------------------------------------------------------
[State -1, Standing Low Kick]
type=ChangeState
value=230
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="a"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=(stateno=[200,209])&&movecontact&&var(55)
;---------------------------------------------------------------------------
[State -1, Standing Medium Kick]
type=ChangeState
value=240
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="b"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=((stateno=[200,219])||(stateno=[230,239])||(stateno=[400,419])||(stateno=[430,439]))&&movecontact&&var(55)
;---------------------------------------------------------------------------
[State -1, Standing High Kick]
type=ChangeState
value=250
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="c"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=((stateno=[200,220])||(stateno=[230,240])||(stateno=[400,449]))&&movecontact&&var(55)
;---------------------------------------------------------------------------
[State -1, Crouching Low Punch]
type=ChangeState
value=400
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command="holddown"&& command="x"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
;---------------------------------------------------------------------------
[State -1, Crouching Medium Punch]
type=ChangeState
value=410
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command= "holddown"&& command="y"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=((stateno=[200,209])||(stateno=[230,239])||(stateno=[400,409])||(stateno=[430,439]))&&movecontact&&var(55)
;---------------------------------------------------------------------------
[State -1, Crouching High Punch]
type=ChangeState
value=420
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command="holddown"&& command="z"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=((stateno=[200,219])||(stateno=[230,249])||(stateno=[400,419])||(stateno=[430,449]))&&movecontact&&var(55)
;---------------------------------------------------------------------------
[State -1, Crouching Low Kick]
type=ChangeState
value=430
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command="holddown"&& command="a"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=((stateno=[200,209])||(stateno=[400,409]))&&movecontact&&var(55)
;---------------------------------------------------------------------------
[State -1, Crouching Medium Kick]
type=ChangeState
value=440
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command="holddown"&& command="b"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=((stateno=[200,219])||(stateno=[230,239])||(stateno=[400,419])||(stateno=[430,439]))&&movecontact&&var(55)
;---------------------------------------------------------------------------
[State -1, Crouching High Kick]
type=ChangeState
value=450
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command="holddown"&& command="c"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=((stateno=[200,220])||(stateno=[230,240])||(stateno=[400,449]))&&movecontact&&var(55)
;---------------------------------------------------------------------------
[State -1, Jumping Low Punch]
type=ChangeState
value=600
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="x"
trigger1=ctrl
trigger2=var(4)
;---------------------------------------------------------------------------
[State -1, Jumping Medium Punch]
type=ChangeState
value=610
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="y"
trigger1=ctrl
trigger2=var(4)
trigger3=((stateno=[600,609])||(stateno=[630,639]))&&movecontact&&var(55)=2
;---------------------------------------------------------------------------
[State -1, Jumping High Punch]
type=ChangeState
value=620
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="z"
trigger1=ctrl
trigger2=var(4)
trigger3=((stateno=[600,619])||(stateno=[630,649]))&&movecontact&&var(55)=2
;---------------------------------------------------------------------------
[State -1, Jumping Low Kick]
type=ChangeState
value=630
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="a"
trigger1=ctrl
trigger2=var(4)
trigger3=(stateno=[600,609])&&movecontact&&var(55)=2
;---------------------------------------------------------------------------
[State -1, Jumping Medium Kick]
type=ChangeState
value=640
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="b"
trigger1=ctrl
trigger2=var(4)
trigger3=((stateno=[600,619])||(stateno=[630,639]))&&movecontact&&var(55)=2
;---------------------------------------------------------------------------
[State -1, Jumping High Kick]
type=ChangeState
value=650
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="c"
trigger1=ctrl
trigger2=var(4)
trigger3=(stateno=[600,649])&&movecontact&&var(55)=2
;---------------------------------------------------------------------------
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
triggerall = !AILevel&&Roundstate=2&&StateType != A
triggerall = StateNo != [200,699]
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(5)


