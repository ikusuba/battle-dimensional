; _________________________________________
;| Terry Bogard by Memo  |
; �����������������������������������������
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
;----------------Power Stream / Rising Beat
[Command]
name = "PowerStream"
command = ~D, DB, B, D, DB, B, x+y
time = 32
[Command]
name = "PowerStream"
command = ~D, DB, B, D, DB, B, y+z
time = 32
[Command]
name = "PowerStream"
command = ~D, DB, B, D, DB, B, x+z
time = 32
;----------------
;----------------Trinity Geyser / Rising Force
[Command]
name = "TrinityGeyser"
command = ~D, DF, F, D, DF, F, x+y
time = 32

[Command]
name = "TrinityGeyser"
command = ~D, DF, F, D, DF, F, y+z
time = 32

[Command]
name = "TrinityGeyser"
command = ~D, DF, F, D, DF, F, x+z
time = 32
;----------------
;----------------Buster Wolf
[Command]
name = "BusterWolf"
command = ~D, DF, F, D, DF, F, a
time = 32

[Command]
name = "BusterWolf"
command = ~D, DF, F, D, DF, F, b
time = 32

[Command]
name = "BusterWolf"
command = ~D, DF, F, D, DF, F, c
time = 32

[Command]
name = "BusterWolf"
command = ~D, DF, F, D, DF, F, ~a
time = 32

[Command]
name = "BusterWolf"
command = ~D, DF, F, D, DF, F, ~b
time = 32

[Command]
name = "BusterWolf"
command = ~D, DF, F, D, DF, F, ~c
time = 32
;----------------
;----------------MAX Buster Wolf 
[Command]
name = "MAXBusterWolf"
command = ~D, DF, F, D, DF, F, a+b
time = 32

[Command]
name = "MAXBusterWolf"
command = ~D, DF, F, D, DF, F, b+c
time = 32

[Command]
name = "MAXBusterWolf"
command = ~D, DF, F, D, DF, F, a+c
time = 32
;----------------Overheat Geyser
[Command]
name = "Overheat"
command = ~D, DB, B, D, DB, B, a
time = 32

[Command]
name = "Overheat"
command = ~D, DB, B, D, DB, B, b
time = 32

[Command]
name = "Overheat"
command = ~D, DB, B, D, DB, B, c
time = 32

[Command]
name = "Overheat"
command = ~D, DB, B, D, DB, B, ~a
time = 32

[Command]
name = "Overheat"
command = ~D, DB, B, D, DB, B, ~b
time = 32

[Command]
name = "Overheat"
command = ~D, DB, B, D, DB, B, ~c
time = 32
;----------------
;----------------Max OverHeat Geyser
[Command]
name = "MAXOverheat"
command = ~D, DB, B, D, DB, B, a+b
time = 32

[Command]
name = "MAXOverheat"
command = ~D, DB, B, D, DB, B, b+c
time = 32

[Command]
name = "MAXOverheat"
command = ~D, DB, B, D, DB, B, a+c
time = 32
;----------------
;----------------Power Geyser LVL 1
[Command]
name = "PowerGeyser"
command = ~D, DB, B, $D, F, x
time = 32

[Command]
name = "PowerGeyser"
command = ~D, DB, B, $D, F, y
time = 32

[Command]
name = "PowerGeyser"
command = ~D, DB, B, $D, F, z
time = 32

[Command]
name = "PowerGeyser"
command = ~D, DB, B, $D, F, ~x
time = 32

[Command]
name = "PowerGeyser"
command = ~D, DB, B, $D, F, ~y
time = 32

[Command]
name = "PowerGeyser"
command = ~D, DB, B, $D, F, ~z
time = 32
;----------------
;----------------MAX Triple Geyser LVL 2
[Command]
name = "MAXTripleGeyser"
command = ~D, DB, B, $D, F, x+y
time = 32

[Command]
name = "MAXTripleGeyser"
command = ~D, DB, B, $D, F, y+z
time = 32

[Command]
name = "MAXTripleGeyser"
command = ~D, DB, B, $D, F, x+z
time = 32
;====================<SPECIAL MOTIONS>====================
;----------------
;----------------Power Wave / Round Wave
[Command]
name = "PowerWave"
command = ~D, DF, F, x
time = 16

[Command]
name = "PowerWave"
command = ~D, DF, F, y
time = 16

[Command]
name = "PowerWave"
command = ~D, DF, F, z
time = 16

[Command]
name = "PowerWave"
command = ~D, DF, F, ~x
time = 16

[Command]
name = "PowerWave"
command = ~D, DF, F, ~y
time = 16

[Command]
name = "PowerWave"
command = ~D, DF, F, ~z
time = 16
;----------------
;----------------Power Wave (EX) / Round Wave (EX)
[Command]
name = "EXPowerWave"
command = ~D, DF, F, x+y
time = 16

[Command]
name = "EXPowerWave"
command = ~D, DF, F, y+z
time = 16

[Command]
name = "EXPowerWave"
command = ~D, DF, F, x+z
time = 16
;----------------
;----------------Rising Tackle
[Command]
name = "RisingTackle"
command = ~$D, $U, x
time = 16

[Command]
name = "RisingTackle"
command = ~$D, $U, y
time = 16

