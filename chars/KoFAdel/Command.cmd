
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
name = "start"
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

[Command]
name = "holdp"
command = /x
time = 1

[Command]
name = "holdp"
command = /y
time = 1

[Command]
name = "holdp"
command = /z
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

;====================<SUPER MOTIONS>====================

[Command]
name = "GrosseKronprinz"
command = ~F, B, DB, D, DF, F, x
time = 32

[Command]
name = "GrosseKronprinz"
command = ~F, B, DB, D, DF, F, y
time = 32

[Command]
name = "GrosseKronprinz"
command = ~F, B, DB, D, DF, F, z
time = 32

[Command]
name = "GrosseSklaven"
command = ~D, DF, F, D, DB, B, x+y
time = 32

[Command]
name = "GrosseSklaven"
command = ~D, DF, F, D, DB, B, y+z
time = 32

[Command]
name = "GrosseSklaven"
command = ~D, DF, F, D, DB, B, x+z
time = 32

[Command]
name = "GrosseKreisL"
command = ~D, DF, F, D, DF, F, a
time = 32

[Command]
name = "GrosseKreisM"
command = ~D, DF, F, D, DF, F, b
time = 32

[Command]
name = "GrosseKreis2"
command = ~D, DF, F, D, DF, F, c
time = 32

[Command]
name = "HimelKreis"
command = ~D, DF, F, D, DF, F, a
time = 32

[Command]
name = "HimelKreis"
command = ~D, DF, F, D, DF, F, b
time = 32

[Command]
name = "MAXGrosseKreis"
command = ~D, DF, F, D, DF, F, a+b
time = 32

[Command]
name = "MAXGrosseKreis"
command = ~D, DF, F, D, DF, F, a+c
time = 32

[Command]
name = "MAXGrosseKreis"
command = ~D, DF, F, D, DF, F, b+c
time = 32

;====================<SPECIAL MOTIONS>====================

[Command]
name = "GrosseKicken"
command = ~D, DF, F, a
time = 16

[Command]
name = "GrosseKicken"
command = ~D, DF, F, b
time = 16

[Command]
name = "GrosseKicken"
command = ~D, DF, F, c
time = 16

[Command]
name =  "RiseKicken1"
command = ~D, DF, F, a

[Command]
name =  "RiseKicken2"
command = ~D, DF, F, b

[Command]
name =  "RiseKicken3"
command = ~D, DF, F, c

[Command]
name = "EXGrosseKicken"
command = ~D, DF, F, a+b
time = 16

[Command]
name = "EXGrosseKicken"
command = ~D, DF, F, b+c
time = 16

[Command]
name = "EXGrosseKicken"
command = ~D, DF, F, a+c
time = 16

[Command]
name =  "EXRiseKicken"
command = ~D, DF, F, a+b

[Command]
name =  "EXRiseKicken"
command = ~D, DF, F, b+c

[Command]
name =  "EXRiseKicken"
command = ~D, DF, F, a+c

[Command]
name = "GrosseWand"
command = ~D, DF, F, x
time = 16

[Command]
name = "GrosseWand"
command = ~D, DF, F, y
time = 16

[Command]
name = "GrosseWand"
command = ~D, DF, F, z
time = 16

[Command]
name = "EXGrosseWand"
command = ~D, DF, F, x+y
time = 16

[Command]
name = "EXGrosseWand"
command = ~D, DF, F, y+z
time = 16

[Command]
name = "EXGrosseWand"
command = ~D, DF, F, x+z
time = 16

[Command]
name = "GrosseZerstorung"
command = ~D, DB, B, a
time = 16

[Command]
name = "GrosseZerstorung"
command = ~D, DB, B, b
time = 16

[Command]
name = "GrosseZerstorung"
command = ~D, DB, B, c
time = 16

[Command]
name = "EXGrosseZerstorung"
command = ~D, DB, B, a+b
time = 16

[Command]
name = "EXGrosseZerstorung"
command = ~D, DB, B, b+c
time = 16

[Command]
name = "EXGrosseZerstorung"
command = ~D, DB, B, a+c
time = 16

[Command]
name = "GrossenDrucken"
command = ~F, DF, D, DB, B, x
time = 20

[Command]
name = "GrossenDrucken"
command = ~F, DF, D, DB, B, y
time = 20

[Command]
name = "GrossenDrucken"
command = ~F, DF, D, DB, B, z
time = 20

[Command]
name = "EXGrossenDrucken"
command = ~F, DF, D, DB, B, x+y
time = 20

[Command]
name = "EXGrossenDrucken"
command = ~F, DF, D, DB, B, y+z
time = 20

[Command]
name = "EXGrossenDrucken"
command = ~F, DF, D, DB, B, x+z
time = 20

[Command]
name = "Kronprinz"
command = ~F, B, DB, D, DF, F, x
time = 32

[Command]
name = "Kronprinz"
command = ~F, B, DB, D, DF, F, y
time = 32

[Command]
name = "Kronprinz"
command = ~F, B, DB, D, DF, F, z
time = 32

[Command]
name = "EXKronprinz"
command = ~F, B, DB, D, DF, F, x+y
time = 32

[Command]
name = "EXKronprinz"
command = ~F, B, DB, D, DF, F, y+z
time = 32

[Command]
name = "EXKronprinz"
command = ~F, B, DB, D, DF, F, x+z
time = 32

[Command]
name = "Kreis"
command = ~F, D, DF, a
time = 16

