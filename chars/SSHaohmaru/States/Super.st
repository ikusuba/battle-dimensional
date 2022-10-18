; ________________________________________________
;| Haohmaru by KarmaCharmeleon		|
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SUPER STATES>========================================
;==============================================================================================

;========================<TENHA FUUJIN ZAN>=============================
[StateDef 3000]
type = S
physics = N
moveType = A
anim = 3000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3000, Juggle Reset]
type = VarSet
trigger1 = !Time
var(15) = 0

[State 3000, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3000, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3000, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3000, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3000, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3000, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(2) < 0
time = 1
value = SCA

[State 3000, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = -40, -77
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3000, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 3000, 0
channel = 0

[State 3000, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000, 1
channel = 0

[State 3000, Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 8
trigger3 = AnimElem = 14
trigger4 = AnimElem = 19
value = 1100, 1
channel = 3

[State 3000, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 1.11731843575

[State 3000, Slash Effect 1]
type = Explod
trigger1 = AnimElem = 2
anim = 13000
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

[State 3000, Slash Effect 2]
type = Explod
trigger1 = AnimElem = 7
trigger2 = AnimElem = 13
trigger3 = AnimElemTime(18) = 2
anim = 13001
ID = 11101
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3000, VelSet]
type = VelSet
trigger1 = AnimElem = 21
x = 8.93854748603
y = -11.25

[State 3000, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(21) > 0
x = -0.69832402234
y = 0.5859375

[State 3000, VelSet]
type = VelSet
trigger1 = AnimElemTime(21) > 0 && vel x <= 0
x = 0

[State 3000, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 21
stateType = A
physics = N

[State 3000, Dust Helper]
type = Helper
trigger1 = AnimElem = 21
helperType = Normal
stateNo = 8100
ID = 8100
name = "Kogetsu Zan Dust"
posType = P1
ownPal = 1

[State 3000, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 21
value = 41, 0
channel = 5

[State 3000, Ground Hit 1]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = AnimElem = 3
trigger2 = AnimElem = 9
trigger3 = AnimElem = 15
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 120
ground.velocity = -1.11731843575, 0
ground.cornerPush.velOff = 0
guard.velocity = -1.11731843575
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8019)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3000, Ground Hit 2]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 4
trigger2 = AnimElem = 10
trigger3 = AnimElem = 16
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 120
ground.velocity = -1.11731843575, 0
ground.cornerPush.velOff = 0
guard.velocity = -1.11731843575
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8019)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -135
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3000, Ground Hit 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 20
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Up
air.animType = Up
fall.animType = Up
ground.type = High
air.type = Low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 120
ground.velocity = -1.11731843575, -8.75
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -1.11731843575, -8.75
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8019)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3000, Air Hit 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 21
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Up
air.animType = Up
fall.animType = Up
ground.type = High
air.type = Low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 120
ground.velocity = -1.11731843575, -8.75
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -1.11731843575, -8.75
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8019)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 65), var(36) := -100
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3000, Air Hit 2]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 22
trigger2 = AnimElem = 23 && !MoveContact && !MoveReversed
trigger3 = AnimElem = 24 && !MoveContact && !MoveReversed
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Up
air.animType = Up
fall.animType = Up
ground.type = High
air.type = Low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 120
ground.velocity = -1.11731843575, -8.75
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -1.11731843575, -8.75
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8019)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 33), var(36) := -163
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3000, Blood]
type = Helper
trigger1 = HitPauseTime = 1
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

