; ________________________________________________
;| Haohmaru by KarmaCharmeleon		|
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SPECIAL MOVES>=======================================
;==============================================================================================

;========================<SENPUU RETSU ZAN>=============================
[StateDef 1000]
type = S
physics = N
moveType = A
anim = 1000 + var(40) * 10000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(Random < 500, 1, 0)

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 && var(40) != 1
trigger2 = !Time && var(40) = 1
value = 1000, 0 + (var(40) = 1) * 10
channel = 0

[State 1000, Woosh]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 8
channel = 3

[State 1000, Senpuu Retsu Zan Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1005, 0
channel = 1

[State 1000, PosAdd]
type = PosAdd
trigger1 = AnimElem = 6
x = 16.9832402235

[State 1000, PosAdd]
type = PosAdd
trigger1 = AnimElem = 7
x = 2.68156424581

[State 1000, PosAdd]
type = PosAdd
trigger1 = AnimElem = 8
x = 15.1955307263

[State 1000, PosAdd]
type = PosAdd
trigger1 = AnimElem = 9
x = 14.3016759777

[State 1000, PosAdd]
type = PosAdd
trigger1 = AnimElem = 10
x = 8.93854748603

[State 1000, PosAdd]
type = PosAdd
trigger1 = AnimElem = 15
x = -11.6201117318

[State 1000, PosAdd]
type = PosAdd
trigger1 = AnimElem = 16
trigger2 = AnimElem = 17
x = -23.2402234637

[State 1000, Projectile]
type = Helper
trigger1 = AnimElem = 7
helperType = Normal
stateNo = 1005
ID = 1005
name = "Senpuu Retsu Zan Projectile"
posType = P1
pos = 65, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1000, Width]
type = Width
trigger1 = AnimElemTime(6) = 0
value = 20, 0

[State 1000, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX SENPUU RETSU ZAN>=============================
[StateDef 1030]
type = S
physics = N
moveType = A
anim = 1030 + var(40) * 10000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1030, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1030, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1030, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 27

[State 1030, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = 0, -65
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1030, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 1

[State 1030, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 && var(40) != 1
trigger2 = !Time && var(40) = 1
value = 1000, 0 + (var(40) = 1) * 10
channel = 0

[State 1030, Woosh]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 8
channel = 4

[State 1030, Senpuu Retsu Zan Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1005, 0
channel = 3

[State 1000, PosAdd]
type = PosAdd
trigger1 = AnimElem = 6
x = 16.9832402235

[State 1000, PosAdd]
type = PosAdd
trigger1 = AnimElem = 7
x = 2.68156424581

[State 1000, PosAdd]
type = PosAdd
trigger1 = AnimElem = 8
x = 15.1955307263

[State 1000, PosAdd]
type = PosAdd
trigger1 = AnimElem = 9
x = 14.3016759777

[State 1000, PosAdd]
type = PosAdd
trigger1 = AnimElem = 10
x = 8.93854748603

[State 1000, PosAdd]
type = PosAdd
trigger1 = AnimElem = 15
x = -11.6201117318

[State 1000, PosAdd]
type = PosAdd
trigger1 = AnimElem = 16
trigger2 = AnimElem = 17
x = -23.2402234637

[State 1030, Projectile]
type = Helper
trigger1 = AnimElem = 7
helperType = Normal
stateNo = 1035
ID = 1035
name = "EX Senpuu Retsu Zan Projectile"
posType = P1
pos = 65, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1030, Width]
type = Width
trigger1 = AnimElemTime(6) = 0
value = 20, 0

[State 1030, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<FAKE SENPUU RETSU ZAN>=============================
[StateDef 1050]
type = S
physics = N
moveType = A
anim = 1050
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1050, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1050, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1050, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1050, 0
channel = 0

[State 1050, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 1050, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<KOGETSU ZAN>==========================
[StateDef 1100]
type = S
physics = N
moveType = A
anim = 1100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1100, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1100, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(P2MoveType = H || P2Dist x > 110 || Random < 333, 2, ifElse(Random < 500 || P2Dist x > 65, 1, 0))

[State 1100, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = (ifElse(var(10) = 2, 1120, ifElse(var(10) = 1, 1110, 1100)))

[State 1100, Voice]
type = PlaySnd
trigger1 = !Time
value = 1100, 0
channel = 0

[State 1100, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 2
channel = 1

[State 1100, Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1100, 1
channel = 3

[State 1100, VelSet]
type = VelSet
trigger1 = !Time
x = ifElse(var(10) = 2, 1.11731843575, ifElse(var(10) = 1, 0.55865921787, 0.27932960893))

[State 1100, Slash Effect 1]
type = Explod
trigger1 = AnimElem = 2
anim = 11100
ID = 11100
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 1100, Slash Effect 2]
type = Explod
trigger1 = AnimElem = 6
anim = 11101 + var(10) * 10
ID = 11101
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = ifElse(var(10) = 2, 8.93854748603, ifElse(var(10) = 1, 6.70391061453, 4.46927374302))
y = ifElse(var(10) = 2, -13.75, ifElse(var(10) = 1, -11.25, -8.75))

[State 1100, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(8) > 0
x = -0.69832402234
y = 0.5859375

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElemTime(8) > 0 && vel x <= 0
x = 0

[State 1100, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 8
stateType = A
physics = N

[State 1100, Dust Helper]
type = Helper
trigger1 = AnimElem = 8
helperType = Normal
stateNo = 8100
ID = 8100
name = "Kogetsu Zan Dust"
posType = P1
ownPal = 1

[State 1100, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 8
value = 41, 0
channel = 5

[State 1100, HitDef (Ground Hit 1)]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 70, ifElse(var(10) = 1, 63, 98)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 70, ifElse(var(10) = 1, 63, 98)))), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 10
ground.slideTime = 10
guard.hitTime = 10
air.hitTime = 120
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8018)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef (Ground Hit 2)]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4 && !MoveContact && !MoveReversed
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 70, ifElse(var(10) = 1, 63, 98)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 70, ifElse(var(10) = 1, 63, 98)))), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 12, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 10
ground.slideTime = 10
guard.hitTime = 10
air.hitTime = 120
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8018)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -135
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef (Air Hit 1)]
type = HitDef
trigger1 = !var(16) && (var(15) < ifElse(var(10), (1 + HitCount), 1) || var(20))
trigger1 = AnimElem = 8
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10), 42, 98) < 7, 7, fvar(11) * ifElse(var(10), 42, 98))), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8018)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 65), var(36) := -100
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef (Air Hit 2)]
type = HitDef
trigger1= !var(16) && (var(15) < ifElse(var(10), (1 + HitCount), 1) || var(20))
trigger1 = AnimElem = 9 && !MoveContact && !MoveReversed
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10), 42, 98) < 7, 7, fvar(11) * ifElse(var(10), 42, 98))), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8018)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 33), var(36) := -163
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, Blood]
type = Helper
trigger1 = HitPauseTime = ifElse(var(20), 5, 11)
trigger1 = MoveHit = 1 && NumTarget
helperType = Normal
stateNo = 8052
ID = 8050
name = "Blood"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(35), ceil(P2Dist x), var(35))), var(36)
facing = -1
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(10) >= 0
moveType = I