[Command]
name = "Kreis"
command = ~F, D, DF, b
time = 16

[Command]
name = "Kreis"
command = ~F, D, DF, c
time = 16

[Command]
name = "EXKreis"
command = ~F, D, DF, a+b
time = 16

[Command]
name = "EXKreis"
command = ~F, D, DF, b+c
time = 16

[Command]
name = "EXKreis"
command = ~F, D, DF, a+c
time = 16

[Command]
name = "Rose"
command = ~D, DF, F, s

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
trigger2 = (StateNo = [200,499]) && !AnimTime
trigger3 = ((StateNo = [760,762]) || (StateNo = [700,715]) || (StateNo = [900,905])) && !AnimTime
trigger4 = StateNo = 810 && !AnimTime
trigger5 = (StateNo = 5001 || StateNo = 5011 || StateNo = 151 || StateNo = 153) && HitOver
value = 1

[State -1, Grosse Sklaven]
type = ChangeState
value = 3300
triggerAll = !AILevel
triggerAll = command = "GrosseSklaven"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 3000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = stateno = 1000 && (animelem=5,>0 && animelem=7,<0)
trigger3 = stateno = 225 && (animelem=5,>0 && animelem=7,<0) && P2stateno = [5000, 5001]
trigger4 = stateno = 270 && (animelem=3,>0 && animelem=4,<0) && P2stateno = [5000, 5001]
trigger5 = stateno = 280 && (animelem=12,>0 && animelem=17,<0) && P2stateno = [5000, 5001]
trigger6 = stateno = 1016 && (animelem=4,>0 && animelem=5,<0)
trigger7 = stateno = 1020 && (animelem=4,>0 && animelem=5,<0)
trigger8 = var(7)

[State -1, MAX Grosse Kreis]
type = ChangeState
value = 3120 
triggerAll = !AILevel
triggerAll = command = "MAXGrosseKreis"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = stateno = 270 && (animelem=3,>0 && animelem=4,<0) && P2stateno = [5000, 5001]
trigger3 = stateno = 280 && (animelem=12,>0 && animelem=17,<0) && P2stateno = [5000, 5001]
trigger4 = stateno = 3110 && (animelem=3,>0 && animelem=4,<0) && P2stateno = [5000, 5001]
trigger5 = var(7) || var(8)

[State -1, Grosse Kreis 2]
type = ChangeState
value = 3110
triggerAll = !AILevel
triggerAll = command = "GrosseKreis2"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = stateno = 270 && (animelem=3,>0 && animelem=4,<0) && P2stateno = [5000, 5001]
trigger3 = stateno = 280 && (animelem=12,>0 && animelem=17,<0) && P2stateno = [5000, 5001]
trigger4 = stateno = 1020 && (animelem=4) && P2stateno = [5000, 5001]
trigger5 = stateno = 1020 && (animelem=4) && P2stateno = [150, 151]
trigger6 = var(7)

[State -1, Himel Kreis]
type = ChangeState
value = 3102
triggerAll = !AILevel && var(40) = 1
triggerAll = command = "HimelKreis"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = stateno = 225 && (animelem=5,>0 && animelem=7,<0) && P2stateno = [5000, 5001]
trigger3 = stateno = 270 && (animelem=3,>0 && animelem=4,<0) && P2stateno = [5000, 5001]
trigger4 = stateno = 280 && (animelem=12,>0 && animelem=17,<0) && P2stateno = [5000, 5001]
trigger5 = stateno = 1016 && (animelem=4,>0 && animelem=5,<0)
trigger6 = stateno = 1020 && (animelem=4,>0 && animelem=5,<0)
trigger7 = var(7)

[State -1, Grosse Kreis]
type = ChangeState
value = 3101
triggerAll = !AILevel && var(40) = 0
triggerAll = command = "GrosseKreisM"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = stateno = 225 && (animelem=5,>0 && animelem=7,<0) && P2stateno = [5000, 5001]
trigger3 = stateno = 270 && (animelem=3,>0 && animelem=4,<0) && P2stateno = [5000, 5001]
trigger4 = stateno = 280 && (animelem=12,>0 && animelem=17,<0) && P2stateno = [5000, 5001]
trigger5 = stateno = 1016 && (animelem=4,>0 && animelem=5,<0)
trigger6 = stateno = 1020 && (animelem=4,>0 && animelem=5,<0)
trigger7 = var(7)

[State -1, Grosse Kreis]
type = ChangeState
value = 3100
triggerAll = !AILevel && var(40) = 0
triggerAll = command = "GrosseKreisL"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = stateno = 225 && (animelem=5,>0 && animelem=7,<0) && P2stateno = [5000, 5001]
trigger3 = stateno = 270 && (animelem=3,>0 && animelem=4,<0) && P2stateno = [5000, 5001]
trigger4 = stateno = 280 && (animelem=12,>0 && animelem=17,<0) && P2stateno = [5000, 5001]
trigger5 = stateno = 1016 && (animelem=4,>0 && animelem=5,<0)
trigger6 = stateno = 1020 && (animelem=4,>0 && animelem=5,<0)
trigger7 = var(7)