[Command]
name = "RisingTackle"
command = ~$D, $U, z
time = 16

[Command]
name = "RisingTackle"
command = ~$D, $U, ~x
time = 16

[Command]
name = "RisingTackle"
command = ~$D, $U, ~y
time = 16

[Command]
name = "RisingTackle"
command = ~$D, $U, ~z
time = 16
;----------------
;----------------Rising Tackle (EX)
[Command]
name = "EXRisingTackle"
command = ~$D, $U, x+y
time = 16

[Command]
name = "EXRisingTackle"
command = ~$D, $U, y+z
time = 16

[Command]
name = "EXRisingTackle"
command = ~$D, $U, x+z
time = 16
;----------------
;----------------EX Mode Rising Tackle
[Command]
name = "EXMRisingTackle"
command = ~F, D, DF, x
time = 16

[Command]
name = "EXMRisingTackle"
command = ~F, D, DF, y
time = 16

[Command]
name = "EXMRisingTackle"
command = ~F, D, DF, z
time = 16

[Command]
name = "EXMRisingTackle"
command = ~F, D, DF, ~x
time = 16

[Command]
name = "EXMRisingTackle"
command = ~F, D, DF, ~y
time = 16

[Command]
name = "EXMRisingTackle"
command = ~F, D, DF, ~z
time = 16
;----------------
;----------------EX Mode Rising Tackle (EX)
[Command]
name = "EXMEXRisingTackle"
command = ~F, D, DF, x+y
time = 16

[Command]
name = "EXMEXRisingTackle"
command = ~F, D, DF, y+z
time = 16

[Command]
name = "EXMEXRisingTackle"
command = ~F, D, DF, x+z
time = 16
;----------------
;----------------Burn Knuckle
[Command]
name = "BurnKnuckle"
command = ~D, DB, B, x
time = 16

[Command]
name = "BurnKnuckle"
command = ~D, DB, B, y
time = 16

[Command]
name = "BurnKnuckle"
command = ~D, DB, B, z
time = 16

[Command]
name = "BurnKnuckle"
command = ~D, DB, B, ~x
time = 16

[Command]
name = "BurnKnuckle"
command = ~D, DB, B, ~y
time = 16

[Command]
name = "BurnKnuckle"
command = ~D, DB, B, ~z
time = 16
;----------------
;----------------Burn Knuckle (EX)
[Command]
name = "EXBurnKnuckle"
command = ~D, DB, B, x+y
time = 16

[Command]
name = "EXBurnKnuckle"
command = ~D, DB, B, y+z
time = 16

[Command]
name = "EXBurnKnuckle"
command = ~D, DB, B, x+z
time = 16
;----------------
;----------------Power Dunk
[Command]
name = "PowerDunk"
command = ~F, D, DF, a
time = 16

[Command]
name = "PowerDunk"
command = ~F, D, DF, b
time = 16

[Command]
name = "PowerDunk"
command = ~F, D, DF, c
time = 16

[Command]
name = "PowerDunk"
command = ~F, D, DF, ~a
time = 16

[Command]
name = "PowerDunk"
command = ~F, D, DF, ~b
time = 16

[Command]
name = "PowerDunk"
command = ~F, D, DF, ~c
time = 16
;----------------
;----------------Power Dunk (EX)
[Command]
name = "EXPowerDunk"
command = ~F, D, DF, a+b
time = 16

[Command]
name = "EXPowerDunk"
command = ~F, D, DF, b+c
time = 16

[Command]
name = "EXPowerDunk"
command = ~F, D, DF, a+c
time = 16
;----------------
;----------------Power Charge
[Command]
name = "PowerCharge"
command = ~B, DB, D, DF, F, a
time = 20

[Command]
name = "PowerCharge"
command = ~B, DB, D, DF, F, b
time = 20

[Command]
name = "PowerCharge"
command = ~B, DB, D, DF, F, c
time = 20

[Command]
name = "PowerCharge"
command = ~B, DB, D, DF, F, ~a
time = 20

[Command]
name = "PowerCharge"
command = ~B, DB, D, DF, F, ~b
time = 20

[Command]
name = "PowerCharge"
command = ~B, DB, D, DF, F, ~c
time = 20
;----------------
;----------------Power Charge (EX)
[Command]
name = "EXPowerCharge"
command = ~B, DB, D, DF, F, a+b
time = 20

[Command]
name = "EXPowerCharge"
command = ~B, DB, D, DF, F, b+c
time = 20

[Command]
name = "EXPowerCharge"
command = ~B, DB, D, DF, F, a+c
time = 20
;----------------
;----------------Fire Kick
;----------------
[Command]
name = "FireKick"
command = ~$B, F, ~a
time = 16
[Command]
name = "FireKick"
command = ~$B, F, ~b
time = 16
[Command]
name = "FireKick"
command = ~$B, F, ~c
time = 16
[Command]
name = "FireKick"
command = ~$B, F, a
time = 16
[Command]
name = "FireKick"
command = ~$B, F, b
time = 16
[Command]
name = "FireKick"
command = ~$B, F, c
time = 16
[Command]
name = "EXFireKick"
command = ~$B, F, a+b
time = 16
[Command]
name = "EXFireKick"
command = ~$B, F, b+c
time = 16
[Command]
name = "EXFireKick"
command = ~$B, F, a+c
time = 16
;----------------Crack Shot
[Command]
name = "CrackShot"
command = ~D, DB, B, a
time = 16