[State 1100, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1101


;Landing
[StateDef 1101]
type = S
anim = ifElse(PrevStateNo = 1130, 1131, 1101)
physics = N
moveType = I
velSet = 0,0

[State 1101, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1101, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1101, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0
channel = 1

[State 1101, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<EX KOGETSU ZAN>==========================
[StateDef 1130]
type = S
physics = N
moveType = A
anim = 1130
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1130, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1130, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1130, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 21

[State 1130, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = -40, -77
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1130, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 1

[State 1130, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
value = SCA
time = 1

[State 1130, Voice]
type = PlaySnd
trigger1 = !Time
value = 1100, 0
channel = 0

[State 1130, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 2
channel = 3

[State 1130, Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1100, 1
channel = 4

[State 1130, VelSet]
type = VelSet
trigger1 = !Time
x = 1.67597765363

[State 1130, Slash Effect 1]
type = Explod
trigger1 = AnimElem = 2
anim = 11100
ID = 11100
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 1130, Slash Effect 2]
type = Explod
trigger1 = AnimElem = 6
anim = 11121
ID = 11101
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1130, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = 11.1731843575
y = -13.75

[State 1130, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(8) > 0
x = -0.69832402234
y = 0.5859375

[State 1130, VelSet]
type = VelSet
trigger1 = AnimElemTime(8) > 0 && vel x <= 0
x = 0

[State 1130, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 8
stateType = A
physics = N

[State 1130, Dust Helper]
type = Helper
trigger1 = AnimElem = 8
helperType = Normal
stateNo = 8100
ID = 8100
name = "Kogetsu Zan Dust"
posType = P1
ownPal = 1

[State 1130, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 8
value = 41, 0
channel = 5

[State 1130, HitDef (Ground Hit 1)]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 10
ground.slideTime = 10
guard.hitTime = 10
air.hitTime = 120
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8018)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, HitDef (Ground Hit 2)]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount))
trigger1 = AnimElem = 4
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 8, 8
guard.pauseTime = 8, 8
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 10
ground.slideTime = 10
guard.hitTime = 10
air.hitTime = 120
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8018)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -135
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, HitDef (Air Hit 1)]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount))
trigger1 = AnimElem = 8
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8018)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 65), var(36) := -100
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, HitDef (Air Hit 2)]
type = HitDef
trigger1= !var(16) && (var(15) < (1 + HitCount))
trigger1 = AnimElem = 9
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 8, 8
guard.pauseTime = 8, 8
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8018)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 33), var(36) := -163
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, Blood]
type = Helper
trigger1 = HitPauseTime = ifElse(var(20), 5, 11)
trigger1 = MoveHit = 1 && NumTarget
helperType = Normal
stateNo = 8052
ID = 8050
name = "Blood"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(35), ceil(P2Dist x), var(35))), var(36)
facing = -1
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1130, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(10) >= 0
moveType = I