[State -1, Grosse Kronprinz]
type = ChangeState
value = 3000
triggerAll = !AILevel && var(40) = 0
triggerAll = command = "GrosseKronprinz"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && !var(20)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, EX Kronprinz]
type = ChangeState
value = 1330
triggerAll = !AILevel && var(40) = 1
triggerAll = command = "EXKronprinz"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
triggerAll = !var(39)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Kronprinz]
type = ChangeState
value = 1300
triggerAll = !AILevel && var(40) = 1
triggerAll = command = "Kronprinz"
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(39)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Rose]
type = ChangeState
value = 1600
triggerAll = !AILevel
triggerall = command = "Rose"
triggerall = !numhelper(1610) && !numhelper(1620) && !numhelper(1630) && !numhelper(1640) && !numhelper(1650) && !numhelper(1660)
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl
trigger2 = stateno = 225 && (animelem=6,>0 && animelem=8,<0)
trigger3 = stateno = 250 && (animelem=8,>0 && animelem=11,<0)
trigger4 = stateno = 255 && (animelem=6,>0 && animelem=8,<0)
trigger5 = stateno = 270 && (animelem=3,>0 && animelem=4,<0)
trigger6 = stateno = 280 && (animelem=12,>0 && animelem=15,<0)
trigger7 = stateno = 420 && (animelem=7,>0 && animelem=9,<0)
trigger8 = stateno = 450 && (animelem=7,>0 && animelem=9,<0)
ignorehitpause = 0

[State -1, EX Grosse Wand]
type = ChangeState
value = 1530
triggerAll = !AILevel
triggerAll = command = "EXGrosseWand"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Grosse Wand]
type = ChangeState
value = 1500
triggerAll = !AILevel
triggerAll = command = "GrosseWand"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Grosse Zerstorung]
type = ChangeState
value = 1430
triggerAll = !AILevel
triggerAll = command = "EXGrosseZerstorung"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = stateno = 280 && (animelem=12,>0 && animelem=17,<0) && P2stateno = [5000, 5001]
trigger3 = var(6)

[State -1, Grosse Zerstorung]
type = ChangeState
value = 1400
triggerAll = !AILevel
triggerAll = command = "GrosseZerstorung"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = stateno = 280 && (animelem=12,>0 && animelem=17,<0) && P2stateno = [5000, 5001]
trigger3 = var(6)

[State -1, EX Grossen Drucken]
type = ChangeState
value = 1230
triggerAll = !AILevel
triggerAll = command = "EXGrossenDrucken"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = stateno = 280 && (animelem=12,>0 && animelem=17,<0) && P2stateno = [5000, 5001]
trigger3 = stateno = 280 && (animelem=12,>0 && animelem=17,<0) && P2stateno = [150, 151]
trigger4 = var(6)

[State -1, Grossen Drucken]
type = ChangeState
value = 1200
triggerAll = !AILevel
triggerAll = command = "GrossenDrucken"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = stateno = 280 && (animelem=12,>0 && animelem=17,<0) && P2stateno = [5000, 5001]
trigger3 = stateno = 280 && (animelem=12,>0 && animelem=17,<0) && P2stateno = [150, 151]
trigger4 = var(6)

[State -1, EX Kreis]
type = ChangeState
value = 1130
triggerAll = !AILevel && var(40) = 1
triggerAll = command = "EXKreis"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = stateno = 280 && (animelem=12,>0 && animelem=17,<0) && P2stateno = [5000, 5001]
trigger3 = var(6)

[State -1, Kreis]
type = ChangeState
value = 1100
triggerAll = !AILevel && var(40) = 1
triggerAll = command = "Kreis"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = stateno = 280 && (animelem=12,>0 && animelem=17,<0) && P2stateno = [5000, 5001]
trigger3 = var(6)

[State -1, EX Rising Kicken]
type = ChangeState
value = 1050
triggerall = var(59) != 1
triggerall = Numproj = 0
triggerall = roundstate = 2
triggerAll = power >= 500 && var(20) <= 60
triggerall = command = "EXRiseKicken"
triggerall = statetype != A
trigger1 = stateno = 225 && (animelem=5,>0 && animelem=7,<0)
trigger2 = stateno = 235 && (animelem=3,>0 && animelem=4,<0)
trigger3 = stateno = 255 && (animelem=3,>0 && animelem=4,<0)
trigger4 = stateno = 270 && (animelem=3,>0 && animelem=4,<0) && P2stateno = [5000, 5001]
trigger5 = stateno = 270 && (animelem=3,>0 && animelem=4,<0) && P2stateno = [150,151]
trigger6 = stateno = 280 && (animelem=12,>0 && animelem=17,<0) && P2stateno = [5000, 5001]
trigger7 = stateno = 280 && (animelem=12,>0 && animelem=17,<0) && P2stateno = [150, 151]
trigger8 = stateno = 430 && (animelem=3,>0 && animelem=4,<0) && P2stateno = [5000, 5001]
trigger9 = stateno = 430 && (animelem=3,>0 && animelem=4,<0) && P2stateno = [150, 151]
trigger10 = stateno = 440 && (animelem=4,>0 && animelem=5,<0) && P2stateno = [5000, 5001]
trigger11 = stateno = 440 && (animelem=4,>0 && animelem=5,<0) && P2stateno = [150,151]
ignorehitpause = 0

[State -1, EX Grosse Kicken]
type = ChangeState
value = 1030
triggerAll = !AILevel
triggerAll = command = "EXGrosseKicken"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
triggerAll = !var(39)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = stateno = 270 && (animelem=3,>0 && animelem=4,<0) && P2stateno = [5000, 5001]
trigger3 = stateno = 280 && (animelem=12,>0 && animelem=17,<0) && P2stateno = [5000, 5001]
trigger4 = var(6)