[Command]
name = "CrackShot"
command = ~D, DB, B, b
time = 16

[Command]
name = "CrackShot"
command = ~D, DB, B, c
time = 16

[Command]
name = "CrackShot"
command = ~D, DB, B, ~a
time = 16

[Command]
name = "CrackShot"
command = ~D, DB, B, ~b
time = 16

[Command]
name = "CrackShot"
command = ~D, DB, B, ~c
time = 16
;----------------
;----------------Crack Shot (EX)
[Command]
name = "EXCrackShot"
command = ~D, DB, B, a+b
time = 16

[Command]
name = "EXCrackShot"
command = ~D, DB, B, b+c
time = 16

[Command]
name = "EXCrackShot"
command = ~D, DB, B, a+c
time = 16



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

[State -1, Rising Beat]
type = ChangeState
value = 3700
triggerAll = !AILevel
triggerAll = command = "TrinityGeyser" &&  var(40) = 1
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 3000 && !var(20)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)
trigger3=((stateno=[200,251])||(stateno=[400,450]))&&movecontact&&var(55)
[State -1, Rising Beat]
type = ChangeState
value = 3700
triggerAll = !AILevel
triggerAll = command = "PowerStream" &&  var(41) = 1
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 3000 && !var(20)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)
trigger3=((stateno=[200,251])||(stateno=[400,450]))&&movecontact&&var(55)

[State -1, Power Stream]
type = ChangeState
value = 3600
triggerAll = !AILevel
triggerAll = command = "TrinityGeyser" &&  var(40) = 0
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 3000 && !var(20)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)
trigger3=((stateno=[200,251])||(stateno=[400,450]))&&movecontact&&var(55)
[State -1, Power Stream]
type = ChangeState
value = 3600
triggerAll = !AILevel
triggerAll = command = "PowerStream" &&  var(41) = 0
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 3000 && !var(20)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)
trigger3=((stateno=[200,251])||(stateno=[400,450]))&&movecontact&&var(55)

[State -1, Rising Force]
type = ChangeState
value = 3500
triggerAll = !AILevel
triggerAll = command = "TrinityGeyser" &&  var(40) = 2
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 3000 && !var(20)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)
trigger3=((stateno=[200,251])||(stateno=[400,450]))&&movecontact&&var(55)
[State -1, Rising Force]
type = ChangeState
value = 3500
triggerAll = !AILevel
triggerAll = command = "PowerStream" &&  var(41) = 2
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 3000 && !var(20)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)
trigger3=((stateno=[200,251])||(stateno=[400,450]))&&movecontact&&var(55)

[State -1, Trinity Geyser]
type = ChangeState
value = 3400
triggerAll = !AILevel
triggerAll = command = "TrinityGeyser" &&  var(40) = 3
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 3000 && !var(20)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)
trigger3=((stateno=[200,251])||(stateno=[400,450]))&&movecontact&&var(55)
[State -1, Trinity Geyser]
type = ChangeState
value = 3400
triggerAll = !AILevel
triggerAll = command = "PowerStream" &&  var(41) = 3
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 3000 && !var(20)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)
trigger3=((stateno=[200,251])||(stateno=[400,450]))&&movecontact&&var(55)

[State -1, MAX Triple Geyser]
type = ChangeState
value = 3050
triggerAll = !AILevel
triggerAll = command = "MAXTripleGeyser"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)
trigger3=((stateno=[200,251])||(stateno=[400,450]))&&movecontact&&var(55)

[State -1, MAX Buster Wolf]
type = ChangeState
value = 3350
triggerAll = !AILevel
triggerAll = command = "MAXBusterWolf"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)
trigger3=((stateno=[200,251])||(stateno=[400,450]))&&movecontact&&var(55)

[State -1, MAX OverHeat Geyser]
type = ChangeState
value = 3250
triggerAll = !AILevel
triggerAll = command = "MAXOverheat"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)
trigger3=((stateno=[200,251])||(stateno=[400,450]))&&movecontact&&var(55)

[State -1, Power Geyser]
type = ChangeState
value = 3000
triggerAll = !AILevel
triggerAll = command = "PowerGeyser"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)
trigger3=((stateno=[200,251])||(stateno=[400,450]))&&movecontact&&var(55)

[State -1, Buster Wolf]
type = ChangeState
value = 3300
triggerAll = !AILevel
triggerAll = command = "BusterWolf"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)
trigger3=((stateno=[200,251])||(stateno=[400,450]))&&movecontact&&var(55)

[State -1, Over Heat Geyser]
type = ChangeState
value = 3200
triggerAll = !AILevel
triggerAll = command = "Overheat"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)
trigger3=((stateno=[200,251])||(stateno=[400,450]))&&movecontact&&var(55)

[State -1, EX Power Dunk]
type = ChangeState
value = 1330
triggerAll = !AILevel
triggerAll = command = "EXPowerDunk"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)
trigger3=((stateno=[200,251])||(stateno=[400,450]))&&movecontact&&var(55)