[State 1130, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1101



;=====================<RESSHIN ZAN>==========================
[StateDef 1200]
type = S
physics = N
moveType = A
anim = 1200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1200, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1200, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = Random % 2

[State 1200, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = (ifElse(var(10) = 2, 1220, ifElse(var(10) = 1, 1210, 1200)))

[State 1200, PosAdd]
type = VelSet
trigger1 = AnimElemTime(2) = 1
x = ifElse(var(10) = 2, 6.70391061453, ifElse(var(10) = 1, 5.02793296089, 3.35195530726))
y = ifElse(var(10) = 2, -7.5, ifElse(var(10) = 1, -6.25, -5))

[State 1200, PosAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 1
y = 0.5859375

[State 1200, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 2
stateType = A
physics = N

[State 1200, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8100
ID = 8100
name = "Kogetsu Zan Dust"
posType = P1
ownPal = 1

[State 1200, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 41, 0
channel = 4

[State 1200, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(2) = 1
value = 110, 0
channel = 5

[State 1200, Voice]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1200, 0
channel = 0

[State 1200, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1201


;Landing
[StateDef 1201]
type = S
physics = N
moveType = A
anim = 1201
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 1201, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1201, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1201, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 1200, 1
channel = 1

[State 1201, Slash Effect 1]
type = Explod
trigger1 = !Time
anim = 11200
ID = 11200
sprPriority = 4
bindtime = -1
posType = P1
pos = 54, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1201, Slash Effect 2]
type = Explod
trigger1 = !Time
anim = 11201
ID = 11201
sprPriority = 3
bindtime = -1
posType = P1
pos = 54, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1201, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !MoveContact && !MoveReversed
ID = 1201
attr = S, SA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 98, ifElse(var(10) = 1, 91, 84)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 98, ifElse(var(10) = 1, 91, 84)))), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 16
ground.slideTime = 16
guard.hitTime = 16
air.hitTime = 120
ground.velocity = -4.46927374302, 10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, 10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8018)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 47), var(36) := -10
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1201, Blood]
type = Helper
trigger1 = HitPauseTime = ifElse(var(20), 5, 11)
trigger1 = MoveHit = 1 && NumTarget
helperType = Normal
stateNo = 8052
ID = 8050
name = "Blood"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(35), ceil(P2Dist x), var(35))), var(36)
facing = -1
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1201, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1201) > 1
ID = 1201
keepOne = 1
excludeID = 1201
ignoreHitPause = 1

[State 1201, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1201)
trigger1 = !(Target(1201), Time)
value = ifElse(Target(1201), StateType = A, 5425, 5420)
ID = 1201
ignoreHitPause = 1