[State -1, Rising Kicken H]
type = ChangeState
value = 1025
triggerall = var(59) != 1
triggerall = Numproj = 0
triggerall = roundstate = 2
triggerall = command = "RiseKicken3"
triggerall = statetype != A
trigger1 = stateno = 225 && (animelem=5,>0 && animelem=7,<0)
trigger2 = stateno = 235 && (animelem=3,>0 && animelem=4,<0)
trigger3 = stateno = 255 && (animelem=3,>0 && animelem=4,<0)
trigger4 = stateno = 270 && (animelem=3,>0 && animelem=4,<0) && P2stateno = [5000, 5001]
trigger5 = stateno = 270 && (animelem=3,>0 && animelem=4,<0) && P2stateno = [150,151]
trigger6 = stateno = 280 && (animelem=12,>0 && animelem=17,<0) && P2stateno = [5000, 5001]
trigger7 = stateno = 280 && (animelem=12,>0 && animelem=17,<0) && P2stateno = [150, 151]
trigger8 = stateno = 430 && (animelem=3,>0 && animelem=4,<0) && P2stateno = [5000, 5001]
trigger9 = stateno = 430 && (animelem=3,>0 && animelem=4,<0) && P2stateno = [150, 151]
trigger10 = stateno = 440 && (animelem=4,>0 && animelem=5,<0) && P2stateno = [5000, 5001]
trigger11 = stateno = 440 && (animelem=4,>0 && animelem=5,<0) && P2stateno = [150,151]
ignorehitpause = 0

[State -1, Rising Kicken M]
type = ChangeState
value = 1020
triggerall = var(59) != 1
triggerall = Numproj = 0
triggerall = roundstate = 2
triggerall = command = "RiseKicken2"
triggerall = statetype != A
trigger1 = stateno = 225 && (animelem=5,>0 && animelem=7,<0)
trigger2 = stateno = 235 && (animelem=3,>0 && animelem=4,<0)
trigger3 = stateno = 255 && (animelem=3,>0 && animelem=4,<0)
trigger4 = stateno = 270 && (animelem=3,>0 && animelem=4,<0) && P2stateno = [5000, 5001]
trigger5 = stateno = 270 && (animelem=3,>0 && animelem=4,<0) && P2stateno = [150,151]
trigger6 = stateno = 280 && (animelem=12,>0 && animelem=17,<0) && P2stateno = [5000, 5001]
trigger7 = stateno = 280 && (animelem=12,>0 && animelem=17,<0) && P2stateno = [150, 151]
trigger8 = stateno = 430 && (animelem=3,>0 && animelem=4,<0) && P2stateno = [5000, 5001]
trigger9 = stateno = 430 && (animelem=3,>0 && animelem=4,<0) && P2stateno = [150, 151]
trigger10 = stateno = 440 && (animelem=4,>0 && animelem=5,<0) && P2stateno = [5000, 5001]
trigger11 = stateno = 440 && (animelem=4,>0 && animelem=5,<0) && P2stateno = [150,151]
ignorehitpause = 0

[State -1, Rising Kicken L]
type = ChangeState
value = 1016
triggerall = Numproj = 0
triggerall = roundstate = 2
triggerall = command = "RiseKicken1"
triggerall = statetype != A
trigger1 = stateno = 225 && (animelem=5,>0 && animelem=7,<0)
trigger2 = stateno = 235 && (animelem=3,>0 && animelem=4,<0)
trigger3 = stateno = 255 && (animelem=3,>0 && animelem=4,<0)
trigger4 = stateno = 270 && (animelem=3,>0 && animelem=4,<0) && P2stateno = [5000, 5001]
trigger5 = stateno = 270 && (animelem=3,>0 && animelem=4,<0) && P2stateno = [150,151]
trigger6 = stateno = 280 && (animelem=12,>0 && animelem=17,<0) && P2stateno = [5000, 5001]
trigger7 = stateno = 280 && (animelem=12,>0 && animelem=17,<0) && P2stateno = [150, 151]
trigger8 = stateno = 430 && (animelem=3,>0 && animelem=4,<0) && P2stateno = [5000, 5001]
trigger9 = stateno = 430 && (animelem=3,>0 && animelem=4,<0) && P2stateno = [150, 151]
trigger10 = stateno = 440 && (animelem=4,>0 && animelem=5,<0) && P2stateno = [5000, 5001]
trigger11 = stateno = 440 && (animelem=4,>0 && animelem=5,<0) && P2stateno = [150,151]
ignorehitpause = 0

[State -1, Grosse Kicken]
type = ChangeState
value = 1000
triggerAll = !AILevel
triggerAll = command = "GrosseKicken"
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(39)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = stateno = 270 && (animelem=3,>0 && animelem=4,<0)
trigger3 = stateno = 280 && (animelem=12,>0 && animelem=17,<0) && P2stateno = [5000, 5001]
trigger4 = stateno = 280 && (animelem=12,>0 && animelem=17,<0) && P2stateno = [150, 151]
trigger5 = var(6)

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

[State -1, Normal Attack Zero Counter]
type = ChangeState
value = 750
triggerAll = !AILevel
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = command = "412p" || command = "412k"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20)

[State -1, Special Move Zero Counter]
type = ChangeState
value = 751
triggerAll = !AILevel
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = command = "b+y" && command = "holdfwd"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20)