[State -1, EX Rising Tackle]
type = ChangeState
value = 1130
triggerAll = !AILevel
triggerAll = command = "EXRisingTackle"&&ifElse(var(20) > 0 || (StateNo = 1130), 1, var(50) > 16)
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)
trigger3=((stateno=[200,251])||(stateno=[400,450]))&&movecontact&&var(55)

[State -1, EX Power Charge]
type = ChangeState
value = 1630
triggerAll = !AILevel
triggerAll = command = "EXPowerCharge"
triggerAll = RoundState=2 && StateType != A
triggerAll = Power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)
trigger3=((stateno=[200,251])||(stateno=[400,450]))&&movecontact&&var(55)

[State -1, EX Fire Kick]
type = ChangeState
value = 1430
triggerAll = !AILevel
triggerAll = command = "EXFireKick"&&ifElse(var(20) > 0 || (StateNo = 1400), 1, var(48) > 16)
triggerAll = RoundState=2 && StateType != A
triggerAll = Power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)
trigger3=((stateno=[200,251])||(stateno=[400,450]))&&movecontact&&var(55)

[State -1, EX Power Wave]
type = ChangeState
value = 1050
triggerAll = !AILevel 
triggerAll = command = "EXPowerWave";&&!var(40)
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)
trigger3=((stateno=[200,251])||(stateno=[400,450]))&&movecontact&&var(55)

[State -1, EX Round Wave]
type = null;ChangeState
value = 1055
triggerAll = !AILevel 
triggerAll = command = "EXPowerWave"&&var(40)
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)
trigger3=((stateno=[200,251])||(stateno=[400,450]))&&movecontact&&var(55)

[State -1, EX Crack Shot]
type = ChangeState
value = 1530
triggerAll = !AILevel
triggerAll = command = "EXCrackShot"
triggerAll = RoundState=2 && StateType != A
triggerAll = Power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)
trigger3=((stateno=[200,251])||(stateno=[400,450]))&&movecontact&&var(55)

[State -1, EX Burn Knuckle]
type = ChangeState
value = 1230
triggerAll = !AILevel
triggerAll = command = "EXBurnKnuckle" 
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)
trigger3=((stateno=[200,251])||(stateno=[400,450]))&&movecontact&&var(55)

[State -1, Power Dunk]
type = ChangeState
value = 1300
triggerAll = !AILevel
triggerAll = command = "PowerDunk"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)
trigger3=((stateno=[200,251])||(stateno=[400,450]))&&movecontact&&var(55)

[State -1, Rising Tackle]
type = ChangeState
value = 1100
triggerAll = !AILevel
triggerAll = command = "RisingTackle" &&ifElse(var(20) > 0 || (StateNo = 1100), 1, var(50) > 16)
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)
trigger3=((stateno=[200,251])||(stateno=[400,450]))&&movecontact&&var(55)

[State -1, Power Charge]
type = ChangeState
value = 1600
triggerAll = !AILevel
triggerAll = command = "PowerCharge" 
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)
trigger3=((stateno=[200,251])||(stateno=[400,450]))&&movecontact&&var(55)

[State -1, Fire Kick]
type = ChangeState
value = 1400
triggerAll = !AILevel
triggerAll = command = "FireKick"&&ifElse(var(20) > 0 || (StateNo = 1400), 1, var(48) > 16)
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)
trigger3=((stateno=[200,251])||(stateno=[400,450]))&&movecontact&&var(55)

[State -1, Power Wave]
type = ChangeState
value = 1000
triggerAll = !AILevel
triggerAll = command = "PowerWave";&&!var(40)
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(39)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)
trigger3=((stateno=[200,251])||(stateno=[400,450]))&&movecontact&&var(55)

[State -1, Round Wave]
type = null;ChangeState
value = 1050
triggerAll = !AILevel
triggerAll = command = "PowerWave"&&var(40)
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(39)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)
trigger3=((stateno=[200,251])||(stateno=[400,450]))&&movecontact&&var(55)

[State -1, Crack Shot]
type = ChangeState
value = 1500
triggerAll = !AILevel
triggerAll = command = "CrackShot"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)
trigger3=((stateno=[200,251])||(stateno=[400,450]))&&movecontact&&var(55)

[State -1, Burn Knuckle]
type = ChangeState
value = 1200
triggerAll = !AILevel
triggerAll = command = "BurnKnuckle" 
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101]) 
trigger2 = var(6)
trigger3=((stateno=[200,251])||(stateno=[400,450]))&&movecontact&&var(55)

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
trigger1 = command = "c+z"
trigger1 = RoundState = 2
trigger1 = power >= 1000 && !var(20)
trigger1 = ctrl || StateNo = 52 || (StateNo = [100,101])

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
value = 820
triggerAll = !AILevel
trigger1 = (command = "holdfwd" || command = "holdback") && command = "kk"
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Standing Far/Close Heavy Punch]
type = ChangeState
value = 220 + (Abs(P2BodyDist X) <= 25)
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "z"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)
trigger3=((stateno=[200,211])||(stateno=[230,241])||(stateno=[400,401]))&&movecontact&&var(55)

[State -1, Standing Heavy Kick]
type = ChangeState
value = 250 + (Abs(P2BodyDist X) <= 15)
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "c"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)
trigger3=((stateno=[200,211])||(stateno=[230,241])||(stateno=[400,401]))&&movecontact&&var(55)