[State 1201, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 1201, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<SLAMMED AGAINST THE GROUND>=============================
;Being Slammed (Standing)
[StateDef 5420]
type = U
moveType = H
physics = N
velset = 0,0

[State 5420, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = ifElse(SelfAnimExist(5111) || SelfAnimExist(5112), 5012, 5070)

[State 5420, ChangeAnim]
type = ChangeAnim
trigger1 = SelfAnimExist(5420 + (StateType = C))
value = 5420 + (StateType = C)

[State 5420, End]
type = SelfState
trigger1 = HitShakeOver && pos y < 0
trigger2 = StateType = L && P2StateNo != 1230
value = 5030

[State 5420, End]
type = ChangeState
trigger1 = HitShakeOver && pos y >= 0
value = 5421


;Hitting the Ground
[StateDef 5421]
type = L
moveType = H
physics = N
velSet = 0,0

[State 5421, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(SelfAnimExist(5102) && PrevStateNo != 5426, 5102, ifElse(SelfAnimExist(5101) && PrevStateNo != 5426, 5101, 5100))

[State 5421, ChangeAnim]
type = ChangeAnim
triggerall = !Time && PrevStateNo != 5426
trigger1 = SelfAnimExist(5422)
value = 5422

[State 5421, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 5421, HitFallDamage]
type = HitFallDamage
trigger1 = !Time

[State 5421, EnvShake]
type = EnvShake
trigger1 = !Time
time = 14
ampl = -4

[State 5421, Impact Sound]
type = PlaySnd
trigger1 = !Time
value = F7,1

[State 5421, Hitting the Floor FX]
type = Explod
trigger1 = !Time
anim = F61
posType = P1
pos = 0, 0
sprPriority = -3

[State 5421, End]
type = ChangeState
trigger1 = !AnimTime
trigger2 = Anim = 5100 + (Anim % 10)
trigger2 = Time = 4
trigger2 = Anim != 5422
trigger3 = Anim = 5422
trigger3 = AnimTime = 0 || Time = 12
value = 5422


;Bouncing Off Ground
[StateDef 5422]
type = L
moveType = H
physics = N

[State 5422, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(SelfAnimExist(5160 + Anim % 10), 5160 + Anim % 10, 5160)

[State 5422, ChangeAnim]
type = ChangeAnim
triggerall = !Time && Anim = 5422
trigger1 = SelfAnimExist(5424)
value = 5424

[State 5422, VelSet]
type = VelSet
trigger1 = !Time
y = -3.75

[State 5422, PosSet]
type = PosSet
trigger1 = !Time
y = const(movement.down.bounce.offset.y)

[State 5422, PosAdd]
type = PosAdd
trigger1 = !Time
x = const(movement.down.bounce.offset.x)

[State 5422, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.625

[State 5422, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5424
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.down.bounce.groundlevel)
value = ifElse(SelfAnimExist(5162), 5162, ifElse(SelfAnimExist(5161), 5161, 5160))

[State 5422, End]
type = SelfState
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.down.bounce.groundlevel)
value = 5110


;Aerial Being Slammed (Hitshake)
[StateDef 5425]
type = A
moveType = H
physics = N
velSet = 0,0

[State 5425, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5070

[State 5425, ChangeAnim]
type = ChangeAnim
trigger1 = Time > 0
value = Anim

[State 5425, ChangeAnim]
type = ChangeState
trigger1 = HitShakeOver
value = 5426


;Aerial Being Slammed (Knocked Away)
[StateDef 5426]
type = A
moveType = H
physics = N
ctrl = 0

[State 5426, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = GetHitVar(yaccel)

[State 5426, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

[State 5426, ChangeState]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.air.gethit.trip.groundlevel)
value = 5421



;=====================<EX RESSHIN ZAN>==========================
[StateDef 1230]
type = S
physics = N
moveType = A
anim = 1230
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1230, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1230, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1230, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 25

[State 1230, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = 10, -85
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1230, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 1

[State 1230, PosAdd]
type = VelSet
trigger1 = AnimElemTime(2) = 1
x = ifElse(P2Dist X / 25 > 5.02793296089, 5.02793296089, P2Dist X / 25)
y = -5

[State 1230, PosAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 1
y = 0.5859375

[State 1230, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 2
stateType = A
physics = N

[State 1230, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8100
ID = 8100
name = "Kogetsu Zan Dust"
posType = P1
ownPal = 1

[State 1230, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(2) = 0
value = 41, 0
channel = 4

[State 1230, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(2) = 1
value = 110, 0
channel = 5

[State 1230, Voice]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1200, 0
channel = 0

[State 1230, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1231


;Landing
[StateDef 1231]
type = S
physics = N
moveType = A
anim = 1231
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 1231, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 6

[State 1231, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1231, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State Explod, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 1200, 1
channel = 1

[State 1231, Slash Effect 1]
type = Explod
trigger1 = !Time
anim = 11200
ID = 11200
sprPriority = 4
bindtime = -1
posType = P1
pos = 54, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1231, Slash Effect 2]
type = Explod
trigger1 = !Time
anim = 11201
ID = 11201
sprPriority = 3
bindtime = -1
posType = P1
pos = 54, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1231, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = !MoveContact && !MoveReversed
ID = 1231
attr = S, SA
hitFlag = MAFD
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(P2StateType = L, 49, 126) < 7, 7, fvar(11) * ifElse(P2StateType = L, 49, 126))), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 16
ground.slideTime = 16
guard.hitTime = 16
air.hitTime = 120
down.hitTime = 34
ground.velocity = -4.46927374302, 10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, 10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
down.velocity = 0, 0
down.cornerpush.veloff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8018)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 47), var(36) := -10
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1231, Blood]
type = Helper
trigger1 = HitPauseTime = ifElse(var(20), 5, 11)
trigger1 = MoveHit = 1 && NumTarget
helperType = Normal
stateNo = 8052
ID = 8050
name = "Blood"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(35), ceil(P2Dist x), var(35))), var(36)
facing = -1
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1231, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1231) > 1
ID = 1231
keepOne = 1
excludeID = 1231
ignoreHitPause = 1

[State 1231, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1231)
trigger1 = !(Target(1231), Time)
value = ifElse(Target(1231), StateType = L, 1245, ifElse(Target(1231), StateType = A, 5425, 5420))
ID = 1231
ignoreHitPause = 1

[State 1231, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 1231, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Hit by EX Resshin Zan
[StateDef 1245]
type = L
moveType = H
physics = N
velSet = 0, 0

[State 1245, PosSet]
type = PosSet
trigger1 = 1
y = 0
ignoreHitPause = 1

[State 1245, VarSet]
type = VarSet
trigger1 = !Time
sysvar(2) = 5080

[State 1245, VarAdd]
type = VarAdd
trigger1 = !Time
trigger1 = (Anim = [5081, 5089]) || (Anim = [5111, 5119])
trigger1 = SelfAnimExist(sysvar(2) + (Anim % 10))
sysvar(2) = Anim % 10

[State 1245, VarSet]
type = VarSet
trigger1 = !Time
trigger1 = sysvar(2) = 5090
trigger1 = !SelfAnimExist(5090)
sysvar(2) = 5030

[State 1245, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = sysvar(2)

[State 1245, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
value = 1246


;Knocked back
[Statedef 1246]
type = L
moveType = H
physics = C

[State 1246, PosSet]
type = PosSet
trigger1 = 1
y = 0
ignoreHitPause = 1

[State 1246, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1

[State 1246, VelSet]
type = VelSet
trigger1 = HitOver
x = 0

[State 1246, VarSet]
type = VarSet
trigger1 = !Time
sysvar(0) = 1

[State 1246, ChangeState]
type = ChangeState
trigger1 = HitOver && Alive
value = 1247

[State 1246, SelfState]
type = SelfState
trigger1 = HitOver && !Alive
value = 5150


;Recover
[StateDef 1247]
type = L
moveType = H
physics = N

[State 1247, FallEnvShake]
type = FallEnvShake
trigger1 = !Time

[State 1247, ChangeAnim]
type = ChangeAnim
trigger1 = SelfAnimExist(5110 + (Anim % 10))
trigger1 = Anim = [5081, 5089]
value = 5110 + (Anim % 10)
persistent = 0

[State 1247, ChangeAnim]
type = ChangeAnim
triggerAll = !Time
triggerAll = Anim != [5110, 5119]
trigger1 = Anim != [5161, 5169]
trigger2 = !SelfAnimExist(5170 + (Anim % 10))
value = 5170

[State 1247, ChangeAnim]
type = ChangeAnim
triggerAll = !Time
triggerAll = Anim != [5110, 5119]
trigger1 = Anim = [5161, 5169]
trigger1 = SelfAnimExist(5170 + (Anim % 10))
value = 5170 + (Anim % 10)

[State 1247, HitFallDamage]
type = HitFallDamage
trigger1 = !Time

[State 1247, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 1247, VarSet]
type = VarSet
trigger1 = !Time
trigger1 = GetHitVar(fall.yVel) != 0
sysvar(1) = floor(vel y)

[State 1247, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = !sysvar(0)
value = F7, (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56))

[State 1247, Explod]
type = Explod
trigger1 = !Time
trigger1 = !sysvar(0)
anim = F(60 + (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56)))
pos = 0, 0
sprPriority = ifElse(sysvar(1) <= Const720p(56), -10, 10)

[State 1247, VelSet]
type = VelSet
trigger1 = !Time
y = 0

[State 1247, ChangeAnim]
type = ChangeAnim
triggerAll = Anim = [5171,5179]
triggerAll = SelfAnimExist(5110 + (Anim % 10))
trigger1 = !AnimTime
trigger2 = sysvar(0)
value = 5110 + (Anim % 10)
persistent = 0

[State 1247, ChangeAnim]
type = ChangeAnim
triggerAll = Anim != [5111, 5119]
trigger1 = !AnimTime
trigger2 = sysvar(0)
value = 5110
persistent = 0

[State 1247, SelfState]
type = SelfState
triggerAll = !Alive
trigger1 = !AnimTime
trigger2 = sysvar(0)
trigger3 = Anim = [5110, 5119]
value = 5150

[State 1247, VarSet]
type = VarSet
trigger1 = sysvar(0)
trigger1 = !Time
sysvar(0) = 0

[State 1247, VelMul]
type = VelMul
trigger1 = 1
x = 0.85

[State 1247, VelSet]
type = VelSet
trigger1 = abs(Vel X) < const(movement.down.friction.threshold)
persistent = 0
x = 0

[State 1247, SelfState]
type = SelfState
trigger1 = !Time
value = 5120



;========================<SAKE KOGEKI>=============================
[StateDef 1300]
type = S
physics = S
moveType = A
anim = 1300
ctrl = 0
velset = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1300, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "a" || command = "rlsa"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1300, Button Detect]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1300, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 4, 2
channel = 0

[State 1300, Woosh]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 2
channel = 1

[State 1300, Woosh]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1300, 0
channel = 3

[State 1300, Width]
type = Width
trigger1 = AnimElemTime(6) = 1
value = 30, 0

[State 1300, Projectile Reflector]
type = Helper
trigger1 = AnimElem = 7
helperType = Normal
stateNo = 1305
ID = 1305
name = "Projectile Reflector"
posType = P1
pos = 0, 0
size.xScale = 0.5
size.yScale = 0.5
keyctrl = 1
ownpal = 1
facing = 1
persistent = 0
ignorehitpause = 1

[State 1300, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(9) < 0
trigger1 = NumHelper(1305)
value = SCA, NP, SP, HP

[State 1300, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 7
trigger2 = AnimElem = 8 && !MoveContact && !MoveReversed
ID = 1300
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.46927374302, 10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, 10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 85), var(36) := -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1300, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1300) > 1
ID = 1300
keepOne = 1
excludeID = 1300
ignoreHitPause = 1

[State 1300, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1300)
trigger1 = !(Target(1300), Time)
value = ifElse(Target(1300), StateType = A, 5425, 5420)
ID = 1300
ignoreHitPause = 1

[State 1300, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
moveType = I

[State 1300, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX SAKE KOGEKI>=============================
[StateDef 1330]
type = S
physics = S
moveType = A
anim = 1330
ctrl = 0
velset = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1330, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1330, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1330, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 16

[State 1330, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = -22, -85
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1330, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 1

[State 1330, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 4, 2
channel = 0

[State 1330, Woosh]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 2
channel = 3

[State 1300, Woosh]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1300, 0
channel = 4

[State 1330, Width]
type = Width
trigger1 = AnimElemTime(6) = 1
value = 30, 0

[State 1330, Projectile Reflector]
type = Helper
trigger1 = AnimElem = 7
helperType = Normal
stateNo = 1305
ID = 1305
name = "Projectile Reflector"
posType = P1
pos = 0, 0
size.xScale = 0.5
size.yScale = 0.5
keyctrl = 1
ownpal = 1
facing = 1
persistent = 0
ignorehitpause = 1

[State 1330, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(9) < 0
trigger1 = NumHelper(1305)
value = SCA, NP, SP, HP

[State 1330, Auto Guard]
type = ReversalDef
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(7) < 0
reversal.attr = SCA, NA, SA
pauseTime = 12, 18
sparkNo = -1 + 0 * (var(33) := 8001)
sparkXY = -10 + 0 * (var(35) := 34), (var(36) := -78)
hitSound = S3, 0
numHits = 0

[State 1330, HitDef]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = AnimElem = 7
trigger2 = AnimElem = 8 && !MoveContact && !MoveReversed
ID = 1330
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 105 < 7, 7, fvar(11) * 105)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.46927374302, 10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, 10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 85), var(36) := -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1330, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1330) > 1
ID = 1330
keepOne = 1
excludeID = 1330
ignoreHitPause = 1

[State 1330, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1330)
trigger1 = !(Target(1330), Time)
value = ifElse(Target(1330), StateType = A, 5425, 5420)
ID = 1330
ignoreHitPause = 1

[State 1330, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
moveType = I

[State 1330, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<SENPUU HA>=============================
[StateDef 1400]
type = S
physics = N
moveType = A
anim = 1400
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1400, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1400, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = 0

[State 1400, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = (ifElse(var(10) = 2, 1420, ifElse(var(10) = 1, 1410, 1400)))

[State 1400, Voice]
type = PlaySnd
trigger1 = !Time
value = 1400, 0
channel = 0

[State 1400, Woosh]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 8
channel = 3

[State 1400, Senpuu Retsu Zan Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1400, 1
channel = 1

[State 1400, Projectile]
type = Helper
trigger1 = AnimElem = 6
helperType = Normal
stateNo = 1405
ID = 1405
name = "Senpuu Ha Projectile"
posType = P1
pos = 50, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1400, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX SENPUU HA>=============================
[StateDef 1430]
type = S
physics = N
moveType = A
anim = 1430
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1430, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1430, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1430, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 27

[State 1430, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = 0, -65
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1430, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 1

[State 1430, Voice]
type = PlaySnd
trigger1 = !Time
value = 1400, 0
channel = 0

[State 1430, Woosh]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 8
channel = 3

[State 1430, Senpuu Retsu Zan Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1400, 1
channel = 4

[State 1430, Projectile]
type = Helper
trigger1 = AnimElem = 6
helperType = Normal
stateNo = 1405
ID = 1435
name = "Senpuu Ha Projectile"
posType = P1
pos = 50, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1430, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<NAGI YAIBA>=============================
[StateDef 1500]
type = S
physics = N
moveType = A
anim = 1500
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1500, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1500, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = 0

[State 1500, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = (ifElse(var(10) = 2, 1520, ifElse(var(10) = 1, 1510, 1500)))

[State 1500, Voice]
type = PlaySnd
trigger1 = !Time
value = 1500, 0
channel = 0

[State 1400, Woosh]
type = PlaySnd
trigger1 = !Time
value = 1, 0
channel = 3

[State 1500, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAF
priority = 1, Miss
getPower = 0, 0
givePower = 0, 0
ground.type = None
air.type = None
sparkNo = -1
guard.sparkNo = -1
sparkXY = -1, -1
hitSound = -1
guardSound = -1
fall = 1
fall.recover = 1
numHits = 0
p1StateNo = 1505

[State 1500, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Success
[StateDef 1505]
type = S
physics = N
moveType = A
anim = 1505
ctrl = 0
velSet = 0, 0
sprPriority = 1
faceP2 = 1

[State 1505, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1, 2
channel = 1

[State 1505, Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1100, 1
channel = 3

[State 1505, VelSet]
type = VelSet
trigger1 = !Time
x = 1.11731843575

[State 1505, Slash Effect]
type = Explod
trigger1 = !Time
anim = 11505
ID = 11505
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 1505, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 4.46927374302
y = -8.75

[State 1505, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 0
x = -0.69832402234
y = 0.5859375

[State 1505, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) > 0 && vel x <= 0
x = 0

[State 1505, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1505, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Nagi Yaiba Dust"
posType = P1
ownPal = 1

[State 1505, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 41, 0
channel = 5

[State 1505, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
value = SCA
time = 1

[State 1505, HitDef (Ground Hit 1)]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 98 < 7, 7, fvar(11) * 98)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 10
ground.slideTime = 10
guard.hitTime = 10
air.hitTime = 120
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8018)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1505, HitDef (Ground Hit 2)]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3 && !MoveContact && !MoveReversed
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 12, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 10
ground.slideTime = 10
guard.hitTime = 10
air.hitTime = 120
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8018)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -135
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1505, HitDef (Air Hit)]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4 && !MoveContact && !MoveReversed
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8018)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 33), var(36) := -163
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1505, Blood]
type = Helper
trigger1 = HitPauseTime = ifElse(var(20), 5, 11)
trigger1 = MoveHit = 1 && NumTarget
helperType = Normal
stateNo = 8052
ID = 8050
name = "Blood"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(35), ceil(P2Dist x), var(35))), var(36)
facing = -1
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1505, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 1505, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1506


;Landing
[StateDef 1506]
type = S
anim = ifElse(PrevStateNo = 1535, 1536, 1506)
physics = N
moveType = I
velSet = 0, 0

[State 1506, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1506, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1506, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 1

[State 1506, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX NAGI YAIBA>=============================
[StateDef 1530]
type = S
physics = N
moveType = A
anim = 1530
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1530, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1530, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1530, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 18

[State 1530, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = 30, -70
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1530, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 1

[State 1530, Voice]
type = PlaySnd
trigger1 = !Time
value = 1500, 0
channel = 0

[State 1530, Woosh]
type = PlaySnd
trigger1 = !Time
value = 1, 0
channel = 3

[State 1530, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
value = SCA
time = 1

[State 1530, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAF
priority = 1, Miss
getPower = 0, 0
givePower = 0, 0
ground.type = None
air.type = None
sparkNo = -1
guard.sparkNo = -1
sparkXY = -1, -1
hitSound = -1
guardSound = -1
fall = 1
fall.recover = 1
numHits = 0
p1StateNo = 1535

[State 1530, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Success
[StateDef 1535]
type = S
physics = N
moveType = A
anim = 1535
ctrl = 0
velSet = 0, 0
sprPriority = 1
faceP2 = 1

[State 1535, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 20

[State 1535, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1, 2
channel = 3

[State 1535, Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1100, 1
channel = 4

[State 1535, VelSet]
type = VelSet
trigger1 = !Time
x = 0.55865921787

[State 1535, Slash Effect 1]
type = Explod
trigger1 = !Time
anim = 11535
ID = 11535
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 1535, Slash Effect 2]
type = Explod
trigger1 = AnimElem = 5
anim = 21535
ID = 11535
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1535, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = 4.46927374302
y = -8.75

[State 1535, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(7) > 0
x = -0.69832402234
y = 0.5859375

[State 1535, VelSet]
type = VelSet
trigger1 = AnimElemTime(7) > 0 && vel x <= 0
x = 0

[State 1535, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 7
stateType = A
physics = N

[State 1535, Dust Helper]
type = Helper
trigger1 = AnimElem = 7
helperType = Normal
stateNo = 8100
ID = 8100
name = "Nagi Yaiba Dust"
posType = P1
ownPal = 1

[State 1535, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 7
value = 41, 0
channel = 5

[State 1535, HitDef (Ground Hit 1)]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 2
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 10
ground.slideTime = 10
guard.hitTime = 10
air.hitTime = 120
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8018)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1535, HitDef (Ground Hit 2)]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3 && !MoveContact && !MoveReversed
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 10
ground.slideTime = 10
guard.hitTime = 10
air.hitTime = 120
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8018)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -135
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1535, HitDef (Air Hit 1)]
type = HitDef
trigger1= !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 7
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8018)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 65), var(36) := -100
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1535, HitDef (Air Hit 2)]
type = HitDef
trigger1= !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 8 && !MoveContact && !MoveReversed
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8018)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 33), var(36) := -163
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1535, Blood]
type = Helper
trigger1 = HitPauseTime = 11
trigger1 = MoveHit = 1 && NumTarget
helperType = Normal
stateNo = 8052
ID = 8050
name = "Blood"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(35), ceil(P2Dist x), var(35))), var(36)
facing = -1
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1535, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
moveType = I

[State 1535, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1506



;========================<GOU HA>=============================
[StateDef 1600]
type = S
physics = N
moveType = A
anim = 1600
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1600, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1600, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((PrevStateNo = 1430), 2, ifElse(PrevStateNo = 3410, 1, 0))

[State 1600, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = (ifElse(var(10) = 2, 1620, ifElse(var(10) = 1, 1610, 1600)))

[State 1600, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 41, 0
channel = 4

[State 1600, Voice]
type = PlaySnd
trigger1 = !Time
value = 1600, 0
channel = 0

[State 1600, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 5
channel = 1

[State 1600, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 1600, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) = 0
x = ifElse(var(10) = 2, 11.1731843575, ifElse(var(10) = 1, 10.0558659218, 8.93854748603))

[State 1600, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) = 8
x = 6.70391061453

[State 1600, VelSet]
type = VelAdd
trigger1 = AnimElemTime(3) > 8 && AnimElemTime(5) < 0
x = -0.34916201117

[State 1600, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = 10.7262569832

[State 1600, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) = 0
x = 0

[State 1600, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
ID = 1600
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 70, ifElse(var(10) = 1, 63, 56)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 70, ifElse(var(10) = 1, 63, 56)))), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(10) = 2, -6.70391061453, ifElse(var(10) = 1, -5.58659217877, -4.46927374302)), ifElse(var(10) = 2, -12.5, ifElse(var(10) = 1, -13.125, -13.75))
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(10) = 2, -6.70391061453, ifElse(var(10) = 1, -5.58659217877, -4.46927374302)), ifElse(var(10) = 2, -12.5, ifElse(var(10) = 1, -13.125, -13.75))
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.78125
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 45), var(36) := -40
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1600, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(12) && NumTarget(1600)
var(15) = 0

[State 1600, Gou Ha Juggle Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(1600)
var(12) = 1
persistent = 0

[State 1600, Juggle Flag]
type = VarSet
trigger1 = var(12) = 2
var(16) = 1

[State 1600, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 1600, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX GOU HA>=============================
[StateDef 1630]
type = S
physics = N
moveType = A
anim = 1630
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1630, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1630, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1630, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 18

[State 1630, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = 20, -55
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1630, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 1

[State 1630, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
value = SCA
time = 1

[State 1630, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 41, 0
channel = 4

[State 1630, Voice]
type = PlaySnd
trigger1 = !Time
value = 1600, 0
channel = 0

[State 1630, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 5
channel = 3

[State 1630, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 1630, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) = 0
x = 12.2905027933

[State 1630, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) = 8
x = 6.70391061453

[State 1630, VelSet]
type = VelAdd
trigger1 = AnimElemTime(3) > 8 && AnimElemTime(5) < 0
x = -0.34916201117

[State 1630, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = 10.7262569832

[State 1630, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) = 0
x = 0

[State 1630, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3
ID = 1630
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.46927374302, -13.75
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -13.75
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.78125
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 45), var(36) := -40
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1630, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(12) && NumTarget(1630)
var(15) = 0

[State 1630, Gou Ha Juggle Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(1630)
var(12) = 1
persistent = 0

[State 1630, Juggle Flag]
type = VarSet
trigger1 = var(12) = 2
var(16) = 1

[State 1630, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 1630, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<SHITATARI>=============================
[StateDef 1700]
type = S
physics = N
moveType = I
anim = 1700
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1700, Voice]
type = PlaySnd
trigger1 = !Time
value = 1700, 0
channel = 0

[State 810, Hit Sound]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = 2, 9
channel = 2

[State 1700, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 8
channel = 3

[State 1700, EnvShake]
type = EnvShake
trigger1 = AnimElemTime(4) = 0
time = 14
ampl = -4
freq = 120

[State 1700, Blood Effect]
type = Explod
trigger1 = AnimElem = 4
anim = 11700
ID = 11700
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 1, 1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1700, LifeAdd]
type = LifeAdd
trigger1 = AnimElem = 4
value = -196
kill = 0

[State 1700, Power]
type = PowerAdd
trigger1 = AnimElem = 4 && !var(20)
value = 928

[State 1700, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<PUNCH ZERO COUNTER>=============================
[StateDef 2900]
type = S
physics = N
moveType = A
anim = 2900
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0

[State 2900, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2900, Voice]
type = PlaySnd
trigger1 = !Time
value = ifElse(var(40) = 1, 1500, 1100), 0
channel = 0

[State 2900, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 2
channel = 1

[State 2900, Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1100, 1
channel = 3

[State 2900, VelSet]
type = VelSet
trigger1 = !Time
x = 0.55865921787

[State 2900, Slash Effect 1]
type = Explod
trigger1 = AnimElem = 2
anim = 11100
ID = 11100
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 2900, Slash Effect 2]
type = Explod
trigger1 = AnimElem = 6
anim = 12901
ID = 11101
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 2900, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = 6.70391061453
y = -11.25

[State 2900, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(8) > 0
x = -0.69832402234
y = 0.5859375

[State 2900, VelSet]
type = VelSet
trigger1 = AnimElemTime(8) > 0 && vel x <= -0.78125
x = 0

[State 2900, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 8
stateType = A
physics = N

[State 2900, Dust Helper]
type = Helper
trigger1 = AnimElem = 8
helperType = Normal
stateNo = 8100
ID = 8100
name = "Kogetsu Zan Dust"
posType = P1
ownPal = 1

[State 2900, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 8
value = 41, 0
channel = 5

[State 2900, HitDef (Ground Hit 1)]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 10
ground.slideTime = 10
guard.hitTime = 10
air.hitTime = 120
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8018)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2900, HitDef (Ground Hit 2)]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 4 && !MoveContact && !MoveReversed
attr = S, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 10
ground.slideTime = 10
guard.hitTime = 10
air.hitTime = 120
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8018)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -135
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2900, HitDef (Air Hit 1)]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount))
trigger1 = AnimElem = 8
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 16
guard.pauseTime = 12, 12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8018)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 65), var(36) := -100
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2900, HitDef (Air Hit 2)]
type = HitDef
trigger1= !var(16) && (var(15) < (1 + HitCount))
trigger1 = AnimElem = 9 && !MoveContact && !MoveReversed
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) *14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 16
guard.pauseTime = 12, 12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8018)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 33), var(36) := -163
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2900, Blood]
type = Helper
trigger1 = HitPauseTime = ifElse(var(20), 5, 11)
trigger1 = MoveHit = 1 && NumTarget
helperType = Normal
stateNo = 8052
ID = 8050
name = "Blood"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(35), ceil(P2Dist x), var(35))), var(36)
facing = -1
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 2900, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(10) >= 0
moveType = I

[State 2900, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 2901


;Landing
[StateDef 2901]
type = S
anim = 1101
physics = N
moveType = I
velSet = 0,0

[State 2901, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 2901, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 2901, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 1

[State 2901, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<KICK ZERO COUNTER>=============================
[StateDef 2910]
type = S
physics = N
moveType = A
anim = 2910
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0

[State 2910, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2910, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 4, 2 + (var(40) = 1) * 10
channel = 0

[State 2910, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 5
channel = 1

[State 2910, Slide Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 458
channel = 3

[State 2910, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8103
ID = 8100
name = "Slide Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 2910, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 8.51955307263

[State 2910, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) > 0 && vel x > 0
x = -0.52374301676

[State 2910, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = 0

[State 2910, HitDef]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6 && !MoveContact && !MoveReversed
attr = C, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getPower = 0, 0
givepower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -5.02793296089, -5.3125
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -5.02793296089, -5.3125
air.cornerPush.velOff = 0
yAccel = 0.5859375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 63), var(36) := -10
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2910, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) <= 0
trigger1 = HitPauseTime <= 10
value = 2910
elem = 6
ignoreHitPause = 1

[State 2910, StateTypeSet: Idle]
type = StateTypeset
trigger1= AnimElemTime(7) >= 0
moveType = I

[State 2910, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1