[State -1, Custom Combo]
type = ChangeState
value = ifElse(StateType = A, 905, 900)
triggerAll = !AILevel
triggerAll = command = "c+z"
triggerAll = RoundState = 2
triggerAll = power >= 1000 && !var(20)
trigger1 = ctrl || StateNo = 52 || (StateNo = [100,101])

[State -1, Power Charge]
type = ChangeState
value = 730
triggerAll = !AILevel
trigger1 = command = "holdb" && command = "holdy"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power < const(data.power) && power < PowerMax && !var(20)
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Dash Forward/Run]
type = ChangeState
value = 110
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

[State -1, Drucken]
type = ChangeState
value = 800
triggerAll = !AILevel
trigger1 = (command = "holdfwd" || command = "holdback") && (command = "pp" || command = "kk")
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, A.Kunst Vier]
type = ChangeState
value = 280
triggerall = var(59) != 1
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = command != "holddown" && command = "holdback"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 225 && (animelem=5,>0 && animelem=7,<0)
trigger3 = stateno = 235 && (animelem=3,>0 && animelem=4,<0)
ignorehitpause = 0

[State -1, A.Kunst Zwei]
type = ChangeState
value = 270
triggerall = var(59) != 1
triggerall = roundstate = 2
triggerall = command = "a"
triggerall = command != "holddown" && command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = 225 && (animelem=5,>0 && animelem=7,<0)
trigger3 = stateno = 235 && (animelem=3,>0 && animelem=4,<0)
ignorehitpause = 0

[State -1, Standing Far/Close Heavy Punch]
type = ChangeState
value = 220 + (Abs(P2BodyDist X) <= 20) * 5
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "z"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Far/Close Heavy Kick]
type = ChangeState
value = 250 + (Abs(P2BodyDist X) <= 17) * 5
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "c"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Far Medium Punch]
type = ChangeState
value = 210
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Far Medium Kick]
type = ChangeState
value = 240
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "b"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Light Punch]
type = ChangeState
value = 200
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "x"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 230 || StateNo = 400 || StateNo = 430) && Time >= 8
trigger3 = var(4)

[State -1, Standing Far/Close Light Kick]
type = ChangeState
value = 230 + (Abs(P2BodyDist X) <= 20) * 5
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "a"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 205 || StateNo = 230 || StateNo = 400) && Time >= 9; || StateNo = 430) && Time >= 9
trigger3 = stateno = 430 && (animelem=3,>0 && animelem=4,<0) && P2stateno = [5000, 5001]
trigger4 = var(4)

[State -1, Crouching Heavy Punch]
type = ChangeState
value = 420
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "z"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Heavy Kick]
type = ChangeState
value = 450
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "c"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerAll = !AILevel
triggerAll = command  ="holddown" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "b"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "x"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 205 || StateNo = 230 || StateNo = 400 || StateNo = 430) && Time >= 7
trigger3 = var(4)

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "a"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 205 || StateNo = 230 || StateNo = 400 || StateNo = 430) && Time >= 7
trigger3 = var(4)

[State -1, Jumping Heavy Punch]
type = ChangeState
value = 620
triggerAll = !AILevel
triggerAll = command = "z"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Heavy Kick]
type = ChangeState
value = 650
triggerAll = !AILevel
triggerAll = command = "c"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerAll = !AILevel
triggerAll = command = "y"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Medium Kick]
type = ChangeState
value = 640
triggerAll = !AILevel
triggerAll = command = "b"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Light Punch]
type = ChangeState
value = 600
triggerAll = !AILevel
triggerAll = command = "x"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Light Kick]
type = ChangeState
value = 630
triggerAll = !AILevel
triggerAll = command = "a"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Taunt]
type = ChangeState
value = 195
triggerAll = !AILevel
triggerAll = command = "start"
triggerAll = StateType != A
triggerAll = StateNo != [200,699]
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(6)

;===============================================================================
;===========================<ADEL A.I SYSTEM MOVEMENTS>========================
;===============================================================================

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
trigger1 = StateNo = 5050 || StateNo = 5052 || StateNo = 5071 && GetHitVar(fall.recover)
trigger1 = vel y > 0 && pos y >= -20
trigger1 = Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Jump]
type = ChangeState
value = 40
TriggerAll = AILevel && NumEnemy
TriggerAll = RoundState = 2 && StateType != A
TriggerAll = stateno != 40
Trigger1 = ctrl || stateno = 21 || stateno = 100
trigger1 = p2bodydist X = [0,80]
Trigger1 = p2MoveType = A
trigger1 = enemynear,HitDefAttr = SC, AT
trigger1 = random <= 100

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

[State -1, Dash Backward]
type = ChangeState
value = 105
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = S
triggerAll = ctrl && (StateNo != [100,106]) && var(20) <= 150 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && BackEdgeDist >= 80 && (P2BodyDist x = [80,120]) && (EnemyNear, vel x)
trigger1 = Random < (ifElse((EnemyNear, HitDefAttr = SC, AT), 150, 50) * (AILevel ** 2 / 64.0))
trigger2 = (P2BodyDist x = [0,80]) && BackEdgeBodyDist >= 80
trigger2 = EnemyNear, StateNo = 5120 && EnemyNear, AnimTime = -4 && Random < (750 * (AILevel ** 2 / 64.0))

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