[State -1, Standing Medium Punch]
type = ChangeState
value = 210+ (Abs(P2BodyDist X) <= 10)
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)
trigger3=((stateno=[200,209])||(stateno=[230,239])||(stateno=[400,409])||(stateno=[430,439]))&&movecontact&&var(55)

[State -1, Standing Medium Kick]
type = ChangeState
value = 240 + (Abs(P2BodyDist X) <= 10)
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "b"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)
trigger3=((stateno=[200,201])||(stateno=[230,239])||(stateno=[400,419])||(stateno=[430,439]))&&movecontact&&var(55)

[State -1, Standing Light Punch]
type = ChangeState
value = 200 + (Abs(P2BodyDist X) <= 7)
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "x"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 230 || StateNo = 400 || StateNo = 430) && Time >= 4
trigger3 = var(4)

[State -1, Standing Far/Close Light Kick]
type = ChangeState
value = 230 + (Abs(P2BodyDist X) <= 10)
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "a"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 400 || StateNo = 430) && Time >= 4
trigger3 = var(4)

[State -1, Crouching Heavy Punch]
type = ChangeState
value = 421
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "holdfwd" && command = "z"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)
trigger3=((stateno=[200,219])||(stateno=[400,419]))&&movecontact&&var(55)
trigger4 = StateNo = 221 && MoveContact && AnimElemTime(5) < 0
trigger5 = (stateno=[200,219]) && MoveContact 
trigger6 = (stateno=[400,420]) && MoveContact 

[State -1, Crouching Heavy Punch]
type = ChangeState
value = 420
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "z"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)
trigger3=((stateno=[430,440])||(stateno=[400,410]))&&movecontact&&var(55)

[State -1, Crouching Heavy Kick]
type = ChangeState
value = 450
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "c"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)
trigger3=((stateno=[400,440]))&&movecontact&&var(55)

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerAll = !AILevel
triggerAll = command  ="holddown" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)
trigger3=((stateno=[200,209])||(stateno=[230,239])||(stateno=[400,409])||(stateno=[430,439]))&&movecontact&&var(55)

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "b"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)
trigger3=((stateno=[200,209])||(stateno=[230,239])||(stateno=[400,409])||(stateno=[430,439]))&&movecontact&&var(55)

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "x"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 400 || StateNo = 430) && Time >= 4
trigger3 = var(4)
trigger3=((stateno=[200,209])||(stateno=[230,239])||(stateno=[400,409]))&&movecontact&&var(55)

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "a"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 400 || StateNo = 430) && Time >= 4
trigger3 = var(4)
trigger3=((stateno=[200,209])||(stateno=[230,239])||(stateno=[400,409]))&&movecontact&&var(55)

[State -1, Jumping Heavy Punch]
type = ChangeState
value = 620
triggerAll = !AILevel
triggerAll = command = "z"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Angled Jumping Heavy Kick]
type = ChangeState
value = 651
triggerAll = !AILevel
triggerAll = command = "c"
triggerAll = StateType = A
triggerAll = vel x
trigger1 = ctrl
trigger2 = var(4)

[State -1, Neutral Jumping Heavy Kick]
type = ChangeState
value = 650
triggerAll = !AILevel
triggerAll = command = "c"
triggerAll = StateType = A
triggerAll = !vel x
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
triggerall = command = "s"
triggerall = !AILevel&&Roundstate=2&&StateType != A
triggerall = StateNo != [200,699]
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(5)

;==============================================================================================
;===========================================< A.I >============================================
;==============================================================================================

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
trigger1 = Power < const(data.power) && !var(20)
trigger1 = ctrl && Power < const(data.power) && Power < PowerMax && !var(20) && PrevStateNo != 5120
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
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl && (StateNo != [100,106])
trigger1 = (EnemyNear, MoveType != A) && P2BodyDist x >= 160 && Random < (25 * (AILevel ** 2 / 64.0))