[State 3000, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(25) >= 0
moveType = I

[State 3000, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 3001


;Landing (Missed)
[StateDef 3001]
type = S
anim = 3001
physics = N
moveType = I
velSet = 0,0

[State 3001, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3001, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3001, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 3001, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<MAX TENHA FUUJIN ZAN>=============================
[StateDef 3050]
type = S
physics = N
moveType = A
anim = 3050
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3050, Juggle Reset]
type = VarSet
trigger1 = !Time
var(15) = 0

[State 3050, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3050, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3050, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3050, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3050, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 45

[State 3050, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3050, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3050, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 3050, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = -40, -77
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3050, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3050, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 3000, 0
channel = 0

[State 3050, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000, 1
channel = 0

[State 3050, Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 8
trigger3 = AnimElem = 14
trigger4 = AnimElem = 20
trigger5 = AnimElem = 26
trigger6 = AnimElem = 31
value = 1100, 1
channel = 3

[State 3050, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 2.23463687151

[State 3050, Slash Effect 1]
type = Explod
trigger1 = AnimElem = 2
anim = 13000
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

[State 3050, Slash Effect 2]
type = Explod
trigger1 = AnimElem = 7
trigger2 = AnimElem = 13
trigger3 = AnimElem = 19
trigger4 = AnimElem = 25
trigger5 = AnimElemTime(30) = 2
anim = 13001
ID = 11101
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3050, VelSet]
type = VelSet
trigger1 = AnimElem = 33
x = 8.93854748603
y = -16.25

[State 3050, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(33) > 0
x = -0.69832402234
y = 0.5859375

[State 3050, VelSet]
type = VelSet
trigger1 = AnimElemTime(33) > 0 && vel x <= 0
x = 0

[State 3050, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 33
stateType = A
physics = N

[State 3050, Dust Helper]
type = Helper
trigger1 = AnimElem = 33
helperType = Normal
stateNo = 8100
ID = 8100
name = "Kogetsu Zan Dust"
posType = P1
ownPal = 1

[State 3050, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 33
value = 41, 0
channel = 5

[State 3050, Ground Hit 1]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = AnimElem = 3
trigger2 = AnimElem = 9
trigger3 = AnimElem = 15
trigger4 = AnimElem = 21
trigger5 = AnimElem = 27
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 120
ground.velocity = -1.11731843575, 0
ground.cornerPush.velOff = 0
guard.velocity = -1.11731843575
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8019)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3050, Ground Hit 2]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 4
trigger2 = AnimElem = 10
trigger3 = AnimElem = 16
trigger4 = AnimElem = 22
trigger5 = AnimElem = 28
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 120
ground.velocity = -1.11731843575, 0
ground.cornerPush.velOff = 0
guard.velocity = -1.11731843575
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8019)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -135
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3050, Ground Hit 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 32
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Up
air.animType = Up
fall.animType = Up
ground.type = High
air.type = Low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 120
ground.velocity = -1.11731843575, -8.75
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -1.11731843575, -8.75
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8019)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3050, Air Hit 1]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElemTime(33) = 0
trigger2 = AnimElemTime(33) = 2
trigger3 = AnimElemTime(33) = 4
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Up
air.animType = Up
fall.animType = Up
ground.type = High
air.type = Low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 120
ground.velocity = -1.11731843575, -8.75
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -1.11731843575, -8.75
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8019)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 65), var(36) := -100
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3050, Air Hit 2]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 34
trigger2 = AnimElem = 35 && !MoveContact && !MoveReversed
trigger3 = AnimElem = 36 && !MoveContact && !MoveReversed
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Up
air.animType = Up
fall.animType = Up
ground.type = High
air.type = Low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 120
ground.velocity = -1.11731843575, -8.75
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -1.11731843575, -8.75
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8019)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 33), var(36) := -163
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3050, Blood]
type = Helper
trigger1 = HitPauseTime = 1
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