[state -1, Guard]
type = ChangeState
value = 132
triggerall = var(59) = 1
triggerall = var(20) = 0
triggerall = roundstate = 2
triggerall = InGuardDist
triggerall = statetype = A
Triggerall = stateno != 1600
triggerall = ctrl
trigger1 = enemynear,numproj
trigger2 = enemynear,HitDefAttr = SCA, NA,SA,HA
trigger2 = random <= 400

[State -1, Adel Taunt]
type = ChangeState
value = 195
triggerAll = AILevel && NumEnemy
triggerAll = StateType != A && Life >= 0.5 * LifeMax
triggerAll = (EnemyNear, Life) <= 0.5 * (EnemyNear, LifeMax)
trigger1 = ctrl
trigger1 = P2Dist x >= 160 && !(EnemyNear, ctrl)
trigger1 = (EnemyNear, MoveType = H) && (EnemyNear, HitFall) && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Normal Attack Zero Counter]
type = ChangeState
value = 750
trigger1 = AILevel && NumEnemy
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = RoundState = 2 && StateType != A
trigger1 = Power >= 1000 && var(20) <= 60
trigger1 = Random < (25 * (AILevel ** 2 / 64.0))
trigger1 = (P2BodyDist x = [0,50]) && (Life < 0.5 * LifeMax)

[State -1, Special Move Zero Counter]
type = ChangeState
value = 751
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
trigger1 = Power < const(data.power) && !var(20)
trigger1 = ctrl && Power < const(data.power) && Power < PowerMax && !var(20)
trigger1 = !InGuardDist && P2BodyDist x >= 160 && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Throw]
type = ChangeState
value = 800
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = S
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != H
triggerAll = (P2BodyDist x = [-20,40]) && P2BodyDist y = 0
trigger1 = ctrl && Random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (P2StateNo = [120,140]) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Run]
type = ChangeState
value = 100
triggerall = var(59) = 1
triggerall = RoundState = 2
triggerall = statetype != A
Triggerall = stateno != [10,12]
Triggerall = stateno != 100
Triggerall = prevstateno != 100
triggerall = P2StateType != L

trigger1 = ctrl
trigger1 = p2bodydist X <= 70
trigger1 = p2MoveType = H
trigger1 = p2statetype != A
trigger1 = numhelper(1610) 
trigger1 = NumTarget 
ignorehitpause = 0

;===============================================================================
;===========================<ADEL A.I NORMAL ATTACKS>==========================
;===============================================================================

[State -1]
type = ChangeState
value = 280
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = P2StateType != L
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = stateno = 225 && (animelem=6,>0 && animelem=8,<0)
trigger1 = p2bodydist X = [0,20]
trigger1 = p2MoveType = H
trigger1 = p2statetype != A
trigger1 = P2Stateno != [120,155]
ignorehitpause = 0

[State -1]
type = ChangeState
value = 270
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerall = P2StateType != L
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2BodyDist x = [0,20]
triggerAll = P2StateType != A || EnemyNear, vel x < 0
trigger1 = stateno = 225 && (animelem=5,>0 && animelem=7,<0) || stateno = 235 && (animelem=3,>0 && animelem=4,<0)
trigger1 = p2MoveType = H
trigger1 = P2Stateno = [120,155]

trigger2 = stateno = 430 && (animelem=3,>0 && animelem=5,<0)
trigger2 = p2bodydist X = [15,35]
trigger2 = p2MoveType = H
trigger2 = p2statetype != A
ignorehitpause = 0

[State -1, Standing Light Punch]
type = ChangeState
value = 200
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,45]) && (P2Dist y = [-87,0]) && P2StateType != C && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Standing Light Kick]
type = ChangeState
value = 230
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [25,70]) && (P2Dist y = [-23,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 2) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Standing Close Light Kick]
type = ChangeState
value = 235
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,20]) && (P2Dist y = [-23,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = stateno = 430 && (animelem=3,>0 && animelem=5,<0)
trigger1 = p2bodydist X = [0,15]
trigger2 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger3 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger3 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 2) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,61]) && (P2Dist y = [-54,0]) && P2StateType != A && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 2) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (p2bodydist X = [-5,30]) && (P2Dist y = [-27,0]) && P2StateType != A && P2StateType != L
trigger1 = (ctrl || (StateNo = [100, 101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200, 499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = stateno = 430 && (animelem=3,>0 && animelem=5,<0)
trigger3 = p2bodydist X = [-5,50]
trigger3 = p2MoveType = H
trigger3 = p2statetype != A

[State -1, Jumping Light Punch]
type = ChangeState
value = 600
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,41]) && (P2Dist y = [-56,28]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Jumping Light Kick]
type = ChangeState
value = 630
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerall = P2StateType != L
trigger1 = ctrl
trigger1 = P2bodydist X = [-10,80]
trigger1 = P2bodydist Y = [0,100]
trigger1 = Vel X > 0
trigger1 = Vel Y > 0
trigger1 = Random = [0,300]
ignorehitpause = 0

[State -1, Standing Far Medium Punch]
type = ChangeState
value = 210
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,55]) && (P2Dist y = [-129,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Standing Far Medium Kick]
type = ChangeState
value = 240
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2StateType != L
trigger1 = ctrl || stateno = 21 || stateno = 100
trigger1 = p2bodydist X = [31,70]
trigger1 = p2MoveType = I
trigger1 = p2statetype = S
trigger1 = Random = [0,150]

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,50]) && (P2Dist y = [-40,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,70]) && (P2Dist y = [-20,0]) && P2StateType != A && P2StateType != L
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,42]) && (P2Dist y = [-80,50]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Jumping Medium Kick]
type = ChangeState
value = 640
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerall = P2StateType != L
trigger1 = ctrl
trigger1 = P2bodydist X = [-10,80]
trigger1 = P2bodydist Y = [0,100]
trigger1 = Vel X > 0
trigger1 = Vel Y > 0
trigger1 = Random = [0,300]
ignorehitpause = 0