[State -1, Standing Far/Close Heavy Punch]
type = ChangeState
value = 220 + (Abs(P2BodyDist x) <= 25)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,57]) && (P2Dist y = [-60,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Standing Far/Close Heavy Kick]
type = ChangeState
value = 250 + (Abs(P2BodyDist x) <= 25)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,75]) && (P2Dist y = [-64,0]) && P2StateType != L
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
triggerAll = (P2BodyDist x = [0,35]) && (P2Dist y = [-135,0]) && P2StateType != L
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
triggerAll = (P2BodyDist x = [0,78]) && (P2Dist y = [-33,0]) && P2StateType != A && P2StateType != L
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
triggerAll = (P2BodyDist x = [0,51]) && (P2Dist y = [-101,76]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y <= 0 && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(4) && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Neutral Jumping Heavy Kick]
type = ChangeState
value = 650
triggerAll = AILevel && NumEnemy && !vel x
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,63]) && (P2Dist y = [-97,85]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y <= 0 && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = var(4) && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Jumping Heavy Kick]
type = ChangeState
value = 651
triggerAll = AILevel && NumEnemy && vel x
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,44]) && (P2Dist y = [-74,82]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(4) && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Standing Far/Close Medium Punch]
type = ChangeState
value = 210
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,35]) && (P2Dist y = [-60,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Standing Far/Close Medium Kick]
type = ChangeState
value = 240
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,60]) && (P2Dist y = [-121,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,52]) && (P2Dist y = [-50,0]) && P2StateType != L
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
triggerAll = (P2BodyDist x = [0,65]) && (P2Dist y = [-60,0]) && P2StateType != A && P2StateType != L
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,40]) && (P2Dist y = [-80,72]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Jumping Medium Kick]
type = ChangeState
value = 640
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [-60,44]) && (P2Dist y = [-60,68]) && P2StateType = A
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Standing Light Punch]
type = ChangeState
value = 200 + (Abs(P2BodyDist x) <= 25)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,44]) && (P2Dist y = [-68,0]) && P2StateType != C && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (85 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Standing Light Kick]
type = ChangeState
value = 230 + (Abs(P2BodyDist x) <= 25)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,53]) && (P2Dist y = [-68,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 2) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,55]) && (P2Dist y = [-44,0]) && P2StateType != A && P2StateType != L
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
triggerAll = (P2BodyDist x = [0,60]) && (P2Dist y = [-25,0]) && P2StateType != A && P2StateType != L
trigger1 = (ctrl || (StateNo = [100, 101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200, 499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = ((stateno = 400) && movehit && !animtime)
trigger3 = (enemy, statetype = S && (enemy, movetype = A || !enemy, ctrl) && random < (125 * (AIlevel ** 2 / 64.0)))

[State -1, Jumping Light Punch]
type = ChangeState
value = 600
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,40]) && (P2Dist y = [-51,60]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Jumping Light Kick]
type = ChangeState
value = 630
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,59]) && (P2Dist y = [-80,57]) && P2StateType != L
trigger1 = ctrl
trigger1 = vel y <= 0 && Random < (ifElse(P2Dist x < 0, 250, 50) * (AILevel ** 2 / 64.0))

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

[State -1, Rising Tackle]
type = ChangeState
value = ifElse(Power >= 500 && Random < 133 && var(20) <= 60, 1130, 1100)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2StateType != L && (P2Dist y = [-110,0])
triggerAll = ((P2BodyDist x = [-30,30]) && P2StateType != A) || ((P2BodyDist x = [-5,55]) && P2StateType = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = var(6) && MoveHit && Random < (120 * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 3
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Power Wave]
type = ChangeState
value = 1000
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(39)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2BodyDist x >= 45 && P2Dist y >= -80 && EnemyNear, vel y >= 0
triggerAll = P2StateType != A || EnemyNear, vel x < 0
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (55 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger2 = EnemyNear, StateNo = 195 && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Power Wave]
type = ChangeState
value = 1050 
triggerAll = AILevel && NumEnemy && Power >= 500
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(39)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,50]) && P2Dist y >= -80 && EnemyNear, vel y >= 0
triggerAll = P2StateType != A || EnemyNear, vel x < 0
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (65 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger2 = EnemyNear, StateNo = 195 && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Burn Knuckle]
type = ChangeState
value = ifElse(Power >= 500 && Random < 100 && var(20) <= 60, 1230, 1200)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = (EnemyNear, MoveType != A) || (EnemyNear, StateNo = [200, 499])
triggerAll = (P2BodyDist x = [-8,250]) && P2StateType != A && (P2StateType != L || P2StateNo = 5120)
triggerAll = P2StateType != L && (P2Dist y = [-110,0])
triggerAll = ((P2BodyDist x = [-30,30]) && P2StateType != A) || ((P2BodyDist x = [-5,55]) && P2StateType = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger1 = P2BodyDist x >= 25 && Random < (50 * (AILevel ** 2 / 64.0))
trigger2 = var(6) && MoveHit && Random < (150 * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 6
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (70 * (AILevel ** 2 / 64.0))

[State -1, Power Dunk]
type = ChangeState
value = ifElse(Power >= 500 && Random < 133 && var(20) <= 60, 1330, 1300)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2StateType != L && (P2Dist y = [-90,0])
triggerAll = ((P2BodyDist x = [0,60]) && P2StateType != A) || ((P2BodyDist x = [0,65]) && P2StateType = A)
triggerAll = P2StateType != L && (P2Dist y = [-110,0])
triggerAll = ((P2BodyDist x = [-30,30]) && P2StateType != A) || ((P2BodyDist x = [-5,55]) && P2StateType = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100, 101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = var(6) && MoveHit && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 3
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 2 / 64.0))
trigger4 = NumTarget(1231) && var(11)
trigger4 = (ctrl || StateNo = 52 || (StateNo = [100, 101])) && Random < (750 * (AILevel ** 2 / 64.0))
trigger5 = NumTarget(1401) && var(12) && (P2Dist y > -40)
trigger5 = (ctrl || StateNo = 52 || (StateNo = [100, 101])) && Random < (1000 * (AILevel ** 2 / 64.0))
trigger6 = var(6) && MoveHit && Random < (150 * (AILevel ** 2 / 64.0))
trigger6 = EnemyNear, GetHitVar(HitTime) >= 9

[State -1, Crack Shot]
type = ChangeState
value = ifElse(Power >= 500 && Random < 100 && var(20) <= 60, 1530, 1500)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = (EnemyNear, MoveType != A) || (EnemyNear, StateNo = [200,499])
triggerAll = (P2BodyDist x = [-8,180]) && P2StateType != A && (P2StateType != L || P2StateNo = 5120)
triggerAll = P2StateType != L && (P2Dist y = [-110,0])
triggerAll = ((P2BodyDist x = [-30,30]) && P2StateType != A) || ((P2BodyDist x = [-5,55]) && P2StateType = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger1 = P2BodyDist x >= 25 && Random < (50 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger2 = (EnemyNear, StateNo = 5120 || EnemyNear, StateNo = 5201) && (EnemyNear, AnimTime = -18) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = var(6) && MoveHit && Random < (70 * (AILevel ** 2 / 64.0))
trigger3 = EnemyNear, GetHitVar(HitTime) >= 6

[State -1, Power Stream]
type = ChangeState
value = 3600
Triggerall = var(40) = 0 ||var(41) = 0 
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 3000 && var(20) <= 60;power >= 2000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && (EnemyNear, StateNo != [120,155])
triggerAll = (P2BodyDist x = [0,50])
triggerAll = P2StateType != A && P2StateType != L
triggerAll = P2StateType != L && (P2Dist y = [-110,0])
triggerAll = ((P2BodyDist x = [-30,30]) && P2StateType != A) || ((P2BodyDist x = [-5,55]) && P2StateType = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100, 101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]),200,50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4
trigger3 = var(7) && StateNo = 1101 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger4 = var(7) && StateNo = 1201 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger5 = var(7) && StateNo = 1301 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger6 = var(7) && StateNo = 1501 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger7 = var(7) && StateNo = 1000 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger8 = var(7) && StateNo = 1127 && StateNo = 243 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger9 = var(7) && (StateNo = [200,450]) && MoveContact && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))