[State 3050, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(37) >= 0
moveType = I

[State 3050, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 3001



;========================<ISSEN>=============================
[StateDef 3150]
type = S
physics = N
moveType = A
anim = 3150
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 3150, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3150, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3150, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3150, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3150, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 43

[State 3150, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3150, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3150, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 3150, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = -40, -77
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3150, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3150, Voice]
type = PlaySnd
trigger1 = !Time && var(40) != 1
value = 181, 0
channel = 0

[State 3150, Voice]
type = PlaySnd
trigger1 = !Time && var(40) = 1
value = 3150, 10
channel = 0

[State 3150, Jumping Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 41, 0
channel = 1

[State 3150, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8103
ID = 8100
name = "Issen Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3150, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 14.5251396648

[State 3150, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3
ID = 3150
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = 0, 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 32
guard.pauseTime = 2, 2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 18
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
numHits = 0
hitSound = -1
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -45

[State 3150, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(3150) > 1
ID = 3150
keepOne = 1
excludeID = 3150
ignoreHitPause = 1

[State 3150, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3150)
value = 3165
ID = 3150
ignoreHitPause = 1
persistent = 0

[State 3150, ChangeState]
type = ChangeState
trigger1 = NumTarget(3150)
trigger1 = MoveContact
value = ifElse(MoveGuarded, 3151, 3160)
ignoreHitPause = 1

[State 3150, Rage Reset]
type = VarSet
trigger1 = AnimElem = 4
var(45) = 0

[State 3150, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 0

[State 3150, Landing Dust Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 8102
sprPriority = -3
posType = P1
pos = 0, 0
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3150, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 4, 2 + (var(40) = 1) * 10
channel = 0

[State 3150, Woosh]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 8
channel = 1

[State 3150, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 52, 0
channel = 3

[State 3150, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Block/Whiff
[StateDef 3151]
type = S
anim = 3151
physics = N
moveType = I

[State 3151, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) < 0
x = -0.34916201117

[State 3151, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 0

[State 3151, Rage Reset]
type = VarSet
trigger1 = AnimElem = 2
var(45) = 0

[State 3151, Landing Dust Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 8102
sprPriority = -3
posType = P1
pos = 0, 0
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3151, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 4, 2 + (var(40) = 1) * 10
channel = 0

[State 3151, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 8
channel = 1

[State 3151, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 52, 0
channel = 3

[State 3151, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Success
[StateDef 3160]
type = S
anim = 3160
physics = N
moveType = A

[State 3160, Issen BG Effect]
type = Explod
trigger1 = !Time
anim = 13160
ID = 13160
sprPriority = 10
bindtime = -1
posType = Left
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * GameHeight / GameWidth)
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3160, Issen BG Effect (Substractive)]
type = Explod
trigger1 = !Time
anim = 23160
ID = 23160
sprPriority = 9
bindtime = -1
posType = Left
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * GameHeight / GameWidth)
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3160, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) < 0
x = -0.34916201117

[State 3160, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 0

[State 3160, Voice]
type = PlaySnd
trigger1 = AnimElem = 10 && var(40) != 1
value = 181, 1
channel = 0

[State 3160, Voice]
type = PlaySnd
trigger1 = AnimElem = 10 && var(40) = 1
value = 3150, 11
channel = 0

[State 3160, Woosh]
type = PlaySnd
trigger1 = AnimElem = 10
value = 1, 8
channel = 1

[State 3160, Issen Music 1]
type = PlaySnd
trigger1 = !Time
value = 3160, 0
channel = 3

[State 3360, Issen Music 2]
type = PlaySnd
trigger1 = AnimElem = 10
value = 3160, 1
channel = 4

[State 3200, Issen Damage 1]
type = VarSet
trigger1 = !Time && var(45) >= 0 && var(45) < 96
var(24) = 140

[State 3200, Issen Damage 2]
type = VarSet
trigger1 = !Time && var(45) >= 96 && var(45) < 192
var(24) = 154

[State 3200, Issen Damage 3]
type = VarSet
trigger1 = !Time && var(45) >= 192 && var(45) < 288
var(24) = 182

[State 3200, Issen Damage 4]
type = VarSet
trigger1 = !Time && var(45) >= 288 && var(45) < 384
var(24) = 238

[State 3200, Issen Damage 5]
type = VarSet
trigger1 = !Time && var(45) >= 384
var(24) = 350

[State 3210, Issen Damage Reset]
type = VarSet
trigger1 = !AnimTime
var(24) = 0

[State 3210, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 11
value = floor(ifElse(var(24) * fvar(11) < 7, -7, -var(24) * fvar(11)))
ignoreHitPause = 1

[State 3160, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = AnimElem = 11
value = 36
ignoreHitPause = 1

[State 3160, HitAdd]
type = HitAdd
trigger1 = AnimElem = 11
value = 1
ignoreHitPause = 1

[State 3160, HitAdd]
type = VarAdd
trigger1 = AnimElem = 11
var(13) = 1
ignoreHitPause = 1

[State 3160, Juggle]
type = VarAdd
trigger1 = AnimElem = 11
var(15) = 1
ignoreHitPause = 1

[State 3160, HitSound]
type = PlaySnd
trigger1 = AnimElem = 11
value = 2, 3160
channel = 2
ignoreHitPause = 1

[State 3160, Hit Spark]
type = Helper
trigger1 = AnimElem = 11
helperType = Normal
stateNo = 8019
ID = 8001
name = "Spark"
posType = P2
pos = 0, Target, const(size.mid.pos.y)
facing = -1
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3160, Blood]
type = Helper
trigger1 = AnimElem = 11
helperType = Normal
stateNo = 8052
ID = 8050
name = "Blood"
posType = P2
pos = 0, Target, const(size.mid.pos.y)
facing = ifelse(Random < 500, 1, -1)
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3160, EnvShake]
type = EnvShake
trigger1 = AnimElem = 11
time = 18
ampl = -6
freq = 120

[State 3160, Kanji Effect]
type = Explod
trigger1 = AnimElem = 11
anim = 13161
ID = 13161
sprPriority = -2
bindTime = -1
posType = Left
pos = floor((1.3333333 * GameHeight / GameWidth) * 160), floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5 * (1.3333333 * GameHeight / GameWidth), 0.5 * (1.3333333 * GameHeight / GameWidth)
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3160, Kanji Effect (Subtraction)]
type = Explod
trigger1 = AnimElem = 11
anim = 23161
ID = 23161
sprPriority = -3
bindTime = -1
posType = Left
pos = floor((1.3333333 * GameHeight / GameWidth) * 160), floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5 * (1.3333333 * GameHeight / GameWidth), 0.5 * (1.3333333 * GameHeight / GameWidth)
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3160, BGPalFX]
type = BGPalFX
trigger1 = AnimElem = 11
time = 12
add = 0, 0, 0
mul = 255, 0, 0
color = 0
ignoreHitPause = 1

[State 3160, Throw]
type = TargetState
trigger1 = AnimElem = 11
value = 3166
ignoreHitPause = 1

[State 3160, Rage Reset]
type = VarSet
trigger1 = AnimElem = 11
var(45) = 0

[State 3160, Turn]
type = Turn
trigger1 = !AnimTime

[State 3160, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Target
[StateDef 3165]
type = S
moveType = H
physics = N
velSet = 0, 0

[State 3165, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn
ignoreHitPause = 1

[State 3165, Width]
type = Width
trigger1 = Time = [3, 12]
edge = 0, 10 + 10 * (Time - 3)
ignoreHitPause = 1

[State 3165, Width]
type = Width
trigger1 = Time >= 13
edge = 0, 100
ignoreHitPause = 1

[State 3165, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3165, HitFallSet]
type = HitFallSet
trigger1 = !Time
value = 0

[State 3165, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5012

[State 3165, ChangeAnim]
type = ChangeAnim
trigger1 = Time > 0
value = Anim


;Collapsing to the floor
[StateDef 3166]
type = S
movetype = H
physics = S

[State 3166, HitBy]
type = HitBy
trigger1 = 1
value =
time = 1
ignoreHitPause = 1

[State 3166, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = SelfAnimExist(5950) || SelfAnimExist(5955)
value = ifElse(SelfAnimExist(5955), 5955, 5950)

[State 3166, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
trigger1 = !SelfAnimExist(5950) && !SelfAnimExist(5955)
value = 3166

[State 3166, VarSet]
type = VarSet
trigger1 = !AnimTime
trigger2 = AnimElemTime(AnimElemNo(0) + 1) = 0
sysvar(0) = ifElse(Anim = 3166, 0, 1)

[State 3166, ChangeAnim]
type = ChangeAnim
trigger1 = !AnimTime
trigger2 = AnimElemTime(AnimElemNo(0) + 1) = 0
value = ifElse((Anim = 5950 || Anim = 5955) && SelfAnimExist(5112), 5112, 5110)
persistent = 0

[State 3166, SelfState]
type = SelfState
trigger1 = !AnimTime
trigger2 = AnimElemTime(AnimElemNo(0) + 1) = 0
value = 5110



;========================<TENHA SEIOU ZAN>=============================
[StateDef 3200]
type = S
physics = N
moveType = A
anim = 3200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -3000
faceP2 = 1

[State 3200, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3200, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3200, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3200, Corner Push]
type = VarSet
trigger1 = 1
fvar(5) = 0

[State 3200, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 47

[State 3200, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3200, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3200, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(13) < 0
time = 1
value = SCA

[State 3200, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = P1
pos = 20, -68
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3200, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 47
moveTime = 47
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3200, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 3200, 0
channel = 0

[State 3200, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 6
value = 3200, 1
channel = 0

[State 3200, Sound Effect 1]
type = PlaySnd
trigger1 = AnimElemTime(12) = 2
value = 3200, 2
channel = 1

[State 3200, Energy Effect 1]
type = Explod
trigger1 = AnimElemTime(11) = 3
anim = 13200
ID = 13200
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3200, Energy Effect 2]
type = Explod
trigger1 = AnimElemTime(11) = 3
anim = 13201
ID = 13201
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3200, PosAdd]
type = PosAdd
trigger1 = AnimElem = 10
x = 23.2402234637

[State 3200, PosAdd]
type = PosAdd
trigger1 = AnimElem = 11
x = 21.4525139665

[State 3200, PosAdd]
type = PosAdd
trigger1 = AnimElem = 12
x = 13.4078212291

[State 3200, PosAdd]
type = PosAdd
trigger1 = AnimElem = 13
x = 19.6648044693

[State 3200, PosAdd]
type = PosAdd
trigger1 = AnimElem = 17
x = -16.0893854749

[State 3200, PosAdd]
type = PosAdd
trigger1 = AnimElem = 18
x = -22.3463687151

[State 3200, PosAdd]
type = PosAdd
trigger1 = AnimElem = 19
x = -12.5139664804

[State 3200, PosAdd]
type = PosAdd
trigger1 = AnimElem = 20
x = -26.8156424581

[State 3200, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 13
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 469 < 7, 7, fvar(11) * 469)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 24, 24
guard.pauseTime = 24, 24
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -15.6424581006, -6.25
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = 0.439453125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8019)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -45
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3200, Blood]
type = Helper
trigger1 = HitPauseTime = 23
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

[State 3200, Sound Effect 2]
type = PlaySnd
trigger1 = NumTarget && MoveHit = 1
value = 3200, 3
channel = 3
ignoreHitPause = 0

[State 3200, Pause]
type = Pause
trigger1 = NumTarget && MoveHit = 1 && Time % 2 = 0
time = 1

[State 3200, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(13) >= 0 && AnimElemTime(14) <= 0
trigger1 = HitPauseTime <= 10
value = 3200
elem = 14
ignoreHitPause = 1

[State 3200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(14) >= 0
movetype = I

[State 3200, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<TENHA DANKUU RETSU ZAN>=============================
[StateDef 3300]
type = S
physics = N
moveType = A
anim = 3300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3300, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3300, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3300, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3300, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3300, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3300, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3300, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3300, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(2) < 0
time = 1
value = SCA

[State 3300, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = -40, -77
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3300, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3300, Voice]
type = PlaySnd
trigger1 = !Time
value = 1600, 0
channel = 0

[State 3300, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 8
channel = 1

[State 3300, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
x = 16.9832402235

[State 3300, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = 2.68156424581

[State 3300, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = 15.1955307263

[State 3300, PosAdd]
type = PosAdd
trigger1 = AnimElem = 5
x = 14.3016759777

[State 3300, PosAdd]
type = PosAdd
trigger1 = AnimElem = 6
x = 8.93854748603

[State 3300, PosAdd]
type = PosAdd
trigger1 = AnimElem = 11
x = -11.6201117318

[State 3300, PosAdd]
type = PosAdd
trigger1 = AnimElem = 12
trigger2 = AnimElem = 13
x = -23.2402234637

[State 3300, Slash Effect]
type = Explod
trigger1 = AnimElem = 3
anim = 13300
ID = 13300
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 3300, HitDef]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = AnimElem = 3
ID = 3300
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Up
air.animType = Up
fall.animType = Up
ground.type = Low
air.type = Low
ground.hitTime = 16
ground.slideTime = 16
guard.hitTime = 16
air.hitTime = 120
ground.velocity = 0, -11.25
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = 0, -11.25
air.cornerPush.velOff = 0
yAccel = 0.439453125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8019)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 68), var(36) := -73
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3300, Tornado Effect]
type = Explod
trigger1 = MoveHit = 1 && NumTarget && !NumExplod(13301)
anim = 1007
ID = 13301
sprPriority = 3
bindtime = 0
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(35), ceil(P2Dist x), var(35))), 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 1

[State 3300, Blood]
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

[State 3300, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(3300) > 1
ID = 3300
keepOne = 1
excludeID = 3300
ignoreHitPause = 1

[State 3300, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3300)
value = 3315
ID = 3300
ignoreHitPause = 1

[State 3300, ChangeState]
type = ChangeState
trigger1 = MoveHit && NumTarget(3300)
value = 3310

[State 3300, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Success
[StateDef 3310]
type = S
physics = N
moveType = A
anim = 3310
ctrl = 0
sprPriority = 1
hitCountPersist = 1

[State 3310, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3310, Voice]
type = PlaySnd
trigger1 = !Time
value = 3300, 0
channel = 0

[State 3310, Woosh]
type = PlaySnd
trigger1 = AnimElem = 13
trigger2 = AnimElem = 22
value = 1, 8
channel = 1

[State 3310, VelSet]
type = VelSet
trigger1 = !Time
x = 0.27932960893

[State 3310, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 0
y = -11.25

[State 3310, VelSet]
type = VelSet
trigger1 = AnimElem = 22
y = 7.5

[State 3310, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) > 0 && AnimElemTime(13) < 0
trigger2 = AnimElemTime(22) >= 0
y = 0.5859375

[State 3310, PosFreeze]
type = PosFreeze
trigger1 = AnimElemTime(13) >= 0 && AnimElemTime(22) < 0

[State 3310, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 2
channel = 1

[State 3310, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 5
stateType = A
physics = N

[State 3310, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "Tenha Dankuu Retsu Zan Dust"
posType = P1
ownPal = 1

[State 3310, Jump Snd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 41, 0

[State 3310, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 5
channel = 3

[State 3310, Slash Effect 1]
type = Explod
trigger1 = AnimElem = 12
anim = 13310
ID = 13310
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3310, Slash Effect 2]
type = Explod
trigger1 = AnimElem = 22
anim = 23310
ID = 23310
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3310, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount))
trigger1 = AnimElem = 14
ID = 3310
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 12
guard.pauseTime = 0, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 16
ground.slideTime = 16
guard.hitTime = 16
air.hitTime = 120
ground.velocity = -0.55865921787, 10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -0.55865921787, 10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.439453125
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8019)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -28
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3310, Blood]
type = Helper
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

[State 3310, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(3310) > 1
ID = 3310
keepOne = 1
excludeID = 3310
ignoreHitPause = 1

[State 3310, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3310)
trigger1 = !(Target(3310), Time)
value = ifElse(Target(3310), StateType = A, 5425, 5420)
ID = 3310
ignoreHitPause = 1

[State 3310, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3311


;Landing
[StateDef 3311]
type = S
physics = N
moveType = A
anim = 3311
ctrl = 0
velSet = 0,0
sprPriority = 1
hitCountPersist = 1

[State 3311, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3311, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3311, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 1200, 1
channel = 1

[State 3311, Slash Effect 1]
type = Explod
trigger1 = !Time
anim = 11200
ID = 11200
sprPriority = 4
bindtime = -1
posType = P1
pos = 54, 0
scale = 0.75, 0.75
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3311, Slash Effect 2]
type = Explod
trigger1 = !Time
anim = 11201
ID = 11201
sprPriority = 3
bindtime = -1
posType = P1
pos = 54, 0
scale = 0.75, 0.75
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3311, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount))
trigger1 = !MoveContact && !MoveReversed
ID = 3311
attr = S, SA
hitFlag = MAFD
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 7
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
down.hitTime = 120
ground.velocity = -1.11731843575, -7.5
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -1.11731843575, -7.5
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
down.velocity = -1.11731843575, -7.5
down.cornerpush.veloff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8016)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 47), var(36) := -10
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3300, Pause]
type = Pause
trigger1 = MoveHit && NumTarget && Time % 2 = 0
time = 1

[State 3311, Blood]
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

[State 3311, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(3311) > 1
ID = 3311
keepOne = 1
excludeID = 3311
ignoreHitPause = 1

[State 3311, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3311)
trigger1 = !(Target(3311), Time)
value = ifElse(Target(3311), StateType = A, 5425, 5420)
ID = 3311
ignoreHitPause = 1

[State 3311, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 3311, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Being Launched
[StateDef 3315]
type = A
physics = N
movetype = H
ctrl = 0
velSet = 0, -12.5

[State 3315, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3315, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5061

[State 3315, ChangeAnim]
type = ChangeAnim
trigger1 = Time > 0
value = Anim

[State 3315, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,1
ignoreHitPause = 1

[State 3315, VelAdd]
type = VelAdd
Trigger1 = 1
y = 0.5126953125

[State 3315, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 3315, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100



;========================<MAX TENHA DANKUU RETSU ZAN>=============================
[StateDef 3350]
type = S
physics = N
moveType = A
anim = 3350
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3350, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3350, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3350, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3350, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3350, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 45

[State 3350, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3350, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3350, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
time = 1
value = SCA

[State 3350, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = -40, -77
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3350, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3350, Voice]
type = PlaySnd
trigger1 = !Time
value = 1600, 0
channel = 0

[State 3350, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 8
channel = 1

[State 3350, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
x = 16.9832402235

[State 3350, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = 2.68156424581

[State 3350, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = 15.1955307263

[State 3350, PosAdd]
type = PosAdd
trigger1 = AnimElem = 5
x = 14.3016759777

[State 3350, PosAdd]
type = PosAdd
trigger1 = AnimElem = 6
x = 8.93854748603

[State 3350, PosAdd]
type = PosAdd
trigger1 = AnimElem = 11
x = -11.6201117318

[State 3350, PosAdd]
type = PosAdd
trigger1 = AnimElem = 12
trigger2 = AnimElem = 13
x = -23.2402234637

[State 3350, Slash Effect]
type = Explod
trigger1 = AnimElem = 3
anim = 13300
ID = 13300
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 3350, HitDef]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = AnimElem = 3
ID = 3350
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Up
air.animType = Up
fall.animType = Up
ground.type = Low
air.type = Low
ground.hitTime = 16
ground.slideTime = 16
guard.hitTime = 16
air.hitTime = 120
ground.velocity = 0, -11.25
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = 0, -11.25
air.cornerPush.velOff = 0
yAccel = 0.439453125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8019)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 68), var(36) := -73
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3350, Tornado Effect]
type = Explod
trigger1 = MoveHit = 1 && NumTarget && !NumExplod(13301)
anim = 1007
ID = 13301
sprPriority = 3
bindtime = 0
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(35), ceil(P2Dist x), var(35))), 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 1

[State 3350, Blood]
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

[State 3350, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(3350) > 1
ID = 3350
keepOne = 1
excludeID = 3350
ignoreHitPause = 1

[State 3350, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3350)
value = 3365
ID = 3350
ignoreHitPause = 1

[State 3350, ChangeState]
type = ChangeState
trigger1 = MoveHit && NumTarget(3350)
value = 3360

[State 3350, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Success
[StateDef 3360]
type = S
physics = N
moveType = A
anim = 3360
ctrl = 0
sprPriority = 1
hitCountPersist = 1

[State 3360, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3360, Voice]
type = PlaySnd
trigger1 = !Time
value = 3300, 0
channel = 0

[State 3360, Woosh]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 13
trigger3 = AnimElem = 22
value = 1, 8
channel = 1

[State 3360, VelSet]
type = VelSet
trigger1 = !Time
x = 0.27932960893

[State 3360, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 0
y = -11.25

[State 3360, VelSet]
type = VelSet
trigger1 = AnimElem = 22
y = 7.5

[State 3360, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) > 0 && AnimElemTime(13) < 0
trigger2 = AnimElemTime(22) >= 0
y = 0.5859375

[State 3360, PosFreeze]
type = PosFreeze
trigger1 = AnimElemTime(13) >= 0 && AnimElemTime(22) < 0

[State 3360, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 2
channel = 1

[State 3360, Slash Effect 1]
type = Explod
trigger1 = AnimElem = 3
anim = 13360
ID = 13360
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3360, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 5
stateType = A
physics = N

[State 3360, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8100
ID = 8100
name = "MAX Tenha Dankuu Retsu Zan Dust"
posType = P1
ownPal = 1

[State 3360, Jump Snd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 41, 0

[State 3360, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 5
channel = 3

[State 3360, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount))
trigger1 = AnimElem = 5
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
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
ground.velocity = 0, -6.25
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = 0, -6.25
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
sparkNo = -1 + 0 * (var(33) := 8019)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 65), var(36) := -100
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 3360, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount))
trigger1 = AnimElem = 6
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
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
ground.velocity = 0, -6.25
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = 0, -6.25
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
sparkNo = -1 + 0 * (var(33) := 8019)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 33), var(36) := -163
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 3360, Slash Effect 2]
type = Explod
trigger1 = AnimElem = 12
anim = 13310
ID = 13310
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3360, Slash Effect 3]
type = Explod
trigger1 = AnimElem = 22
anim = 23310
ID = 23310
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3360, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount))
trigger1 = AnimElem = 14
ID = 3360
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 12
guard.pauseTime = 0, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 16
ground.slideTime = 16
guard.hitTime = 16
air.hitTime = 120
ground.velocity = -0.55865921787, 10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -0.55865921787, 10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.439453125
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8019)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -28
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3360, Blood]
type = Helper
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

[State 3360, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(3360) > 1
ID = 3360
keepOne = 1
excludeID = 3360
ignoreHitPause = 1

[State 3310, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3360)
trigger1 = !(Target(3360), Time)
value = ifElse(Target(3360), StateType = A, 5425, 5420)
ID = 3360
ignoreHitPause = 1

[State 3360, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3361


;Landing
[StateDef 3361]
type = S
physics = N
moveType = A
anim = 3311
ctrl = 0
velSet = 0,0
sprPriority = 1
hitCountPersist = 1

[State 3361, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3361, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3361, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 1200, 1
channel = 1

[State 3361, Slash Effect 1]
type = Explod
trigger1 = !Time
anim = 11200
ID = 11200
sprPriority = 4
bindtime = -1
posType = P1
pos = 54, 0
scale = 0.75, 0.75
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3361, Slash Effect 2]
type = Explod
trigger1 = !Time
anim = 11201
ID = 11201
sprPriority = 3
bindtime = -1
posType = P1
pos = 54, 0
scale = 0.75, 0.75
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3361, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount))
trigger1 = !MoveContact && !MoveReversed
ID = 3361
attr = S, SA
hitFlag = MAFD
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 91 < 7, 7, fvar(11) * 91)), 7
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
down.hitTime = 120
ground.velocity = -1.11731843575, -7.5
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -1.11731843575, -7.5
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
down.velocity = -1.11731843575, -7.5
down.cornerpush.veloff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8016)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 47), var(36) := -10
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3361, Pause]
type = Pause
trigger1 = MoveHit && NumTarget && Time % 2 = 0
time = 1

[State 3361, Blood]
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

[State 3361, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(3361) > 1
ID = 3361
keepOne = 1
excludeID = 3361
ignoreHitPause = 1

[State 3361, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3361)
trigger1 = !(Target(3361), Time)
value = ifElse(Target(3361), StateType = A, 5425, 5420)
ID = 3361
ignoreHitPause = 1

[State 3361, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 3361, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Being Launched
[StateDef 3365]
type = A
physics = N
movetype = H
ctrl = 0
velSet = 0, -10

[State 3365, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3365, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5061

[State 3365, ChangeAnim]
type = ChangeAnim
trigger1 = Time > 0
value = Anim

[State 3365, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,1
ignoreHitPause = 1

[State 3365, VelAdd]
type = VelAdd
Trigger1 = 1
y = 0.5126953125

[State 3365, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 3365, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100



;========================<TENHA HASHIN KEN>=============================
[StateDef 3400]
type = S
physics = N
moveType = A
anim = 3400
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -3000
faceP2 = 1

[State 3400, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3400, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3400, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3400, Corner Push]
type = VarSet
trigger1 = 1
fvar(5) = 0

[State 3400, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 47

[State 3400, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3400, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3400, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 3400, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = P1
pos = 0, -55
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3400, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 47
moveTime = 47
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3400, Voice]
type = PlaySnd
trigger1 = !Time
value = 1600, 0
channel = 0

[State 3400, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 4 && !var(37)
attr = S, HT
hitFlag = M-
priority = 7, Miss
getPower = 0, 0
givePower = 0, 0
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -50
P1StateNo = IfElse((Enemy, Life <= 420) && RoundNo >= 3 && TeamMode != Turns, 3510, 3410)
numHits = 0

[State 3400, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 2
channel = 1

[State 3400, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 3400, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Success
[Statedef 3410]
type = S
physics = N
moveType = A
anim = ifElse(AILevel, 4410, 3410)
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 3410, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 3410, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 3415

[State 3410, Width]
type = Width
trigger1 = NumTarget && AnimElemTime(2) < 0
edge = 72, 0
ignoreHitPause = 1

[State 3410, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) < 0
pos = 62, 0

[State 3410, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(8) < 0
pos = 61, -16

[State 3410, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 8
trigger2 = AnimElem = 16
value = 1, 8
channel = 1

[State 3410, Slash Effect]
type = Explod
trigger1 = AnimElem = 8
anim = 13410
ID = 13410
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3410, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 10
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 0
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1.11731843575, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -1.11731843575, -10
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8019)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 75), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
forceStand = 1
kill = 0

[State 3410, Blood]
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

[State 3410, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(11) <= 0
trigger1 = HitPauseTime <= 10
value = ifElse(AILevel, 4410, 3410)
elem = 11
ignoreHitPause = 1

[State 3410, Pause]
type = Pause
trigger1 = MoveHit && NumTarget && Time % 2 = 0
time = 1

[State 3410, Voice]
type = PlaySnd
trigger1 = AnimElem = 16
value = 3400, 0
channel = 0

[State 3410, Tenha Hashin Ken Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 17
value = 1005, 0
channel = 1

[State 3410, PosAdd]
type = PosAdd
trigger1 = AnimElem = 16
x = 16.9832402235

[State 3410, PosAdd]
type = PosAdd
trigger1 = AnimElem = 17
x = 2.68156424581

[State 3410, PosAdd]
type = PosAdd
trigger1 = AnimElem = 18
x = 15.1955307263

[State 3410, PosAdd]
type = PosAdd
trigger1 = AnimElem = 19
x = 14.3016759777

[State 3410, PosAdd]
type = PosAdd
trigger1 = AnimElem = 20
x = 8.93854748603

[State 3410, PosAdd]
type = PosAdd
trigger1 = AnimElem = 25
x = -11.6201117318

[State 3410, PosAdd]
type = PosAdd
trigger1 = AnimElem = 26
trigger2 = AnimElem = 27
x = -23.2402234637

[State 3410, Projectile]
type = Helper
trigger1 = AnimElem = 17
helperType = Normal
stateNo = 3405
ID = 3405
name = "Tenha Hashin Ken Projectile"
posType = P1
pos = 65, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3410, Width]
type = Width
trigger1 = AnimElemTime(16) = 0
value = 20, 0

[State 3410, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Being Thrown
[StateDef 3415]
type = A
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 3415, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3415

[State 3415, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 3415, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1



;========================<ZOUBU EGURI>=============================
[Statedef 3510]
type = S
physics = N
moveType = A
anim = 3510
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 3510, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 3510, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 3515

[State 3510, Width]
type = Width
trigger1 = AnimElemTime(2) < 0
edge = 120, 0
ignoreHitPause = 1

[State 3510, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3500, 0
channel = 0

[State 3510, Sound Effect 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2, 3500
channel = 1

[State 3510, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) < 0
pos = 62, 0

[State 3510, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(16) < 0
pos = 45, 0

[State 3510, Pause]
type = Pause
triggerAll = NumTarget && Time % 2 = 0
trigger1 = AnimElemTime(16) >= 0 && AnimElemTime(17) < 0
trigger2 = AnimElemTime(19) >= 0 && AnimElemTime(24) < 0
time = 1

[State 3510, Blood 1]
type = Helper
trigger1 = AnimElem = 2
trigger2 = AnimElem = 16
helperType = Normal
stateNo = 8052
ID = 8050
name = "Blood"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 50, ceil(P2Dist x), 50)), -70
facing = -1
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3510, Blood 1.5]
type = Helper
trigger1 = AnimElemTime(16) = 5
helperType = Normal
stateNo = 8052
ID = 8050
name = "Blood"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 50, ceil(P2Dist x), 50)), -70
facing = 1
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3510, Zoubu Eguri Heart and Blood]
type = Explod
trigger1 = AnimElem = 16
anim = 3511
ID = 3511
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 1, 1
pauseMoveTime = 0
superMoveTime = 0
ownPal = 1

[State 3510, Sound Effect 2]
type = PlaySnd
trigger1 = AnimElem = 16
value = 3500, 2
channel = 1

[State 3510, Voice]
type = PlaySnd
trigger1 = AnimElem = 18
value = 3500, 1
channel = 0

[State 3510, Sound Effect 3]
type = PlaySnd
trigger1 = AnimElem = 19
value = 3500, 3
channel = 1

[State 3510, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 19
value = floor(ifElse((Enemy, Life) * fvar(11) < 7, -7, -(Enemy, Life) * fvar(11)))

[State 3510, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 19
value = 18

[State 3510, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 19
value = 1

[State 3510, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElem = 19
var(13) = 1

[State 3510, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 19
var(15) = 1
ignoreHitPause = 1

[State 3510, TargetState]
type = TargetState
trigger1 = NumTarget && AnimElemTime(19) = 0
value = 3166

[State 3510, Blood 2]
type = Helper
trigger1 = AnimElem = 19
trigger2 = AnimElemTime(20) = 5
helperType = Normal
stateNo = 8052
ID = 8050
name = "Blood"
posType = P2
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 0, ceil(P2Dist x), 0)), -70
facing = -1
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3510, Blood 2]
type = Helper
trigger1 = AnimElem = 20
helperType = Normal
stateNo = 8052
ID = 8050
name = "Blood"
posType = P2
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 0, ceil(P2Dist x), 0)), -70
facing = 1
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3510, ChangeState]
type = ChangeState
trigger1 = !AnimTime && WinKO
value = 3520

[State 3510, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Being Thrown
[StateDef 3515]
type = S
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 3515, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3515

[State 3515, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = -8.93854748603

[State 3515, VelSet]
type = VelAdd
trigger1 = AnimElemTime(4) > 0 && AnimElemTime(4) <= 14
x = 0.69832402234

[State 3515, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 14
x = 0

[State 3515, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 3515, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0, 0
ignoreHitPause = 1



;========================<WIN BY ZOUBU EGURI>=============================
[Statedef 3520]
type = S

[State 3520, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && PrevStateNo = 3510
value = 3520

[State 3520, ChangeState]
type = ChangeState
trigger1 = Time >= 16 && RoundState = 3
value = ifElse(RoundState = 3, 180, 0)
value = 180
ctrl = 1