[State -1, Standing Far/Close Heavy Punch]
type = ChangeState
value = 220 + (Abs(P2BodyDist x) <= 20) * 5
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,70]) && (P2Dist y = [-90,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Standing Far/Close Heavy Kick]
type = ChangeState
value = 250 + (Abs(P2BodyDist x) <= 20) * 5
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,100]) && (P2Dist y = [-111,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 4) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Heavy Punch]
type = ChangeState
value = 420
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && Statetype != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,50]) && (P2Dist y = [-132,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 4) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Heavy Kick]
type = ChangeState
value = 450
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (p2bodydist X = [31,45]) && (P2Dist y = [-33,0]) && P2StateType != A && P2StateType != L
triggerAll = (P2StateType = S || (P2StateType = C && P2MoveType = H))
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 6) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Jumping Heavy Punch]
type = ChangeState
value = 620
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,45]) && (P2Dist y = [-64,50]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(4) && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Jumping Heavy Kick]
type = ChangeState
value = 650
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerall = P2StateType != L
trigger1 = ctrl
trigger1 = P2bodydist X = [-10,80]
trigger1 = P2bodydist Y = [0,95]
trigger1 = Pos Y < -40
trigger1 = Vel X < 0
trigger1 = Random = [0,300]

trigger2 = ctrl
trigger2 = p2bodydist X = [0,110]
trigger2 = p2bodydist Y = [0,40]
trigger2 = enemynear,statetype = A
trigger2 = Vel X >= 0 || enemynear,Vel X >= 0 
trigger2 = random <= 600
ignorehitpause = 0

;===============================================================================
;===========================<ADEL A.I SPECIAL MOVES>===========================
;===============================================================================

;------------------------------------------------------------------------------

[State -1, Rose]
type = ChangeState
value = 1600
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = !numhelper(1610) && !numhelper(1620) && !numhelper(1630) && !numhelper(1640) && !numhelper(1650) && !numhelper(1660)
trigger1 = stateno = 280 && (animelem=12,>0 && animelem=13,<0)
trigger1 = p2bodydist X = [0,50]
trigger1 = p2MoveType = H
trigger1 = P2Stateno != [120,155]
trigger1 = random = [501,999]
trigger2 = stateno = 280 && (animelem=15,>0 && animelem=16,<0)
trigger2 = p2bodydist X = [0,30]
trigger2 = p2MoveType = H
trigger2 = P2Stateno != [120,155]
trigger2 = frontedgebodydist <= 40
trigger2 = random = [501,999]
ignorehitpause = 0

[State -1, Grosse Wand]
type = ChangeState
value = 1500
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2StateType != L || P2StateNo = 5120)
triggerAll = (P2BodyDist x = [-50, 50]) && (P2Dist y = [-75, 0]) 
trigger1 = P2StateNo = 5120 
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100, 101])) && Random < (ifElse(var(40), 25, 125) * (AILevel ** 2 / 64.0))