[State -1, Trinity Geyser]
type = ChangeState
value = 3400
Triggerall = var(40) = 3 ||var(41) = 3 
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 3000 && var(20) <= 60;power >= 2000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && (EnemyNear, StateNo != [120,155])
triggerAll = (P2BodyDist x = [0,250])
triggerAll = P2StateType != A && P2StateType != L
triggerAll = P2StateType != L && (P2Dist y = [-110,0])
triggerAll = ((P2BodyDist x = [-30,30]) && P2StateType != A) || ((P2BodyDist x = [-5,55]) && P2StateType = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100, 101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]),200,50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4
trigger3 = var(7) && StateNo = 1101 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger4 = var(7) && StateNo = 1201 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger5 = var(7) && StateNo = 1301 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger6 = var(7) && StateNo = 1501 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger7 = var(7) && StateNo = 1000 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger8 = var(7) && StateNo = 1127 && StateNo = 243 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger9 = var(7) && (StateNo = [200,450]) && MoveContact && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))

[State -1, Rising Force]
type = ChangeState
value = 3500
Triggerall = var(40) = 2 ||var(41) = 2 
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 3000 && var(20) <= 60;power >= 2000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && (EnemyNear, StateNo != [120,155])
triggerAll = (P2BodyDist x = [0,250])
triggerAll = P2StateType != A && P2StateType != L
triggerAll = P2StateType != L && (P2Dist y = [-110,0])
triggerAll = ((P2BodyDist x = [-30,30]) && P2StateType != A) || ((P2BodyDist x = [-5,55]) && P2StateType = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100, 101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]),200,50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4
trigger3 = var(7) && StateNo = 1101 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger4 = var(7) && StateNo = 1201 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger5 = var(7) && StateNo = 1301 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger6 = var(7) && StateNo = 1501 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger7 = var(7) && StateNo = 1000 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger8 = var(7) && StateNo = 1127 && StateNo = 243 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger9 = var(7) && (StateNo = [200,450]) && MoveContact && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))

[State -1, Rising Beat]
type = ChangeState
value = 3700
Triggerall = var(40) = 1 ||var(41) = 1
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 3000 && var(20) <= 60;power >= 2000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && (EnemyNear, StateNo != [120,155])
triggerAll = (P2BodyDist x = [0,200])
triggerAll = P2StateType != A && P2StateType != L
triggerAll = P2StateType != L && (P2Dist y = [-80,0])
triggerAll = ((P2BodyDist x = [-30,30]) && P2StateType != A) || ((P2BodyDist x = [-5,55]) && P2StateType = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100, 101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]),200,50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4
trigger3 = var(7) && StateNo = 1101 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger4 = var(7) && StateNo = 1201 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger5 = var(7) && StateNo = 1301 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger6 = var(7) && StateNo = 1501 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger7 = var(7) && StateNo = 1000 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger8 = var(7) && StateNo = 1127 && StateNo = 243 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger9 = var(7) && (StateNo = [200,450]) && MoveContact && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))


[State -1, MAX Buster Wolf]
type = ChangeState
value = 3350
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && var(20) <= 60;power >= 2000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && (EnemyNear, StateNo != [120,155])
triggerAll = (P2BodyDist x = [0,250])
triggerAll = P2StateType != A && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100, 101])) && Random < (80 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]),170,50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4
trigger3 = var(7) && StateNo = 1101 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger4 = var(7) && StateNo = 1201 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger5 = var(7) && StateNo = 1301 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger6 = var(7) && StateNo = 1501 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger7 = var(7) && StateNo = 1000 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger8 = var(7) && StateNo = 1127 && StateNo = 243 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger9 = var(7) && (StateNo = [200,450]) && MoveContact && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))

[State -1, Buster Wolf]
type = ChangeState
value = 3300
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60;power >= 2000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && (EnemyNear, StateNo != [120,155])
triggerAll = (P2BodyDist x = [0,250])
triggerAll = P2StateType != A && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100, 101])) && Random < (80 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]),170,50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4
trigger3 = var(7) && StateNo = 1101 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger4 = var(7) && StateNo = 1201 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger5 = var(7) && StateNo = 1301 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger6 = var(7) && StateNo = 1501 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger7 = var(7) && StateNo = 1000 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger8 = var(7) && StateNo = 1127 && StateNo = 243 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger9 = var(7) && (StateNo = [200,450]) && MoveContact && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))

[State -1, MAX Overheat Geyser]
type = ChangeState
value = 3250
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && var(20) <= 60;power >= 2000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && (EnemyNear, StateNo != [120,155])
triggerAll = (P2BodyDist x = [0,180])
triggerAll = P2StateType != A && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100, 101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]),200,50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4
trigger3 = var(7) && StateNo = 1101 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger4 = var(7) && StateNo = 1201 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger5 = var(7) && StateNo = 1301 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger6 = var(7) && StateNo = 1501 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger7 = var(7) && StateNo = 1000 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger8 = var(7) && StateNo = 1127 && StateNo = 243 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger9 = var(7) && (StateNo = [200,450]) && MoveContact && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))

[State -1, Overheat Geyser]
type = ChangeState
value = 3200
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60;power >= 2000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && (EnemyNear, StateNo != [120,155])
triggerAll = (P2BodyDist x = [0,180])
triggerAll = P2StateType != A && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100, 101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]),200,50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4
trigger3 = var(7) && StateNo = 1101 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger4 = var(7) && StateNo = 1201 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger5 = var(7) && StateNo = 1301 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger6 = var(7) && StateNo = 1501 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger7 = var(7) && StateNo = 1000 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger8 = var(7) && StateNo = 1127 && StateNo = 243 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger9 = var(7) && (StateNo = [200,450]) && MoveContact && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))


[State -1, MAX Triple Geyser]
type = ChangeState
value = 3050
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 2000 && var(20) <= 60
triggerAll = !var(39)
triggerAll = !var(16) && (var(15) < 1 || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerall = (P2BodyDist x = [0,250]) && (P2Dist y = [-120,0]) && (EnemyNear, StateType != L) && (EnemyNear, vel y >= 0)
triggerAll = P2StateType != L && (P2Dist y = [-110,0])
triggerAll = ((P2BodyDist x = [-30,30]) && P2StateType != A) || ((P2BodyDist x = [-5,55]) && P2StateType = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (10 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4
trigger3 = var(7) && (StateNo = [200,450]) && MoveContact && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger4 = var(7) && StateNo = 1127 && StateNo = 243 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger5 = var(7) && (P2BodyDist x = [0,-60]) && StateNo = 1501 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))

[State -1, Power Geyser]
type = ChangeState
value = 3000
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000, 4999]))
triggerAll = !(EnemyNear, ctrl) && (EnemyNear, StateNo != [120,155])
triggerAll = (P2BodyDist x = [0,-60])
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != A
triggerAll = P2StateType != L && (P2Dist y = [-110,0])
triggerAll = ((P2BodyDist x = [-30,30]) && P2StateType != A) || ((P2BodyDist x = [-5,55]) && P2StateType = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4
trigger3 = var(7) && (StateNo = [200,450]) && MoveContact && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger4 = var(7) && StateNo = 1127 && StateNo = 243 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))
trigger5 = var(7) && (P2BodyDist x = [0,-60]) && StateNo = 1501 && var(10) != 2 && Random < (500 * (AILevel ** 2 / 64.0))

[State -1, Power Geyser]
type = ChangeState
value = 3000
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(39)
triggerAll = !var(16) && (var(15) < 1 || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerall = (P2BodyDist x = [0,45]) && (P2Dist y = [-40,0]) && (EnemyNear, StateType != L) && (EnemyNear, vel y >= 0)
triggerAll = P2StateType != L && (P2Dist y = [-110,0])
triggerAll = ((P2BodyDist x = [-30,30]) && P2StateType != A) || ((P2BodyDist x = [-5,55]) && P2StateType = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (10 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, Taunt]
type = ChangeState
value = 195
triggerAll = AILevel && NumEnemy
triggerAll = StateType != A && Life >= 0.5 * LifeMax
triggerAll = (EnemyNear, Life) <= 0.5 * (EnemyNear, LifeMax)
trigger1 = ctrl
trigger1 = P2Dist x >= 160 && !(EnemyNear, ctrl)
trigger1 = (EnemyNear, MoveType = H) && (EnemyNear, HitFall) && Random < (50 * (AILevel ** 2 / 64.0))