[State -1, Grosse Zerstorung]
type = ChangeState
value = 1400
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2StateType != L && (P2Dist y = [-80,32])
triggerAll = (P2BodyDist x = [0, 100])
trigger1 = (ctrl || (StateNo = [100, 101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = var(6) && MoveHit && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, Kronprinz]
type = ChangeState
value = ifElse(Power >= 500 && Random < 133, 1330, 1300)
triggerAll = AILevel && NumEnemy && var(40) = 1
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(39)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2BodyDist x >= 25 && P2Dist y >= -120 && EnemyNear, vel y >= 0
triggerAll = P2StateType != A || EnemyNear, vel x < 0
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (5 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger2 = EnemyNear, StateNo = 195 && Random < (50 * (AILevel ** 2 / 64.0))
trigger3 = var(6) && MoveContact && Random < (25 * (AILevel ** 2 / 64.0))
trigger3 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, Grossen Drucken]
type = ChangeState
value = ifElse(Power >= 500 && Random < 125, 1230, 1200)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2StateType != L && P2StateType != A
triggerAll = (P2BodyDist x = [0, 15])
trigger1 = var(6) && MoveHit

[State -1, Kreis]
type = ChangeState
value = ifElse(Power >= 500 && Random < 133, 1130, 1100)
triggerAll = AILevel && NumEnemy && var(40) = 1
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2StateType != L && (P2Dist y = [-80,32])
triggerAll = ((P2BodyDist x = [-70,70]) && P2StateType != A) || ((P2BodyDist x = [-80,80]) && P2StateType = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = var(6) && MoveHit && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Rising Grosse Kicken H]
type = ChangeState
value = 1025
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(39)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerall = p2statetype = S

trigger1 = stateno = 270 && (animelem=3,>0 && animelem=4,<0)
trigger1 = p2bodydist X = [0,50]
trigger1 = p2MoveType = H
trigger1 = P2Stateno != [120,155]

trigger2 = stateno = 280 && (animelem=15,>0 && animelem=16,<0)
trigger2 = p2bodydist X = [0,30]
trigger2 = p2MoveType = H
trigger2 = P2Stateno != [120,155]
trigger2 = ifelse(((!numhelper = [1610,1660]) && (power >= 1000)),(Random = [501,999]),(random < 999))

trigger3 = stateno = 440 && (animelem=4,>0 && animelem=5,<0)
trigger3 = p2bodydist X = [0,40]
trigger3 = p2MoveType = H
trigger3 = P2Stateno != [120,155]
ignorehitpause = 0

[State -1, Rising Grosse Kicken M]
type = ChangeState
value = 1020
triggerall = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(39)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2StateType != A

trigger1 = stateno = 255 && (animelem=3,>0 && animelem=4,<0) || stateno = 270 && (animelem=3,>0 && animelem=4,<0) || stateno = 280 && (animelem=12,>0 && animelem=16,<0)
trigger1 = p2bodydist X = [0,60]
trigger1 = p2MoveType = H
trigger1 = p2statetype != A
trigger1 = P2Stateno = [120,155]
trigger1 = frontedgebodydist >= 70

trigger2 = stateno = 255 && (animelem=3,>0 && animelem=4,<0) || stateno = 430 && (animelem=3,>0 && animelem=5,<0)
trigger2 = p2bodydist X = [40,60]
trigger2 = p2MoveType = H
trigger2 = p2statetype != A
trigger2 = P2Stateno != [120,155]
trigger2 = Random <= 500
ignorehitpause = 0

[State -1, Rising Grosse Kicken L]
type = ChangeState
value = 1016
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(39)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerall = p2statetype = S

trigger1 = stateno = 235 && (animelem=3,>0 && animelem=4,<0)
trigger1 = p2bodydist X = [0,25]
trigger1 = p2MoveType = H
trigger1 = P2Stateno != [120,155]
ignorehitpause = 0

[State -1, Grosse Kicken]
type = ChangeState
value = ifElse(Power >= 500 && Random < 100 && var(20) <= 60 && !var(40), 1030, 1000)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(39)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2BodyDist x >= 100 && P2Dist y >= -120 && EnemyNear, vel y >= 0
triggerAll = P2StateType != A || EnemyNear, vel x < 0
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100, 101])) && Random < (ifElse(var(40), 25, 250) * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100, 101]))
trigger2 = EnemyNear, StateNo = 195 && Random < (50 * (AILevel ** 2 / 64.0))

;===============================================================================
;===========================<ADEL A.I SUPER MOVES>=============================
;===============================================================================

[State -1, Grosse Sklaven]
type = ChangeState
value = 3300
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 3000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = p2stateno != [154,155]
triggerAll = StateNo != 1400 || (StateNo = 1400 && AnimElemTime(13) > 0)
trigger1 = (P2BodyDist x = [0, 30]) || ((EnemyNear, BackEdgeBodyDist < 30) && P2StateType = A)
trigger1 = (var(7) || var(8)) && MoveHit && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = (var(7) || var(8)) && (StateNo = 1204) && Random < (125 * (AILevel ** 2 / 64.0))
trigger3 = stateno = 1016 && (animelem=4,>0 && animelem=5,<0)
trigger4 = stateno = 1020 && (animelem=4,>0 && animelem=5,<0)

[State -1, MAX Grosse Kreis]
type = ChangeState
value = 3120
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 2000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-80,144]) && (P2Dist y = [-80,32])
triggerAll = P2StateType != A && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 2 / 64.0))
trigger4 = StateNo = 3110 && AnimElemTime(3) = 0 && MoveHit && Random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Grosse Kreis 2]
type = ChangeState
value = 3110
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-80,144]) && (P2Dist y = [-80,32])
triggerAll = P2StateType != A && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Grosse Himel Kreis]
type = ChangeState
value = 3102
triggerAll = AILevel && NumEnemy && var(40) = 1
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-10,20]) && (P2Dist y = [-100,32])
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != A
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 2 / 64.0))
trigger4 = stateno = 1016 && (animelem=4,>0 && animelem=5,<0)
trigger5 = stateno = 1020 && (animelem=4,>0 && animelem=5,<0)

[State -1, Grosse Kreis M]
type = ChangeState
value = 3101
triggerAll = AILevel && NumEnemy && var(40) = 0
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [0,70]) && (P2Dist y = [-80,32])
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != A
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 2 / 64.0))
trigger4 = stateno = 1016 && (animelem=4,>0 && animelem=5,<0)
trigger5 = stateno = 1020 && (animelem=4,>0 && animelem=5,<0)

[State -1, Grosse Kreis L]
type = ChangeState
value = 3100
triggerAll = AILevel && NumEnemy && var(40) = 0
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-10,20]) && (P2Dist y = [-100,32])
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != A
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Grosse Kronprinz]
type = ChangeState
value = 3000
triggerAll = AILevel && NumEnemy && var(40) = 0
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && !var(20)
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = (Enemynear, StateNo != [120, 155]) || EnemyNear, StateType = A
triggerAll = EnemyNear, StateType != L
triggerAll = (P2BodyDist x = [0,144]) && (P2Dist y = [-58,0])
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveContact && Random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 2 / 64.0))

;===============================================================================
;===========================<ADEl A.I END>=====================================
;===============================================================================
