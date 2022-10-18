; _________________________________________________
;| Rugal Bernstein by KarmaCharmeleon		 |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SUPER STATES>========================================
;==============================================================================================

;========================<GENOCIDE HEAVEN>=============================
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
trigger1 = Time = 5
fvar(5) = 0

[State 3000, Unguardable]
type = VarSet
trigger1 = Time = 5 && NumEnemy
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
trigger1 = AnimElemTime(5) < 0
time = 1
value = SCA

[State 3000, SuperPause FX]
type = Helper
trigger1 = Time = 5
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 34, -122
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 5
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
value = 3000, 0 + 10 * (var(40) = 2)
channel = 0

[State 3000, Voice 2]
type = PlaySnd
trigger1 = AnimElemTime(6) = 0
value = 3000, 1 + 10 * (var(40) = 2)
channel = 0

[State 3000, Genocide Heaven Sound Effect]
type = PlaySnd
trigger1 = AnimElemTime(6) = 1
trigger2 = AnimElemTime(16) = 0
trigger3 = AnimElemTime(27) = 0
value = 1100, 1
channel = 3

[State 3000, Woosh Sound]
type = PlaySnd
trigger1 = AnimElemTime(7) = 0
trigger2 = AnimElemTime(17) = 1
value = 1, 5
channel = 1

[State 3000, Genocide Heaven Effect 1]
type = Explod
trigger1 = AnimElem = 6
anim = 3005
ID = 3005
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 3000, Genocide Heaven Effect 2]
type = Explod
trigger1 = AnimElem = 14
anim = 3006
ID = 3005
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 3000, Genocide Heaven Effect 3]
type = Explod
trigger1 = AnimElem = 24
anim = 3007
ID = 3005
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 3000, VelSet]
type = VelSet
trigger1 = AnimElemTime(25) = 1
x = 1.11731843575
y = -7.5

[State 3000, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(25) > 1
y = 0.390625

[State 3000, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElemTime(25) = 1
stateType = A
physics = N

[State 3000, Dust Helper]
type = Helper
trigger1 = AnimElemTime(25) = 1
helperType = Normal
stateNo = 8100
ID = 8100
name = "Genocide Heaven Dust"
posType = P1
ownPal = 1

[State 3000, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(25) = 0
trigger2 = AnimElemTime(26) = 0
value = 41, 0
channel = 5

[State 3000, Ground Hit 1]
type = HitDef
triggerAll = !var(16) && var(15) < (3 + HitCount)
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7 && !MoveContact && !MoveReversed
trigger3 = AnimElem = 8 && !MoveContact && !MoveReversed
trigger4 = AnimElem = 9 && !MoveContact && !MoveReversed
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.2503630888
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
sparkXY = -10 + 0 * (var(35) := 96), var(36) := -72
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3000, Ground Hit 2]
type = HitDef
triggerAll = !var(16) && var(15) < (3 + HitCount)
trigger1 = AnimElem = 15
trigger2 = AnimElem = 16 && !MoveContact && !MoveReversed
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1.11731843575, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.2503630888
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
sparkXY = -10 + 0 * (var(35) := 96), var(36) := -72
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3000, Air Hit]
type = HitDef
triggerAll = !var(16) && var(15) < (3 + HitCount)
trigger1 = AnimElem = 24
trigger2 = AnimElem = 25 && !MoveContact && !MoveReversed
trigger3 = AnimElem = 26 && !MoveContact && !MoveReversed
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Heavy
air.animType = Heavy
fall.animType = Heavy
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
yAccel = 0.537109375
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8019)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 78), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3000, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(24) >= 0 && AnimElemTime(25) <= 0
trigger1 = HitPauseTime <= 2
value = 3000
elem = 25
ignoreHitPause = 1

[State 3000, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(27) >= 0
moveType = I

[State 3000, ChangeState]
type = ChangeState
trigger1 = AnimElemTime(25) > 1
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



;========================<MAX GENOCIDE HEAVEN>=============================
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
trigger1 = Time = 5
fvar(5) = 0

[State 3050, Unguardable]
type = VarSet
trigger1 = Time = 5 && NumEnemy
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
trigger1 = AnimElemTime(5) < 0
time = 1
value = SCA

[State 3050, SuperPause FX]
type = Helper
trigger1 = Time = 5
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 34, -122
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3050, Super Pause]
type = SuperPause
trigger1 = Time = 5
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
value = 3000, 0 + 10 * (var(40) = 2)
channel = 0

[State 3050, Voice 2]
type = PlaySnd
trigger1 = AnimElemTime(6) = 0
value = 3000, 1 + 10 * (var(40) = 2)
channel = 0

[State 3050, Woosh Sound]
type = PlaySnd
trigger1 = AnimElemTime(6) = 1
trigger2 = AnimElemTime(17) = 0
trigger3 = AnimElemTime(37) = 1
value = 1, 5
channel = 1

[State 3050, Genocide Heaven Sound Effect]
type = PlaySnd
trigger1 = AnimElemTime(7) = 0
trigger2 = AnimElemTime(18) = 0
trigger3 = AnimElemTime(27) = 0
trigger4 = AnimElemTime(37) = 0
value = 1100, 1
channel = 3

[State 3050, Genocide Heaven Effect 1]
type = Explod
trigger1 = AnimElem = 6
anim = 3055
ID = 3005
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 3050, Genocide Heaven Effect 2]
type = Explod
trigger1 = AnimElem = 14
anim = 3056
ID = 3005
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 3050, Genocide Heaven Effect 3]
type = Explod
trigger1 = AnimElem = 24
anim = 3057
ID = 3005
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 3050, Genocide Heaven Effect 4]
type = Explod
trigger1 = AnimElem = 36
anim = 3058
ID = 3005
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 3050, VelSet]
type = VelSet
trigger1 = AnimElemTime(25) = 1
x = 1.11731843575
y = -6.25

[State 3050, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(25) > 1 && AnimElemTime(33) <= 0
trigger2 = AnimElemTime(33) > 0
y = 0.390625

[State 3050, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElemTime(25) = 1
stateType = A
physics = N

[State 3050, Dust Helper]
type = Helper
trigger1 = AnimElemTime(25) = 1
helperType = Normal
stateNo = 8100
ID = 8100
name = "MAX Genocide Heaven Dust"
posType = P1
ownPal = 1

[State 3050, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(25) = 0
trigger2 = AnimElemTime(26) = 0
value = 41, 0
channel = 5

[State 3050, VelSet]
type = VelSet
trigger1 = AnimElemTime(33) = 0
x = 3.91061452514
y = -5.625

[State 3050, Ground Hit 1]
type = HitDef
triggerAll = !var(16) && var(15) < (3 + HitCount)
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7 && !MoveContact && !MoveReversed
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.2503630888
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
sparkXY = -10 + 0 * (var(35) := 96), var(36) := -72
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3050, Ground Hit 2]
type = HitDef
triggerAll = !var(16) && var(15) < (3 + HitCount)
trigger1 = AnimElem = 8
trigger2 = AnimElem = 9 && !MoveContact && !MoveReversed
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.2503630888
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
sparkXY = -10 + 0 * (var(35) := 96), var(36) := -72
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3050, Ground Hit 3]
type = HitDef
trigger1 = !var(16) && var(15) < (3 + HitCount)
trigger1 = AnimElem = 15
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1.11731843575, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.2503630888
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
sparkXY = -10 + 0 * (var(35) := 96), var(36) := -72
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3050, Ground Hit 4]
type = HitDef
trigger1 = !var(16) && var(15) < (3 + HitCount)
trigger1 = AnimElem = 16
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1.11731843575, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.2503630888
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
sparkXY = -10 + 0 * (var(35) := 96), var(36) := -72
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3050, Air Hit 1]
type = HitDef
triggerAll = !var(16) && var(15) < (3 + HitCount)
trigger1 = AnimElem = 24
trigger2 = AnimElem = 25
trigger3 = AnimElem = 26 && !MoveContact && !MoveReversed
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse((AnimElem = 24), 35, 56) < 7, 7, fvar(11) * ifElse((AnimElem = 24), 35, 56))), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 2, 2
guard.pauseTime = 2, 2
animType = Heavy
air.animType = Heavy
fall.animType = Heavy
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
yAccel = 0.537109375
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8019)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 78), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3050, Air Hit 2]
type = HitDef
triggerAll = !var(16) && var(15) < (3 + HitCount)
trigger1 = AnimElem = 37
trigger2 = AnimElem = 38 && !MoveContact && !MoveReversed
trigger3 = AnimElem = 39 && !MoveContact && !MoveReversed
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Heavy
air.animType = Heavy
fall.animType = Heavy
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
yAccel = 0.537109375
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8019)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 78), var(36) := -125
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3050, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(40) >= 0
moveType = I

[State 3050, ChangeState]
type = ChangeState
trigger1 = AnimElemTime(25) > 1
trigger1 = pos y > -vel y
value = 3001



;========================<GIGANTIC PRESSURE>=============================
[StateDef 3100]
type = S
physics = N
moveType = A
anim = 3100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3100, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3100, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3100, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3100, Corner Push]
type = VarSet
trigger1 = Time = 5
fvar(5) = 0

[State 3100, Unguardable]
type = VarSet
trigger1 = Time = 5 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3100, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3100, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3100, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 3100, SuperPause FX]
type = Helper
trigger1 = Time = 5
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = -39, -89
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3100, SuperPause]
type = SuperPause
trigger1 = Time = 5
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3100, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 900, 1 + 10 * (var(40) = 2)
channel = 0

[State 3100, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 0 + 10 * (var(40) = 2)
channel = 0

[State 3100, Step Sound 1]
type = PlaySnd
trigger1 = AnimElem = 6
value = 100, 0
channel = 3

[State 3100, Step Sound 2]
type = PlaySnd
trigger1 = AnimElem = 10
value = 100, 1
channel = 3

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 6.70391061453

[State 3100, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem >= 4 && (EnemyNear, Alive)
ID = 3100
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = 0, 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 2, 2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = 0, 0
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 3100, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(3100) > 1
ID = 3100
keepOne = 1
excludeID = 3100
ignoreHitPause = 1

[State 3100, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3100)
value = 3115
ID = 3100
ignoreHitPause = 1
persistent = 0

[State 3100, ChangeState]
type = ChangeState
trigger1 = NumTarget(3100)
trigger1 = MoveHit && Target, Alive
value = 3110

[State 3100, ChangeState]
type = ChangeState
triggerAll = AnimElemTime(4) >= 0
trigger1 = MoveGuarded
trigger2 = !AnimTime
trigger3 = FrontEdgeDist <= 0
trigger4 = P2BodyDist X <= 0 && P2StateType = L
value = ifElse(MoveGuarded, 3106, 3105)


;Whiff
[StateDef 3105]
type = S
physics = N
moveType = I
anim = 1405
ctrl = 0
velSet = 0, 0
sprPriority = 1

[State 3105, Woosh]
type = PlaySnd
trigger1 = !Time
value = 1, 2
channel = 1

[State 3105, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Block
[StateDef 3106]
type = S
physics = N
moveType = I
anim = 1406
ctrl = 0
velSet = 0, 0
sprPriority = 1

[State 3106, Woosh]
type = PlaySnd
trigger1 = !Time
value = 1, 2
channel = 1

[State 3106, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Throw Part 1
[Statedef 3110]
type = S
physics = N
moveType = A
anim = 1410
ctrl = 0
velSet = 0, 0
sprPriority = 0

[State 3110, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 3110, NotHitBy]
type = NotHitBy
trigger1 = NumTarget
value = SCA
time = 1

[State 3110, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 11.1731843575
y = -1.875

[State 3110, VelAdd]
type = VelAdd
Trigger1 = AnimElemTime(2) > 0
y = 0.29296875

[State 3110, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 3115

[State 3110, TargetBind]
type = TargetBind
trigger1 = NumTarget
trigger1 = Time >= 0
pos = -31, -88

[State 3110, Voice]
type = PlaySnd
trigger1 = !Time
value = 730, 1 + 10 * (var(40) = 2)
channel = 0

[State 3110, Grab sound]
type = PlaySnd
trigger1 = !Time
value = 2, 800
channel = 2

[State 3110, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 41, 0
channel = 4

[State 3110, End]
type = ChangeState
trigger1 = AnimElemTime(1) >= 2 && AnimElemTime(2) < 0
trigger1 = FrontEdgeDist <= 52
trigger2 = AnimElemTime(2) >= 0
trigger2 = FrontEdgeDist <= 35
trigger3 = Time >= 600
value = 3112

[State 3110, End]
type = ChangeState
trigger1 = AnimElemTime(2) > 0
trigger1 = pos y > -vel y
value = 3111


;Throw Part 2
[Statedef 3111]
type = S
physics = N
moveType = A
anim = 1411
ctrl = 0
velSet = 0, 0
sprPriority = 0

[State 3111, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 3111, NotHitBy]
type = NotHitBy
trigger1 = NumTarget
value = SCA
time = 1

[State 3111, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3111, VelSet]
type = VelSet
trigger1 = 1
x = 11.1731843575

[State 3111, TargetBind]
type = TargetBind
trigger1 = NumTarget
pos = -31, -88

[State 3111, Slide Sound]
type = PlaySnd
trigger1 = !Time
value = 1, 1400
channel = 5

[State 3111, Dust Helper]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8103
ID = 8100
name = "Slide Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3111, End]
type = ChangeState
trigger1 = FrontEdgeDist <= 35
trigger2 = Time >= 600
value = 3112


;Throw Part 3
[Statedef 3112]
type = S
physics = N
moveType = A
anim = 3112
ctrl = 0
velSet = 0, 0
sprPriority = 0

[State 3112, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 3112, NotHitBy]
type = NotHitBy
trigger1 = NumTarget && AnimElemTime(3) < 1
value = SCA
time = 1

[State 3112, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3112, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 3116

[State 3112, Width]
type = Width
trigger1 = AnimElemTime(2) >= 0
edge = 65, 0

[State 3112, TargetBind]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) < 0
pos = 35, -7

[State 3112, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = 68, -21

[State 3112, SprPriority]
type = SprPriority
trigger1 = NumTarget && AnimElemTime(2) = 0
value = 2

[State 3112, Wall Slam Sound Effect]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(2) = 0
value = 2, 1410
channel = 3

[State 3112, Explosion]
type = Explod
trigger1 = NumTarget && AnimElemTime(2) = 0
anim = 8030
sprPriority = 4
scale = 0.75, 0.75
posType = P1
pos = 88, -75
facing = 1
vFacing = 1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
persistent = 0

[State 3112, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElemTime(3) = 0
value = floor(ifElse(224 * fvar(11) < 7, -7, -224 * fvar(11)))

[State 3112, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElemTime(3) = 0
value = 36

[State 3112, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElemTime(3) = 0
value = 1

[State 3112, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(3) = 0
var(13) = 1

[State 3112, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(3) = 0
var(15) = 1
ignoreHitPause = 1

[State 3112, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElemTime(3) = 0
time = 14
ampl = -4
freq = 120

[State 3112, Wall Impact Dust]
type = Helper
trigger1 = NumTarget && !Time
helperType = Normal
stateNo = 8111
ID = 8111
name = "Wall Impact Dust"
posType = Front
pos = 0, -80
ownPal = 1

[State 3112, Gigantic Pressure Sound Effect]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(3) = 1
value = 3110, 2
channel = 4

[State 3112, Gigantic Pressure Skull]
type = Helper
trigger1 = NumTarget && AnimElemTime(3) = 1
helperType = Normal
stateNo = 3113
ID = 3113
name = "Gigantic Pressure Skull"
posType = P1
size.xScale = 1
size.yScale = 1
ownPal = 1
ignoreHitPause = 0

[State 3112, Throw]
type = TargetState
trigger1 = NumTarget && AnimElemTime(3) = 1
value = 3117

[State 3112, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<GOD PRESS (TARGET)>==========
;Being Thrown Part 1/2
[StateDef 3115]
type = A
moveType = H
physics = N
velSet = 0, 0
sprPriority = 1

[State 3115, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 3115, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1415

[State 3115, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 3115, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1


;Being Thrown Part 3
[StateDef 3116]
type = A
moveType = H
physics = N
velSet = 0,0
sprPriority = 1

[State 3116, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 3116, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1416

[State 3116, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 3116, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1


;After Throw
[StateDef 3117]
type = A
physics = N
movetype = H
ctrl = 0
velSet = -4.74860335196, -9.0625
sprPriority = 1

[State 3117, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,1
ignoreHitPause = 1

[State 3117, VelAdd]
type = VelAdd
Trigger1 = 1
y = 0.634765625

[State 3117, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 3117, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 3117, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100



;========================<MAX GIGANTIC PRESSURE>=============================
[StateDef 3150]
type = S
physics = N
moveType = A
anim = 3100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
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
trigger1 = Time = 5
fvar(5) = 0

[State 3150, Unguardable]
type = VarSet
trigger1 = Time = 5 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 45

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
trigger1 = Time = 5
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = -39, -89
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3150, SuperPause]
type = SuperPause
trigger1 = Time = 5
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3150, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 900, 1 + 10 * (var(40) = 2)
channel = 0

[State 3150, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 0 + 10 * (var(40) = 2)
channel = 0

[State 3150, Step Sound 1]
type = PlaySnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 14
value = 100, 0
channel = 3

[State 3150, Step Sound 2]
type = PlaySnd
trigger1 = AnimElem = 10
trigger2 = AnimElem = 18
value = 100, 1
channel = 3

[State 3150, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 8.93854748603

[State 3150, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem >= 4 && (EnemyNear, Alive)
ID = 3150
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = 0, 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 2, 2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = 0, 0
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

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
value = 3115
ID = 3150
ignoreHitPause = 1
persistent = 0

[State 3150, ChangeState]
type = ChangeState
trigger1 = NumTarget(3150)
trigger1 = MoveHit && Target, Alive
value = 3160

[State 3150, ChangeState]
type = ChangeState
triggerAll = AnimElemTime(4) >= 0
trigger1 = MoveGuarded
trigger2 = !AnimTime
trigger3 = FrontEdgeDist <= 0
trigger4 = P2BodyDist X <= 0 && P2StateType = L
value = ifElse(MoveGuarded, 3106, 3105)


;Throw Part 1
[Statedef 3160]
type = S
physics = N
moveType = A
anim = 1410
ctrl = 0
velSet = 0, 0
sprPriority = 0

[State 3160, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 3160, NotHitBy]
type = NotHitBy
trigger1 = NumTarget
value = SCA
time = 1

[State 3160, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 11.1731843575
y = -1.875

[State 3160, VelAdd]
type = VelAdd
Trigger1 = AnimElemTime(2) > 0
y = 0.29296875

[State 3160, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 3115

[State 3160, TargetBind]
type = TargetBind
trigger1 = NumTarget
trigger1 = Time >= 0
pos = -31, -88

[State 3160, Voice]
type = PlaySnd
trigger1 = !Time
value = 730, 1 + 10 * (var(40) = 2)
channel = 0

[State 3160, Grab sound]
type = PlaySnd
trigger1 = !Time
value = 2, 800
channel = 2

[State 3160, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 41, 0
channel = 4

[State 3160, End]
type = ChangeState
trigger1 = AnimElemTime(1) >= 2 && AnimElemTime(2) < 0
trigger1 = FrontEdgeDist <= 52
trigger2 = AnimElemTime(2) >= 0
trigger2 = FrontEdgeDist <= 35
trigger3 = Time >= 600
value = 3162

[State 3110, End]
type = ChangeState
trigger1 = AnimElemTime(2) > 0
trigger1 = pos y > -vel y
value = 3161


;Throw Part 2
[Statedef 3161]
type = S
physics = N
moveType = A
anim = 1411
ctrl = 0
velSet = 0, 0
sprPriority = 0

[State 3161, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 3161, NotHitBy]
type = NotHitBy
trigger1 = NumTarget
value = SCA
time = 1

[State 3161, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3161, VelSet]
type = VelSet
trigger1 = 1
x = 11.1731843575

[State 3161, TargetBind]
type = TargetBind
trigger1 = NumTarget
pos = -31, -88

[State 3161, Slide Sound]
type = PlaySnd
trigger1 = !Time
value = 1, 1400
channel = 5

[State 3161, Dust Helper]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8103
ID = 8100
name = "Slide Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3161, End]
type = ChangeState
trigger1 = FrontEdgeDist <= 35
trigger2 = Time >= 600
value = 3162


;Throw Part 3
[Statedef 3162]
type = S
physics = N
moveType = A
anim = 3162
ctrl = 0
velSet = 0, 0
sprPriority = 2

[State 3162, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 3162, NotHitBy]
type = NotHitBy
trigger1 = NumTarget
value = SCA
time = 1

[State 3162, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3162, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 3166

[State 3162, Width]
type = Width
trigger1 = AnimElemTime(2) >= 0
edge = 65, 0

[State 3162, TargetBind]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) < 0
pos = 56, 0

[State 3162, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = 57, -10

[State 3162, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = 80, -5

[State 3162, TargetBind 4]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = 75, -12

[State 3162, TargetBind 5]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = 30, -15

[State 3162, TargetBind 6]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
pos = 18, -12

[State 3162, TargetBind 7]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
pos = 22, -12

[State 3162, TargetBind 8]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
pos = 7, -14

[State 3162, TargetBind 9]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 0
pos = -21, -8

[State 3162, TargetBind 10]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(11) < 0
pos = -29, -6

[State 3162, TargetBind 11]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(11) >= 0
pos = -26, -9

[State 3162, Wall Slam Sound Effect]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(2) = 0
value = 2, 1410
channel = 7

[State 3162, Explosion]
type = Explod
trigger1 = NumTarget && AnimElemTime(2) = 0
anim = 8030
sprPriority = 4
scale = 0.75, 0.75
posType = P1
pos = 88, -75
facing = 1
vFacing = 1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
persistent = 0

[State 3162, SprPriority]
type = SprPriority
trigger1 = NumTarget && AnimElemTime(2) = 0
trigger2 = NumTarget && AnimElemTime(5) = 0
value = 0

[State 3162, SprPriority]
type = SprPriority
trigger1 = NumTarget && AnimElemTime(3) = 0
value = 2

[State 3162, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElemTime(3) = 0
value = floor(ifElse(161 * fvar(11) < 7, -7, -161 * fvar(11)))
kill = 0

[State 3162, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElemTime(3) = 0
value = 36

[State 3162, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElemTime(3) = 0
value = 1

[State 3162, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(3) = 0
var(13) = 1

[State 3162, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(3) = 0
var(15) = 1
ignoreHitPause = 1

[State 3162, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElemTime(3) = 0
time = 14
ampl = -4
freq = 120

[State 3162, Wall Impact Dust]
type = Helper
trigger1 = NumTarget && !Time
helperType = Normal
stateNo = 8111
ID = 8111
name = "Wall Impact Dust"
posType = Front
pos = 0, -80
ownPal = 1

[State 3162, Gigantic Pressure Sound Effect]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(3) = 1
value = 3110, 2
channel = 8

[State 3162, Gigantic Pressure Skull]
type = Helper
trigger1 = NumTarget && AnimElemTime(3) = 1
helperType = Normal
stateNo = 3168
ID = 3168
name = "MAX Gigantic Pressure Skull"
posType = P1
size.xScale = 1
size.yScale = 1
ownPal = 1
ignoreHitPause = 0

[State 3162, Turn]
type = Turn
trigger1 = NumTarget && AnimElemTime(9) = 0

[State 3162, Voice]
type = PlaySnd
trigger1 = !Time
value = 4, 2 + 10 * (var(40) = 2)
channel = 0

[State 3162, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 3163


;Throw Part 4
[Statedef 3163]
type = S
physics = N
moveType = A
anim = 1410
ctrl = 0
velSet = 0, 0
sprPriority = 0

[State 3163, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 3163, NotHitBy]
type = NotHitBy
trigger1 = NumTarget
value = SCA
time = 1

[State 3163, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 11.1731843575
y = -1.875

[State 3163, VelAdd]
type = VelAdd
Trigger1 = AnimElemTime(2) > 0
y = 0.29296875

[State 3163, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 3115

[State 3163, TargetBind]
type = TargetBind
trigger1 = NumTarget
trigger1 = Time >= 0
pos = -31, -88

[State 3163, Voice]
type = PlaySnd
trigger1 = !Time
value = 730, 1 + 10 * (var(40) = 2)
channel = 0

[State 3163, Grab sound]
type = PlaySnd
trigger1 = !Time
value = 2, 800
channel = 2

[State 3163, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 41, 0
channel = 4

[State 3163, End]
type = ChangeState
trigger1 = AnimElemTime(1) >= 2 && AnimElemTime(2) < 0
trigger1 = FrontEdgeDist <= 52
trigger2 = AnimElemTime(2) >= 0
trigger2 = FrontEdgeDist <= 35
trigger3 = Time >= 600
value = 3165

[State 3163, End]
type = ChangeState
trigger1 = AnimElemTime(2) > 0
trigger1 = pos y > -vel y
value = 3164


;Throw Part 5
[Statedef 3164]
type = S
physics = N
moveType = A
anim = 1411
ctrl = 0
velSet = 0, 0
sprPriority = 0

[State 3164, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 3164, NotHitBy]
type = NotHitBy
trigger1 = NumTarget
value = SCA
time = 1

[State 3164, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3164, VelSet]
type = VelSet
trigger1 = 1
x = 11.1731843575

[State 3164, TargetBind]
type = TargetBind
trigger1 = NumTarget
pos = -31, -88

[State 3164, Slide Sound]
type = PlaySnd
trigger1 = !Time
value = 1, 1400
channel = 5

[State 3164, Dust Helper]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8103
ID = 8100
name = "Slide Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3164, End]
type = ChangeState
trigger1 = FrontEdgeDist <= 35
trigger2 = Time >= 600
value = 3165


;Throw Part 6
[Statedef 3165]
type = S
physics = N
moveType = A
anim = 3112
ctrl = 0
velSet = 0, 0
sprPriority = 0

[State 3165, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 3165, NotHitBy]
type = NotHitBy
trigger1 = NumTarget && AnimElemTime(3) < 1
value = SCA
time = 1

[State 3165, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3165, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 3116

[State 3165, Width]
type = Width
trigger1 = AnimElemTime(2) >= 0
edge = 65, 0

[State 3165, TargetBind]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) < 0
pos = 35, -7

[State 3165, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = 68, -21

[State 3165, SprPriority]
type = SprPriority
trigger1 = NumTarget && AnimElemTime(2) = 0
value = 2

[State 3165, Wall Slam Sound Effect]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(2) = 0
value = 2, 1410
channel = 3

[State 3165, Explosion]
type = Explod
trigger1 = NumTarget && AnimElemTime(2) = 0
anim = 8030
sprPriority = 4
scale = 0.75, 0.75
posType = P1
pos = 88, -75
facing = 1
vFacing = 1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
persistent = 0

[State 3165, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElemTime(3) = 0
value = floor(ifElse(161 * fvar(11) < 7, -7, -161 * fvar(11)))

[State 3165, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElemTime(3) = 0
value = 36

[State 3165, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElemTime(3) = 0
value = 1

[State 3165, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(3) = 0
var(13) = 1

[State 3165, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(3) = 0
var(15) = 1
ignoreHitPause = 1

[State 3165, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElemTime(3) = 0
time = 14
ampl = -4
freq = 120

[State 3165, Wall Impact Dust]
type = Helper
trigger1 = NumTarget && !Time
helperType = Normal
stateNo = 8111
ID = 8111
name = "Wall Impact Dust"
posType = Front
pos = 0, -80
ownPal = 1

[State 3165, Gigantic Pressure Sound Effect]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(3) = 1
value = 3110, 2
channel = 4

[State 3165, Gigantic Pressure Skull]
type = Helper
trigger1 = NumTarget && AnimElemTime(3) = 1
helperType = Normal
stateNo = 3168
ID = 3168
name = "MAX Gigantic Pressure Skull"
posType = P1
size.xScale = 1
size.yScale = 1
ownPal = 1
ignoreHitPause = 0

[State 3165, Throw]
type = TargetState
trigger1 = NumTarget && AnimElemTime(3) = 1
value = 3117

[State 3165, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Being Thrown Part 3
[StateDef 3166]
type = A
moveType = H
physics = N
velSet = 0,0
sprPriority = 1

[State 3166, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 3166, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3166

[State 3166, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 3166, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1



;========================<DEAD END SCREAMER>=============================
[StateDef 3200]
type = S
physics = N
moveType = A
anim = 3200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3200, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

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
trigger1 = Time = 3
fvar(5) = 0

[State 3200, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

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
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 3200, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 5, -80
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3200, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3200, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) = 0
x = ifElse(var(10) = 2, 6.70391061453, ifElse(var(10) = 1, 5.58659217877, 4.46927374302))
y = -10

[State 3200, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 0
y = 0.78125

[State 3200, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElemTime(3) = 0
stateType = A
physics = N

[State 3200, Dust Helper]
type = Helper
trigger1 = AnimElemTime(3) = 0
helperType = Normal
stateNo = 8100
ID = 8100
name = "Dead End Screamer Dust"
posType = P1
ownPal = 1

[State 3200, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 41, 0
channel = 5

[State 3200, Voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = 4, 2 + 10 * (var(40) = 2)
channel = 0

[State 3200, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1, 5
channel = 1

[State 3200, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 7 && !var(37)
attr = A, HT
hitFlag = M
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
sparkXY = -10 + 0 * (var(35) := 55), var(36) := -16
numHits = 0
p1StateNo = 3210

[State 3200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 3200, ChangeState]
type = ChangeState
trigger1 = AnimElemTime(3) > 0
trigger1 = pos y > -vel y
value = 3201


;Landing (Missed)
[StateDef 3201]
type = S
anim = 3201
physics = N
moveType = I
velSet = 0,0

[State 3201, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3201, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3201, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 3201, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Sucess
[Statedef 3210]
type = S
physics = N
moveType = A
anim = 3210
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 3210, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 3210, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 3215

[State 3210, BindToTarget 1]
type = BindToTarget
trigger1 = NumTarget
trigger1 = AnimElemTime(2) < 0
pos = 0, 0, Head

[State 3210, BindToTarget 2]
type = BindToTarget
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = 0, 0, Mid

[State 3210, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElemTime(1) = 0
value = floor(ifElse(56 * fvar(11) < 7, -7, -56 * fvar(11)))
kill = 0

[State 3210, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElemTime(1) = 0
value = 36

[State 3210, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElemTime(1) = 0
value = 1

[State 3210, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(1) = 0
var(13) = 1

[State 3210, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(1) = 0
var(15) = 1
ignoreHitPause = 1

[State 3210, Hit Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(1) = 0
value = 2, 5
channel = 2

[State 3210, Hit Spark]
type = Helper
trigger1 = NumTarget && AnimElemTime(1) = 0
helperType = Normal
stateNo = 8014
ID = 8001
name = "Spark"
posType = P1
pos = 0, 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3210, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElemTime(1) = 0
time = 14
ampl = -4
freq = 120

[State 3210, Throw]
type = TargetState
trigger1 = AnimElemTime(3) = 0 && NumTarget
value = 3216

[State 3210, BindToTarget 2]
type = BindToTarget
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(111) < 0
pos = 0, -10, Foot

[State 3210, Voice 1]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(9) = 0
value = 1200, 0
channel = 0

[State 3210, Sound Effect]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(9) = 0
value = 3210, 1
channel = 1

[State 3210, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElemTime(13) = 0
trigger2 = NumTarget && AnimElemTime(20) = 0
trigger3 = NumTarget && AnimElemTime(27) = 0
trigger4 = NumTarget && AnimElemTime(34) = 0
trigger5 = NumTarget && AnimElemTime(41) = 0
trigger6 = NumTarget && AnimElemTime(48) = 0
trigger7 = NumTarget && AnimElemTime(55) = 0
trigger8 = NumTarget && AnimElemTime(62) = 0
trigger9 = NumTarget && AnimElemTime(69) = 0
trigger10 = NumTarget && AnimElemTime(76) = 0
trigger11 = NumTarget && AnimElemTime(83) = 0
trigger12 = NumTarget && AnimElemTime(90) = 0
trigger13 = NumTarget && AnimElemTime(97) = 0
trigger14 = NumTarget && AnimElemTime(104) = 0
value = floor(ifElse(7 * fvar(11) < 7, -7, -7 * fvar(11)))
kill = 0

[State 3210, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElemTime(13) = 0
trigger2 = NumTarget && AnimElemTime(20) = 0
trigger3 = NumTarget && AnimElemTime(27) = 0
trigger4 = NumTarget && AnimElemTime(34) = 0
trigger5 = NumTarget && AnimElemTime(41) = 0
trigger6 = NumTarget && AnimElemTime(48) = 0
trigger7 = NumTarget && AnimElemTime(55) = 0
trigger8 = NumTarget && AnimElemTime(62) = 0
trigger9 = NumTarget && AnimElemTime(69) = 0
trigger10 = NumTarget && AnimElemTime(76) = 0
trigger11 = NumTarget && AnimElemTime(83) = 0
trigger12 = NumTarget && AnimElemTime(90) = 0
trigger13 = NumTarget && AnimElemTime(97) = 0
trigger14 = NumTarget && AnimElemTime(104) = 0
trigger15 = NumTarget && AnimElemTime(111) = 0
value = 36

[State 3210, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElemTime(13) = 0
trigger2 = NumTarget && AnimElemTime(20) = 0
trigger3 = NumTarget && AnimElemTime(27) = 0
trigger4 = NumTarget && AnimElemTime(34) = 0
trigger5 = NumTarget && AnimElemTime(41) = 0
trigger6 = NumTarget && AnimElemTime(48) = 0
trigger7 = NumTarget && AnimElemTime(55) = 0
trigger8 = NumTarget && AnimElemTime(62) = 0
trigger9 = NumTarget && AnimElemTime(69) = 0
trigger10 = NumTarget && AnimElemTime(76) = 0
trigger11 = NumTarget && AnimElemTime(83) = 0
trigger12 = NumTarget && AnimElemTime(90) = 0
trigger13 = NumTarget && AnimElemTime(97) = 0
trigger14 = NumTarget && AnimElemTime(104) = 0
trigger15 = NumTarget && AnimElemTime(111) = 0
value = 1

[State 3210, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(13) = 0
trigger2 = NumTarget && AnimElemTime(20) = 0
trigger3 = NumTarget && AnimElemTime(27) = 0
trigger4 = NumTarget && AnimElemTime(34) = 0
trigger5 = NumTarget && AnimElemTime(41) = 0
trigger6 = NumTarget && AnimElemTime(48) = 0
trigger7 = NumTarget && AnimElemTime(55) = 0
trigger8 = NumTarget && AnimElemTime(62) = 0
trigger9 = NumTarget && AnimElemTime(69) = 0
trigger10 = NumTarget && AnimElemTime(76) = 0
trigger11 = NumTarget && AnimElemTime(83) = 0
trigger12 = NumTarget && AnimElemTime(90) = 0
trigger13 = NumTarget && AnimElemTime(97) = 0
trigger14 = NumTarget && AnimElemTime(104) = 0
trigger15 = NumTarget && AnimElemTime(111) = 0
var(13) = 1

[State 3210, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(13) = 0
trigger2 = NumTarget && AnimElemTime(20) = 0
trigger3 = NumTarget && AnimElemTime(27) = 0
trigger4 = NumTarget && AnimElemTime(34) = 0
trigger5 = NumTarget && AnimElemTime(41) = 0
trigger6 = NumTarget && AnimElemTime(48) = 0
trigger7 = NumTarget && AnimElemTime(55) = 0
trigger8 = NumTarget && AnimElemTime(62) = 0
trigger9 = NumTarget && AnimElemTime(69) = 0
trigger10 = NumTarget && AnimElemTime(76) = 0
trigger11 = NumTarget && AnimElemTime(83) = 0
trigger12 = NumTarget && AnimElemTime(90) = 0
trigger13 = NumTarget && AnimElemTime(97) = 0
trigger14 = NumTarget && AnimElemTime(104) = 0
trigger15 = NumTarget && AnimElemTime(111) = 0
var(15) = 1
ignoreHitPause = 1

[State 3210, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElemTime(13) = 0
trigger2 = NumTarget && AnimElemTime(20) = 0
trigger3 = NumTarget && AnimElemTime(27) = 0
trigger4 = NumTarget && AnimElemTime(34) = 0
trigger5 = NumTarget && AnimElemTime(41) = 0
trigger6 = NumTarget && AnimElemTime(48) = 0
trigger7 = NumTarget && AnimElemTime(55) = 0
trigger8 = NumTarget && AnimElemTime(62) = 0
trigger9 = NumTarget && AnimElemTime(69) = 0
trigger10 = NumTarget && AnimElemTime(76) = 0
trigger11 = NumTarget && AnimElemTime(83) = 0
trigger12 = NumTarget && AnimElemTime(90) = 0
trigger13 = NumTarget && AnimElemTime(97) = 0
trigger14 = NumTarget && AnimElemTime(104) = 0
trigger15 = NumTarget && AnimElemTime(111) = 0
time = 14
ampl = -4
freq = 120

[State 3210, Throw]
type = TargetState
trigger1 = NumTarget && AnimElemTime(13) = 0
trigger2 = NumTarget && AnimElemTime(20) = 0
trigger3 = NumTarget && AnimElemTime(27) = 0
trigger4 = NumTarget && AnimElemTime(34) = 0
trigger5 = NumTarget && AnimElemTime(41) = 0
trigger6 = NumTarget && AnimElemTime(48) = 0
trigger7 = NumTarget && AnimElemTime(55) = 0
trigger8 = NumTarget && AnimElemTime(62) = 0
trigger9 = NumTarget && AnimElemTime(69) = 0
trigger10 = NumTarget && AnimElemTime(76) = 0
trigger11 = NumTarget && AnimElemTime(83) = 0
trigger12 = NumTarget && AnimElemTime(90) = 0
trigger13 = NumTarget && AnimElemTime(97) = 0
trigger14 = NumTarget && AnimElemTime(104) = 0
value = 3217

[State 3210, Dust Helper 1]
type = Helper
trigger1 = NumTarget && AnimElemTime(13) = 0
trigger2 = NumTarget && AnimElemTime(27) = 0
trigger3 = NumTarget && AnimElemTime(41) = 0
trigger4 = NumTarget && AnimElemTime(55) = 0
trigger5 = NumTarget && AnimElemTime(69) = 0
trigger6 = NumTarget && AnimElemTime(83) = 0
trigger7 = NumTarget && AnimElemTime(97) = 0
trigger8 = NumTarget && AnimElemTime(111) = 0
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3210, Dust Helper 2]
type = Helper
trigger1 = NumTarget && AnimElemTime(20) = 0
trigger2 = NumTarget && AnimElemTime(34) = 0
trigger3 = NumTarget && AnimElemTime(48) = 0
trigger4 = NumTarget && AnimElemTime(62) = 0
trigger5 = NumTarget && AnimElemTime(76) = 0
trigger6 = NumTarget && AnimElemTime(90) = 0
trigger7 = NumTarget && AnimElemTime(104) = 0
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
facing = -1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3210, PosSet]
type = PosSet
trigger1 = NumTarget && AnimElemTime(111) = 0
y = 0

[State 3210, HitSound]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(111) = 0
value = 2, 3200
channel = 3

[State 3210, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElemTime(111) = 0
value = floor(ifElse(112 * fvar(11) < 7, -7, -112 * fvar(11)))

[State 3210, Throw]
type = TargetState
trigger1 = NumTarget && AnimElemTime(111) = 0
value = 3218

[State 3210, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Being Slammed
[StateDef 3215]
type = U
moveType = H
physics = N
velSet = 0,0

[State 3215, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3215

[State 3215, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 8
value = ifElse(SelfAnimExist(5111) || SelfAnimExist(5112), 5012, 5070)

[State 3215, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 8
trigger1 = SelfAnimExist(5420 + (StateType = C))
value = 5420 + (StateType = C)


;Hitting the Ground
[StateDef 3216]
type = L
moveType = H
physics = N
velSet = 0, 0
sprPriority = 0

[State 3216, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5080

[State 3216, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3216, HitFallDamage]
type = HitFallDamage
trigger1 = !Time

[State 3216, EnvShake]
type = EnvShake
trigger1 = !Time
time = 14
ampl = -4

[State 3216, Impact Sound]
type = PlaySnd
trigger1 = !Time
value = F7, 1

[State 3216, Hitting the Floor FX]
type = Explod
trigger1 = !Time
anim = F61
posType = P1
pos = 0, 0
sprPriority = -3

[State 3216, ChangeAnim2]
type = ChangeAnim
trigger1 = Anim = 5080 && !AnimTime
value = 5110


;Hit by Dead End Screamer
[StateDef 3217]
type = L
moveType = H
physics = N
velSet = 0, 0
sprPriority = 0

[State 3217, ChangeAnim2]
type = ChangeAnim
trigger1 = !Time
value = 5080

[State 3217, ChangeAnim2]
type = ChangeAnim
trigger1 = Anim = 5080 && !AnimTime
value = 5110


;Bouncing Off Ground
[StateDef 3218]
type = A
physics = N
movetype = H
ctrl = 0
velSet = -4.46927374302, -6.5625
sprPriority = 0

[State 3218, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5061

[State 3218, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,1
ignoreHitPause = 1

[State 3218, VelAdd]
type = VelAdd
Trigger1 = 1
y = 0.5126953125

[State 3218, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 3218, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100



;========================<MAX DEAD END SCREAMER>=============================
[StateDef 3250]
type = S
physics = N
moveType = A
anim = 3250
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3250, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3250, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3250, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3250, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3250, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 45

[State 3250, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3250, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3250, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 3250, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 5, -80
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3250, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3250, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) = 0
x = 8.93854748603
y = -10

[State 3250, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 0
y = 0.78125

[State 3250, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElemTime(3) = 0
stateType = A
physics = N

[State 3250, Dust Helper]
type = Helper
trigger1 = AnimElemTime(3) = 0
helperType = Normal
stateNo = 8100
ID = 8100
name = "MAX Dead End Screamer Dust"
posType = P1
ownPal = 1

[State 3250, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 41, 0
channel = 5

[State 3250, Voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = 4, 2 + 10 * (var(40) = 2)
channel = 0

[State 3250, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1, 5
channel = 1

[State 3250, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 7 && !var(37)
attr = A, HT
hitFlag = M
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
sparkXY = -10 + 0 * (var(35) := 55), var(36) := -16
numHits = 0
p1StateNo = 3260

[State 3250, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 3250, ChangeState]
type = ChangeState
trigger1 = AnimElemTime(3) > 0
trigger1 = pos y > -vel y
value = 3201


;Sucess
[Statedef 3260]
type = S
physics = N
moveType = A
anim = 3260
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 3260, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 3260, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 3265

[State 3260, BindToTarget 1]
type = BindToTarget
trigger1 = NumTarget
trigger1 = AnimElemTime(12) < 0
pos = 0, 0, Head

[State 3260, BindToTarget 2]
type = BindToTarget
trigger1 = NumTarget
trigger1 = AnimElemTime(12) >= 0 && AnimElemTime(13) < 0
pos = 0, 0, Mid

[State 3260, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElemTime(1) = 0
trigger2 = NumTarget && AnimElemTime(8) = 0
value = floor(ifElse(56 * fvar(11) < 7, -7, -56 * fvar(11)))
kill = 0

[State 3260, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElemTime(1) = 0
value = 36

[State 3260, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElemTime(1) = 0
value = 1

[State 3260, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(1) = 0
var(13) = 1

[State 3260, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(1) = 0
var(15) = 1
ignoreHitPause = 1

[State 3260, Hit Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(1) = 0
value = 2, 5
channel = 2

[State 3260, Hit Spark]
type = Helper
trigger1 = NumTarget && AnimElemTime(1) = 0
helperType = Normal
stateNo = 8014
ID = 8001
name = "Spark"
posType = P1
pos = 0, 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3260, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElemTime(1) = 0
time = 14
ampl = -4
freq = 120

[State 3260, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElemTime(8) = 0
value = 36

[State 3260, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElemTime(8) = 0
value = 1

[State 3260, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(8) = 0
var(13) = 1

[State 3260, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(8) = 0
var(15) = 1
ignoreHitPause = 1

[State 3260, Hit Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(8) = 0
value = 2, 3250
channel = 2

[State 3260, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElemTime(8) = 0
time = 14
ampl = -4
freq = 120

[State 3260, Throw]
type = TargetState
trigger1 = AnimElemTime(13) = 0 && NumTarget
value = 3216

[State 3260, BindToTarget 2]
type = BindToTarget
trigger1 = NumTarget
trigger1 = AnimElemTime(13) >= 0 && AnimElemTime(112) < 0
pos = 0, -10, Foot

[State 3260, Voice 1]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(17) = 0
value = 1200, 0
channel = 0

[State 3260, Sound Effect]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(17) = 0
value = 3260, 1
channel = 1

[State 3260, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElemTime(21) = 0
trigger2 = NumTarget && AnimElemTime(28) = 0
trigger3 = NumTarget && AnimElemTime(35) = 0
trigger4 = NumTarget && AnimElemTime(42) = 0
trigger5 = NumTarget && AnimElemTime(49) = 0
trigger6 = NumTarget && AnimElemTime(56) = 0
trigger7 = NumTarget && AnimElemTime(63) = 0
trigger8 = NumTarget && AnimElemTime(70) = 0
trigger9 = NumTarget && AnimElemTime(77) = 0
trigger10 = NumTarget && AnimElemTime(84) = 0
trigger11 = NumTarget && AnimElemTime(91) = 0
trigger12 = NumTarget && AnimElemTime(98) = 0
trigger13 = NumTarget && AnimElemTime(105) = 0
trigger14 = NumTarget && AnimElemTime(112) = 0
trigger15 = NumTarget && AnimElemTime(119) = 0
trigger16 = NumTarget && AnimElemTime(126) = 0
trigger17 = NumTarget && AnimElemTime(133) = 0
trigger18 = NumTarget && AnimElemTime(140) = 0
value = floor(ifElse(7 * fvar(11) < 7, -7, -7 * fvar(11)))
kill = 0

[State 3260, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElemTime(21) = 0
trigger2 = NumTarget && AnimElemTime(28) = 0
trigger3 = NumTarget && AnimElemTime(35) = 0
trigger4 = NumTarget && AnimElemTime(42) = 0
trigger5 = NumTarget && AnimElemTime(49) = 0
trigger6 = NumTarget && AnimElemTime(56) = 0
trigger7 = NumTarget && AnimElemTime(63) = 0
trigger8 = NumTarget && AnimElemTime(70) = 0
trigger9 = NumTarget && AnimElemTime(77) = 0
trigger10 = NumTarget && AnimElemTime(84) = 0
trigger11 = NumTarget && AnimElemTime(91) = 0
trigger12 = NumTarget && AnimElemTime(98) = 0
trigger13 = NumTarget && AnimElemTime(105) = 0
trigger14 = NumTarget && AnimElemTime(112) = 0
trigger15 = NumTarget && AnimElemTime(119) = 0
trigger16 = NumTarget && AnimElemTime(126) = 0
trigger17 = NumTarget && AnimElemTime(133) = 0
trigger18 = NumTarget && AnimElemTime(140) = 0
trigger19 = NumTarget && AnimElemTime(147) = 0
value = 36

[State 3260, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElemTime(21) = 0
trigger2 = NumTarget && AnimElemTime(28) = 0
trigger3 = NumTarget && AnimElemTime(35) = 0
trigger4 = NumTarget && AnimElemTime(42) = 0
trigger5 = NumTarget && AnimElemTime(49) = 0
trigger6 = NumTarget && AnimElemTime(56) = 0
trigger7 = NumTarget && AnimElemTime(63) = 0
trigger8 = NumTarget && AnimElemTime(70) = 0
trigger9 = NumTarget && AnimElemTime(77) = 0
trigger10 = NumTarget && AnimElemTime(84) = 0
trigger11 = NumTarget && AnimElemTime(91) = 0
trigger12 = NumTarget && AnimElemTime(98) = 0
trigger13 = NumTarget && AnimElemTime(105) = 0
trigger14 = NumTarget && AnimElemTime(112) = 0
trigger15 = NumTarget && AnimElemTime(119) = 0
trigger16 = NumTarget && AnimElemTime(126) = 0
trigger17 = NumTarget && AnimElemTime(133) = 0
trigger18 = NumTarget && AnimElemTime(140) = 0
trigger19 = NumTarget && AnimElemTime(147) = 0
value = 1

[State 3260, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(21) = 0
trigger2 = NumTarget && AnimElemTime(28) = 0
trigger3 = NumTarget && AnimElemTime(35) = 0
trigger4 = NumTarget && AnimElemTime(42) = 0
trigger5 = NumTarget && AnimElemTime(49) = 0
trigger6 = NumTarget && AnimElemTime(56) = 0
trigger7 = NumTarget && AnimElemTime(63) = 0
trigger8 = NumTarget && AnimElemTime(70) = 0
trigger9 = NumTarget && AnimElemTime(77) = 0
trigger10 = NumTarget && AnimElemTime(84) = 0
trigger11 = NumTarget && AnimElemTime(91) = 0
trigger12 = NumTarget && AnimElemTime(98) = 0
trigger13 = NumTarget && AnimElemTime(105) = 0
trigger14 = NumTarget && AnimElemTime(112) = 0
trigger15 = NumTarget && AnimElemTime(119) = 0
trigger16 = NumTarget && AnimElemTime(126) = 0
trigger17 = NumTarget && AnimElemTime(133) = 0
trigger18 = NumTarget && AnimElemTime(140) = 0
trigger19 = NumTarget && AnimElemTime(147) = 0
var(13) = 1

[State 3260, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(21) = 0
trigger2 = NumTarget && AnimElemTime(28) = 0
trigger3 = NumTarget && AnimElemTime(35) = 0
trigger4 = NumTarget && AnimElemTime(42) = 0
trigger5 = NumTarget && AnimElemTime(49) = 0
trigger6 = NumTarget && AnimElemTime(56) = 0
trigger7 = NumTarget && AnimElemTime(63) = 0
trigger8 = NumTarget && AnimElemTime(70) = 0
trigger9 = NumTarget && AnimElemTime(77) = 0
trigger10 = NumTarget && AnimElemTime(84) = 0
trigger11 = NumTarget && AnimElemTime(91) = 0
trigger12 = NumTarget && AnimElemTime(98) = 0
trigger13 = NumTarget && AnimElemTime(105) = 0
trigger14 = NumTarget && AnimElemTime(112) = 0
trigger15 = NumTarget && AnimElemTime(119) = 0
trigger16 = NumTarget && AnimElemTime(126) = 0
trigger17 = NumTarget && AnimElemTime(133) = 0
trigger18 = NumTarget && AnimElemTime(140) = 0
trigger19 = NumTarget && AnimElemTime(147) = 0
var(15) = 1
ignoreHitPause = 1

[State 3260, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElemTime(21) = 0
trigger2 = NumTarget && AnimElemTime(28) = 0
trigger3 = NumTarget && AnimElemTime(35) = 0
trigger4 = NumTarget && AnimElemTime(42) = 0
trigger5 = NumTarget && AnimElemTime(49) = 0
trigger6 = NumTarget && AnimElemTime(56) = 0
trigger7 = NumTarget && AnimElemTime(63) = 0
trigger8 = NumTarget && AnimElemTime(70) = 0
trigger9 = NumTarget && AnimElemTime(77) = 0
trigger10 = NumTarget && AnimElemTime(84) = 0
trigger11 = NumTarget && AnimElemTime(91) = 0
trigger12 = NumTarget && AnimElemTime(98) = 0
trigger13 = NumTarget && AnimElemTime(105) = 0
trigger14 = NumTarget && AnimElemTime(112) = 0
trigger15 = NumTarget && AnimElemTime(119) = 0
trigger16 = NumTarget && AnimElemTime(126) = 0
trigger17 = NumTarget && AnimElemTime(133) = 0
trigger18 = NumTarget && AnimElemTime(140) = 0
trigger19 = NumTarget && AnimElemTime(147) = 0
time = 14
ampl = -4
freq = 120

[State 3260, Throw]
type = TargetState
trigger1 = NumTarget && AnimElemTime(21) = 0
trigger2 = NumTarget && AnimElemTime(28) = 0
trigger3 = NumTarget && AnimElemTime(35) = 0
trigger4 = NumTarget && AnimElemTime(42) = 0
trigger5 = NumTarget && AnimElemTime(49) = 0
trigger6 = NumTarget && AnimElemTime(56) = 0
trigger7 = NumTarget && AnimElemTime(63) = 0
trigger8 = NumTarget && AnimElemTime(70) = 0
trigger9 = NumTarget && AnimElemTime(77) = 0
trigger10 = NumTarget && AnimElemTime(84) = 0
trigger11 = NumTarget && AnimElemTime(91) = 0
trigger12 = NumTarget && AnimElemTime(98) = 0
trigger13 = NumTarget && AnimElemTime(105) = 0
trigger14 = NumTarget && AnimElemTime(112) = 0
trigger15 = NumTarget && AnimElemTime(119) = 0
trigger16 = NumTarget && AnimElemTime(126) = 0
trigger17 = NumTarget && AnimElemTime(133) = 0
trigger18 = NumTarget && AnimElemTime(140) = 0
value = 3217

[State 3260, Dust Helper 1]
type = Helper
trigger1 = NumTarget && AnimElemTime(21) = 0
trigger2 = NumTarget && AnimElemTime(35) = 0
trigger3 = NumTarget && AnimElemTime(49) = 0
trigger4 = NumTarget && AnimElemTime(63) = 0
trigger5 = NumTarget && AnimElemTime(77) = 0
trigger6 = NumTarget && AnimElemTime(91) = 0
trigger7 = NumTarget && AnimElemTime(105) = 0
trigger8 = NumTarget && AnimElemTime(119) = 0
trigger9 = NumTarget && AnimElemTime(133) = 0
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3260, Dust Helper 2]
type = Helper
trigger1 = NumTarget && AnimElemTime(28) = 0
trigger2 = NumTarget && AnimElemTime(42) = 0
trigger3 = NumTarget && AnimElemTime(56) = 0
trigger4 = NumTarget && AnimElemTime(70) = 0
trigger5 = NumTarget && AnimElemTime(84) = 0
trigger6 = NumTarget && AnimElemTime(98) = 0
trigger7 = NumTarget && AnimElemTime(112) = 0
trigger8 = NumTarget && AnimElemTime(126) = 0
trigger9 = NumTarget && AnimElemTime(140) = 0
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
facing = -1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3260, PosSet]
type = PosSet
trigger1 = NumTarget && AnimElemTime(147) = 0
y = 0

[State 3260, HitSound]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(147) = 0
value = 2, 3200
channel = 3

[State 3260, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElemTime(147) = 0
value = floor(ifElse(112 * fvar(11) < 7, -7, -112 * fvar(11)))

[State 3260, Throw]
type = TargetState
trigger1 = NumTarget && AnimElemTime(147) = 0
value = 3218

[State 3260, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Being Slammed
[StateDef 3265]
type = U
moveType = H
physics = N
velSet = 0,0

[State 3265, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3265

[State 3265, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 85
value = ifElse(SelfAnimExist(5111) || SelfAnimExist(5112), 5012, 5070)

[State 3265, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 85
trigger1 = SelfAnimExist(5420 + (StateType = C))
value = 5420 + (StateType = C)



;========================<DESTRUCTION OMEGA>=============================
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
trigger1 = (EnemyNear, StateNo != [120, 155])
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
trigger1 = AnimElemTime(4) < 0
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
pos = 22, -122
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
value = 3300, 0
channel = 0

[State 3300, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1, 2
channel = 1

[State 3300, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 7
ID = 3300
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = 0, 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 12, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.5
air.cornerPush.velOff = 0
yAccel = 0.5859375
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := -1)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 114), var(36) := -48
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
numHits = 0

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
persistent = 0

[State 3300, ChangeState]
type = ChangeState
trigger1 = NumTarget(3300)
trigger1 = MoveHit && Target, Alive
value = 3310

[State 3300, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 3300, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Success
[StateDef 3310]
type = S
anim = 3310
physics = N
moveType = A
velSet = 0, 0
sprPriority = 0

[State 3310, Width]
type = Width
trigger1 = NumTarget
trigger1 = AnimElemTime(55) < 0
edge = 45, 0

[State 3310, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) < 0
pos = 105, 0

[State 3310, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = 80, 0

[State 3310, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = 50, 0

[State 3310, TargetBind 4]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(55) < 0
pos = 40, 0

[State 3310, SprPriority]
type = SprPriority
trigger1 = NumTarget
trigger1 = AnimElem = 10
value = 1

[State 3310, Voice]
type = PlaySnd
trigger1 = AnimElem = 9
value = 3310, 0
channel = 0

[State 3310, Woosh Sound 1]
type = PlaySnd
trigger1 = AnimElem = 9 || AnimElem = 17 || AnimElem = 32 || AnimElem = 47
value = 1, 2
channel = 1

[State 3310, Woosh Sound 2]
type = PlaySnd
trigger1 = AnimElem = 24 || AnimElem = 37
value = 1, 5
channel = 1

[State 3310, Hit Sound]
type = Null
trigger1 = AnimElem = 10 || AnimElem = 18 || AnimElem = 33 || AnimElem = 48
trigger1 = var(31) := 2
trigger2 = AnimElem = 25 || AnimElem = 38
trigger2 = var(31) := 5

[State 3310, Spark XY]
type = Null
trigger1 = AnimElem = 10 || AnimElem = 18
trigger1 = var(35) := 38 || var(36) := -95
trigger2 = AnimElem = 25
trigger2 = var(35) := 65 || var(36) := -30
trigger3 = AnimElem = 33
trigger3 = var(35) := 65 || var(36) := -75
trigger4 = AnimElem = 38
trigger4 = var(35) := 25 || var(36) := -65
trigger5 = AnimElem = 48
trigger5 = var(35) := 80 || var(36) := -70

[State 3310, HitDef: Low]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 =  AnimElem = 18 || AnimElem = 25 || AnimElem = 38
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 4, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 0, 0
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.5
air.cornerPush.velOff = 0
yAccel = 0.59814453125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3310, HitDef: High]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 10 || AnimElem = 33 || AnimElem = 48
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 4, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 0, 0
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.5
air.cornerPush.velOff = 0
yAccel = 0.59814453125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3310, Destruction Omega Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 57
value = 1100, 1
channel = 3

[State 3310, Destruction Omega Effect]
type = Explod
trigger1 = AnimElem = 57
anim = 3313
ID = 3313
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 3310, VelSet]
type = VelSet
trigger1 = AnimElemTime(58) = 1
x = 1.11731843575
y = -7.5

[State 3310, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(58) > 1
y = 0.390625

[State 3310, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElemTime(58) = 1
stateType = A
physics = N

[State 3310, Dust Helper]
type = Helper
trigger1 = AnimElemTime(58) = 1
helperType = Normal
stateNo = 8100
ID = 8100
name = "Destruction Omega Dust"
posType = P1
ownPal = 1

[State 3310, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(58) = 0
value = 41, 0
channel = 5

[State 3310, HitDef: Final]
type = HitDef
triggerAll = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 57
trigger2 = AnimElem = 58
trigger3 = AnimElem = 59
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Heavy
air.animType = Heavy
fall.animType = Heavy
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
yAccel = 0.537109375
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8019)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 51), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3310, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(60) >= 0
moveType = I

[State 3310, ChangeState]
type = ChangeState
trigger1 = AnimElemTime(58) > 1
trigger1 = pos y > -vel y
value = 3311


;Landing (Missed)
[StateDef 3311]
type = S
anim = 3311
physics = N
moveType = I
velSet = 0, 0

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
value = 52,0

[State 3311, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Target
[StateDef 3315]
type = S
moveType = H
physics  = N
velSet = 0, 0
sprPriority = 1
faceP2 = 1

[State 3315, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3315, HitFallSet]
type = HitFallSet
trigger1 = !Time
value = 0

[State 3315, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3315



;========================<MAX DESTRUCTION OMEGA>=============================
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
trigger1 = (EnemyNear, StateNo != [120, 155])
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
trigger1 = AnimElemTime(4) < 0
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
pos = 22, -122
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
value = 3300, 0
channel = 0

[State 3350, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1, 2
channel = 1

[State 3350, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 7
ID = 3350
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = 0 ,0
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 12, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.5
air.cornerPush.velOff = 0
yAccel = 0.5859375
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 114), var(36) := -48
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
numHits = 0

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
value = 3315
ID = 3350
ignoreHitPause = 1
persistent = 0

[State 3350, ChangeState]
type = ChangeState
trigger1 = NumTarget(3350)
trigger1 = MoveHit && Target, Alive
value = 3360

[State 3350, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 3350, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;Success
[StateDef 3360]
type = S
anim = 3360
physics = N
moveType = A
velSet = 0, 0
sprPriority = 0

[State 3360, Width]
type = Width
trigger1 = NumTarget
trigger1 = AnimElemTime(55) < 0
edge = 45, 0

[State 3360, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) < 0
pos = 105, 0

[State 3360, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = 80, 0

[State 3360, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = 50, 0

[State 3360, TargetBind 4]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(55) < 0
pos = 40, 0

[State 3360, SprPriority]
type = SprPriority
trigger1 = NumTarget
trigger1 = AnimElem = 10
value = 1

[State 3360, Voice]
type = PlaySnd
trigger1 = AnimElem = 9
value = 3310, 0
channel = 0

[State 3360, Woosh Sound 1]
type = PlaySnd
trigger1 = AnimElem = 9 || AnimElem = 27 || AnimElem = 59 || AnimElem = 81
value = 1, 2
channel = 1

[State 3360, Woosh Sound 2]
type = PlaySnd
trigger1 = AnimElem = 16 || AnimElem = 33 || AnimElem = 41 || AnimElem = 51 || AnimElem = 64 || AnimElem = 72
value = 1, 5
channel = 1

[State 3360, Hit Sound]
type = Null
trigger1 = AnimElem = 10 || AnimElem = 28 || AnimElem = 60 || AnimElem = 82
trigger1 = var(31) := 2
trigger2 = AnimElem = 17 || AnimElem = 34 || AnimElem = 42 || AnimElem = 52 || AnimElem = 65 || AnimElem = 73
trigger2 = var(31) := 5

[State 3360, Spark XY]
type = Null
trigger1 = AnimElem = 10 || AnimElem = 28
trigger1 = var(35) := 38 || var(36) := -95
trigger2 = AnimElem = 17 || AnimElem = 52
trigger2 = var(35) := 55 || var(36) := -65
trigger3 = AnimElem = 34 || AnimElem = 73
trigger3 = var(35) := 52 || var(36) := -65
trigger4 = AnimElem = 42
trigger4 = var(35) := 65 || var(36) := -30
trigger5 = AnimElem = 60
trigger5 = var(35) := 65 || var(36) := -75
trigger6 = AnimElem = 65
trigger6 = var(35) := 25 || var(36) := -65
trigger7 = AnimElem = 82
trigger7 = var(35) := 80 || var(36) := -70

[State 3360, HitDef: Low]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 28 || AnimElem = 42 || AnimElem = 60 || AnimElem = 65 || AnimElem = 82
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 4, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 0, 0
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.5
air.cornerPush.velOff = 0
yAccel = 0.59814453125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3360, HitDef: High]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 10 || AnimElem = 17 || AnimElem = 34 || AnimElem = 52 || AnimElem = 73
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 4, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 0, 0
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.5
air.cornerPush.velOff = 0
yAccel = 0.59814453125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3360, Voice]
type = PlaySnd
trigger1 = AnimElem = 92
value = 1600, 1
channel = 0

[State 3360, Destruction Omega Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 91
trigger2 = AnimElem = 103
value = 1100, 1
channel = 3

[State 3360, Destruction Omega Effect]
type = Explod
trigger1 = AnimElem = 91
anim = 3313
ID = 3313
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 3360, VelSet]
type = VelSet
trigger1 = AnimElemTime(92) = 1
x = 1.11731843575
y = -7.5

[State 3360, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(92) > 1
y = 0.390625

[State 3360, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElemTime(92) = 1
stateType = A
physics = N

[State 3360, Dust Helper]
type = Helper
trigger1 = AnimElemTime(92) = 1
helperType = Normal
stateNo = 8100
ID = 8100
name = "MAX Destruction Omega Dust"
posType = P1
ownPal = 1

[State 3360, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(92) = 0
value = 41, 0
channel = 5

[State 3360, HitDef: Air Hits]
type = HitDef
triggerAll = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 91
trigger2 = AnimElem = 92
trigger3 = AnimElem = 93
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Heavy
air.animType = Heavy
fall.animType = Heavy
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
yAccel = 0.537109375
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8019)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 51), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3360, VelSet]
type = VelSet
trigger1 = AnimElem = 100
x = 3.91061452514
y = -5.625

[State 3360, Genocide Heaven Effect 4]
type = Explod
trigger1 = AnimElem = 103
anim = 3058
ID = 3360
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 3360, HitDef: Final Hits]
type = HitDef
triggerAll = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 104
trigger2 = AnimElem = 105
trigger3 = AnimElem = 106
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Heavy
air.animType = Heavy
fall.animType = Heavy
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
yAccel = 0.537109375
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8019)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 51), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3360, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(107) >= 0
moveType = I

[State 3360, ChangeState]
type = ChangeState
trigger1 = AnimElemTime(92) > 0
trigger1 = pos y > -vel y
value = 3311



;========================<RUGAL EXECUTION>=============================
[StateDef 3400]
type = S
physics = N
moveType = A
anim = 3400
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
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
trigger1 = Time = 8
fvar(5) = 0

[State 3400, Unguardable]
type = VarSet
trigger1 = Time = 8 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 43

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
trigger1 = AnimElemTime(7) < 0
time = 1
value = SCA

[State 3400, SuperPause FX]
type = Helper
trigger1 = Time = 8
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 4, -92
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3400, SuperPause]
type = SuperPause
trigger1 = Time = 8
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3400, Voice]
type = PlaySnd
trigger1 = AnimElem = 8
value = 4, 0 + 10 * (var(40) = 2)
channel = 0

[State 3400, Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 8
value = 3400, 0
channel = 3

[State 3400, Rugal Execution Dust Helper]
type = Helper
trigger1 = AnimElem = 8
helperType = Normal
stateNo = 8103
ID = 8100
name = "Rugal Execution Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3400, Rugal Execution Visual Effect 1]
type = Explod
trigger1 = AnimElemTime(8) = 0
anim = 1905
ID = 1905
sprPriority = 0
bindtime = -1
posType = P1
pos = 0, 0
scale = 1, 1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 3400, Rugal Execution Visual Effect 2]
type = Explod
trigger1 = AnimElemTime(8) = 6
anim = 1906
ID = 1906
sprPriority = 0
bindtime = -1
posType = P1
pos = 0, 0
scale = 1, 1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 3400, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1, 2
channel = 1

[State 3400, Width]
type = Width
trigger1 = AnimElemTime(7) = 8
value = 35, 0

[State 3400, PosAdd]
type = PosAdd
trigger1 = AnimElem = 8
x = 25.9217877095

[State 3400, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = 11.1731843575

[State 3400, VelSet]
type = VelSet
trigger1 = AnimElem = 9
x = 0

[State 3400, Rugal Execution Flames]
type = Helper
trigger1 = AnimElem = 10
helperType = Normal
stateNo = 3403
ID = 3403
name = "Rugal Execution Flames"
posType = P1
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1
ignoreHitPause = 0

[State 3400, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 10
ID = 3400
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 12, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.2503630888
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.5
air.cornerPush.velOff = 0
yAccel = 0.5859375
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 85), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
kill = 0

[State 3400, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(3400) > 1
ID = 3400
keepOne = 1
excludeID = 3400
ignoreHitPause = 1

[State 3400, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3400)
value = 3415
ID = 3400
ignoreHitPause = 1
persistent = 0

[State 3400, ChangeState]
type = ChangeState
trigger1 = NumTarget(3400)
trigger1 = MoveHit && Target, Alive
value = 3410

[State 3400, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(11) >= 0
moveType = I

[State 3400, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Success
[StateDef 3410]
type = S
anim = 3410
physics = N
moveType = A
velSet = 0, 0
sprPriority = 1

[State 3410, Width]
type = Width
trigger1 = AnimElemTime(48) < 0
edge = 80, 0

[State 3410, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(4) < 0
pos = 82, 0

[State 3710, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = 85, -92

[State 3410, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = 30, -70

[State 3410, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
pos = 50, -70

[State 3410, TargetBind 4]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
pos = 44, -72

[State 3410, TargetBind 5]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
pos = 32, -110

[State 3410, TargetBind 6]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 0
trigger2 = AnimElemTime(12) >= 0 && AnimElemTime(13) < 0
trigger3 = AnimElemTime(15) >= 0 && AnimElemTime(16) < 0
trigger4 = AnimElemTime(18) >= 0 && AnimElemTime(19) < 0
trigger5 = AnimElemTime(21) >= 0 && AnimElemTime(22) < 0
trigger6 = AnimElemTime(24) >= 0 && AnimElemTime(25) < 0
trigger7 = AnimElemTime(27) >= 0 && AnimElemTime(28) < 0
trigger8 = AnimElemTime(30) >= 0 && AnimElemTime(31) < 0
trigger9 = AnimElemTime(33) >= 0 && AnimElemTime(34) < 0
trigger10 = AnimElemTime(36) >= 0 && AnimElemTime(37) < 0
trigger11 = AnimElemTime(39) >= 0 && AnimElemTime(40) < 0
trigger12 = AnimElemTime(42) >= 0 && AnimElemTime(43) < 0
trigger13 = AnimElemTime(45) >= 0 && AnimElemTime(46) < 0
pos = 52, -128

[State 3410, TargetBind 7]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(11) < 0
trigger2 = AnimElemTime(13) >= 0 && AnimElemTime(14) < 0
trigger3 = AnimElemTime(16) >= 0 && AnimElemTime(17) < 0
trigger4 = AnimElemTime(19) >= 0 && AnimElemTime(20) < 0
trigger5 = AnimElemTime(22) >= 0 && AnimElemTime(23) < 0
trigger6 = AnimElemTime(25) >= 0 && AnimElemTime(26) < 0
trigger7 = AnimElemTime(28) >= 0 && AnimElemTime(29) < 0
trigger8 = AnimElemTime(31) >= 0 && AnimElemTime(32) < 0
trigger9 = AnimElemTime(34) >= 0 && AnimElemTime(35) < 0
trigger10 = AnimElemTime(37) >= 0 && AnimElemTime(38) < 0
trigger11 = AnimElemTime(40) >= 0 && AnimElemTime(41) < 0
trigger12 = AnimElemTime(43) >= 0 && AnimElemTime(44) < 0
trigger13 = AnimElemTime(46) >= 0 && AnimElemTime(47) < 0
pos = 53, -129

[State 3410, TargetBind 8]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(11) >= 0 && AnimElemTime(12) < 0
trigger2 = AnimElemTime(14) >= 0 && AnimElemTime(15) < 0
trigger3 = AnimElemTime(17) >= 0 && AnimElemTime(18) < 0
trigger4 = AnimElemTime(20) >= 0 && AnimElemTime(21) < 0
trigger5 = AnimElemTime(23) >= 0 && AnimElemTime(24) < 0
trigger6 = AnimElemTime(26) >= 0 && AnimElemTime(27) < 0
trigger7 = AnimElemTime(29) >= 0 && AnimElemTime(30) < 0
trigger8 = AnimElemTime(32) >= 0 && AnimElemTime(33) < 0
trigger9 = AnimElemTime(35) >= 0 && AnimElemTime(36) < 0
trigger10 = AnimElemTime(38) >= 0 && AnimElemTime(39) < 0
trigger11 = AnimElemTime(41) >= 0 && AnimElemTime(42) < 0
trigger12 = AnimElemTime(44) >= 0 && AnimElemTime(45) < 0
trigger13 = AnimElemTime(47) >= 0 && AnimElemTime(48) < 0
pos = 51, -127

[State 3410, TargetBind 9]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(48) >= 0 && AnimElemTime(49) < 0
pos = 15, -113

[State 3410, TargetBind 10]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(49) >= 0 && AnimElemTime(50) < 0
pos = 15, -118

[State 3410, TargetBind 11]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(50) >= 0 && AnimElemTime(50) < 1
pos = 45, -75

[State 3410, Damage]
type = TargetLifeAdd
triggerAll = NumTarget
trigger1 = AnimElem = 9
trigger2 = AnimElem = 12
trigger3 = AnimElem = 15
trigger4 = AnimElem = 18
trigger5 = AnimElem = 21
trigger6 = AnimElem = 24
trigger7 = AnimElem = 27
trigger8 = AnimElem = 27
trigger9 = AnimElem = 30
trigger10 = AnimElem = 33
trigger11 = AnimElem = 36
trigger12 = AnimElem = 39
trigger13 = AnimElem = 42
trigger14 = AnimElem = 45
value = floor(ifElse(14 * fvar(11) < 7, -7, -14 * fvar(11)))
kill = 0

[State 3410, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 50
value = floor(ifElse(35 * fvar(11) < 7, -7, -35 * fvar(11)))

[State 3410, TargetPowerAdd]
type = TargetPowerAdd
triggerAll = NumTarget
trigger1 = AnimElem = 9
trigger2 = AnimElem = 12
trigger3 = AnimElem = 15
trigger4 = AnimElem = 18
trigger5 = AnimElem = 21
trigger6 = AnimElem = 24
trigger7 = AnimElem = 27
trigger8 = AnimElem = 27
trigger9 = AnimElem = 30
trigger10 = AnimElem = 33
trigger11 = AnimElem = 36
trigger12 = AnimElem = 39
trigger13 = AnimElem = 42
trigger14 = AnimElem = 45
trigger15 = AnimElem = 50
value = 36

[State 3410, HitAdd]
type = HitAdd
triggerAll = NumTarget
trigger1 = AnimElem = 9
trigger2 = AnimElem = 12
trigger3 = AnimElem = 15
trigger4 = AnimElem = 18
trigger5 = AnimElem = 21
trigger6 = AnimElem = 24
trigger7 = AnimElem = 27
trigger8 = AnimElem = 27
trigger9 = AnimElem = 30
trigger10 = AnimElem = 33
trigger11 = AnimElem = 36
trigger12 = AnimElem = 39
trigger13 = AnimElem = 42
trigger14 = AnimElem = 45
trigger15 = AnimElem = 50
value = 1

[State 3410, HitAdd]
type = VarAdd
triggerAll = NumTarget
trigger1 = AnimElem = 9
trigger2 = AnimElem = 12
trigger3 = AnimElem = 15
trigger4 = AnimElem = 18
trigger5 = AnimElem = 21
trigger6 = AnimElem = 24
trigger7 = AnimElem = 27
trigger8 = AnimElem = 27
trigger9 = AnimElem = 30
trigger10 = AnimElem = 33
trigger11 = AnimElem = 36
trigger12 = AnimElem = 39
trigger13 = AnimElem = 42
trigger14 = AnimElem = 45
trigger15 = AnimElem = 50
var(13) = 1

[State 3410, Juggle]
type = VarAdd
triggerAll = NumTarget
trigger1 = AnimElem = 9
trigger2 = AnimElem = 12
trigger3 = AnimElem = 15
trigger4 = AnimElem = 18
trigger5 = AnimElem = 21
trigger6 = AnimElem = 24
trigger7 = AnimElem = 27
trigger8 = AnimElem = 27
trigger9 = AnimElem = 30
trigger10 = AnimElem = 33
trigger11 = AnimElem = 36
trigger12 = AnimElem = 39
trigger13 = AnimElem = 42
trigger14 = AnimElem = 45
trigger15 = AnimElem = 50
var(15) = 1
ignoreHitPause = 1

[State 3410, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = NumTarget && AnimElemTime(50) = 1
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3410, Flame Particle Timer Set]
type = Null
trigger1 = NumTarget && AnimElemTime(50) = 1
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 34, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 3410, Throw]
type = TargetState
trigger1 = NumTarget && AnimElemTime(50) = 1
value = 3416

[State 3410, Voice]
type = PlaySnd
trigger1 = AnimElem = 9
value = 3410, 0
channel = 0

[State 3410, Sound Effect 1]
type = PlaySnd
trigger1 = AnimElem = 9
value = 810, 1
channel = 1

[State 3410, Sound Effect 2]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1910, 0
channel = 3

[State 3410, Rugal Execution Effect 1]
type = Explod
trigger1 = AnimElem = 9
anim = 1911
ID = 3410
sprPriority = -1
removeTime = -1
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 3410, Rugal Execution Effect 2]
type = Explod
trigger1 = AnimElem = 9
anim = 3412
ID = 3410
sprPriority = 2
removeTime = -1
bindtime = -1
posType = P1
pos = 0, 0
scale = 1, 1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 3410, Remove Rugal Execution Explod]
type = RemoveExplod
trigger1 = NumExplod(3410) && AnimElem = 48
ID = 3410

[State 3410, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 50
value = 3410, 1
channel = 0

[State 3410, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 50
value = 1, 2
channel = 1

[State 3410, Sound Effect]
type = PlaySnd
trigger1 = AnimElemTime(50) = 0
value = 1910, 1
channel = 3

[State 3410, Hit Sound]
type = PlaySnd
trigger1 = AnimElemTime(50) = 0
value = 2, 1910
channel = 2

[State 3410, Voice 3]
type = PlaySnd
trigger1 = AnimElem = 58
value = 3410, 2
channel = 0

[State 3410, Snake Arm Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 58
value = 3410, 3
channel = 1

[State 3410, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Target
[StateDef 3415]
type = S
moveType = H
physics  = N
velSet = 0, 0
sprPriority = 1
faceP2 = 1

[State 3415, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3415, HitFallSet]
type = HitFallSet
trigger1 = !Time
value = 0

[State 3415, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3415

[State 3415, PalFX]
type = PalFX
trigger1 = AnimElem = 8
time = 117
mul = 192,192,192
sinAdd = 128,128,128,4


;After Throw
[StateDef 3416]
type = A
physics = N
movetype = H
ctrl = 0
velSet = -3.35195530726, -6.5625
sprPriority = 0

[State 3416, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5061

[State 3416, PalFX]
type = PalFX
trigger1 = !Time
time = 34
mul = 192,192,192
sinAdd = 128,128,128,4

[State 3416, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,1
ignoreHitPause = 1

[State 3416, VelAdd]
type = VelAdd
Trigger1 = 1
y = 0.5126953125

[State 3416, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 3416, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100



;========================<MAX RUGAL EXECUTION>=============================
[StateDef 3450]
type = S
physics = N
moveType = A
anim = 3450
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3450, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3450, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3450, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3450, Corner Push]
type = VarSet
trigger1 = Time = 8
fvar(5) = 0

[State 3450, Unguardable]
type = VarSet
trigger1 = Time = 8 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 45

[State 3450, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3450, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3450, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(7) < 0
time = 1
value = SCA

[State 3450, SuperPause FX]
type = Helper
trigger1 = Time = 8
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 4, -92
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3450, Super Pause]
type = SuperPause
trigger1 = Time = 8
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3450, Voice]
type = PlaySnd
trigger1 = AnimElem = 8
value = 4, 0 + 10 * (var(40) = 2)
channel = 0

[State 3450, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 8
value = 3400, 0
channel = 3

[State 3450, Rugal Execution Dust Helper]
type = Helper
trigger1 = AnimElem = 8
helperType = Normal
stateNo = 8103
ID = 8100
name = "Rugal Execution Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3450, Rugal Execution Visual Effect 1]
type = Explod
trigger1 = AnimElemTime(8) = 0
anim = 1905
ID = 1905
sprPriority = 0
bindtime = -1
posType = P1
pos = 0, 0
scale = 1, 1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 3450, Rugal Execution Visual Effect 2]
type = Explod
trigger1 = AnimElemTime(8) = 6
anim = 1906
ID = 1906
sprPriority = 0
bindtime = -1
posType = P1
pos = 0, 0
scale = 1, 1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 3450, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1, 2
channel = 1

[State 3450, Width]
type = Width
trigger1 = AnimElemTime(7) = 3
value = 35, 0

[State 3450, PosAdd]
type = PosAdd
trigger1 = AnimElem = 8
x = 25.9217877095

[State 3450, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = 11.1731843575

[State 3450, VelSet]
type = VelSet
trigger1 = AnimElem = 9
x = 0

[State 3450, Rugal Execution Flames 2]
type = Helper
trigger1 = AnimElem = 10
helperType = Normal
stateNo = 3403
ID = 3403
name = "Rugal Execution Flames"
posType = P1
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1
ignoreHitPause = 0

[State 3450, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 10
ID = 3450
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 12, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.2503630888
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.5
air.cornerPush.velOff = 0
yAccel = 0.5859375
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 85), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
kill = 0

[State 3450, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(3450) > 1
ID = 3450
keepOne = 1
excludeID = 3450
ignoreHitPause = 1

[State 3450, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3450)
value = 3465
ID = 3450
ignoreHitPause = 1
persistent = 0

[State 3450, ChangeState]
type = ChangeState
trigger1 = NumTarget(3450)
trigger1 = MoveHit && Target, Alive
value = 3460

[State 3450, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(11) >= 0
moveType = I

[State 3450, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Success
[StateDef 3460]
type = S
anim = 3460
physics = N
moveType = A
velSet = 0, 0
sprPriority = 1

[State 3460, Width]
type = Width
trigger1 = AnimElemTime(48) < 0
edge = 80, 0

[State 3460, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(4) < 0
pos = 82, 0

[State 3460, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = 85, -92

[State 3460, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = 30, -70

[State 3460, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
pos = 50, -70

[State 3460, TargetBind 4]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
pos = 44, -72

[State 3460, TargetBind 5]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
pos = 32, -110

[State 3460, TargetBind 6]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 0
trigger2 = AnimElemTime(12) >= 0 && AnimElemTime(13) < 0
trigger3 = AnimElemTime(15) >= 0 && AnimElemTime(16) < 0
trigger4 = AnimElemTime(18) >= 0 && AnimElemTime(19) < 0
trigger5 = AnimElemTime(21) >= 0 && AnimElemTime(22) < 0
trigger6 = AnimElemTime(24) >= 0 && AnimElemTime(25) < 0
trigger7 = AnimElemTime(27) >= 0 && AnimElemTime(28) < 0
trigger8 = AnimElemTime(30) >= 0 && AnimElemTime(31) < 0
trigger9 = AnimElemTime(33) >= 0 && AnimElemTime(34) < 0
trigger10 = AnimElemTime(36) >= 0 && AnimElemTime(37) < 0
trigger11 = AnimElemTime(39) >= 0 && AnimElemTime(40) < 0
trigger12 = AnimElemTime(42) >= 0 && AnimElemTime(43) < 0
trigger13 = AnimElemTime(45) >= 0 && AnimElemTime(46) < 0
pos = 52, -128

[State 3460, TargetBind 7]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(11) < 0
trigger2 = AnimElemTime(13) >= 0 && AnimElemTime(14) < 0
trigger3 = AnimElemTime(16) >= 0 && AnimElemTime(17) < 0
trigger4 = AnimElemTime(19) >= 0 && AnimElemTime(20) < 0
trigger5 = AnimElemTime(22) >= 0 && AnimElemTime(23) < 0
trigger6 = AnimElemTime(25) >= 0 && AnimElemTime(26) < 0
trigger7 = AnimElemTime(28) >= 0 && AnimElemTime(29) < 0
trigger8 = AnimElemTime(31) >= 0 && AnimElemTime(32) < 0
trigger9 = AnimElemTime(34) >= 0 && AnimElemTime(35) < 0
trigger10 = AnimElemTime(37) >= 0 && AnimElemTime(38) < 0
trigger11 = AnimElemTime(40) >= 0 && AnimElemTime(41) < 0
trigger12 = AnimElemTime(43) >= 0 && AnimElemTime(44) < 0
trigger13 = AnimElemTime(46) >= 0 && AnimElemTime(47) < 0
pos = 53, -129

[State 3460, TargetBind 8]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(11) >= 0 && AnimElemTime(12) < 0
trigger2 = AnimElemTime(14) >= 0 && AnimElemTime(15) < 0
trigger3 = AnimElemTime(17) >= 0 && AnimElemTime(18) < 0
trigger4 = AnimElemTime(20) >= 0 && AnimElemTime(21) < 0
trigger5 = AnimElemTime(23) >= 0 && AnimElemTime(24) < 0
trigger6 = AnimElemTime(26) >= 0 && AnimElemTime(27) < 0
trigger7 = AnimElemTime(29) >= 0 && AnimElemTime(30) < 0
trigger8 = AnimElemTime(32) >= 0 && AnimElemTime(33) < 0
trigger9 = AnimElemTime(35) >= 0 && AnimElemTime(36) < 0
trigger10 = AnimElemTime(38) >= 0 && AnimElemTime(39) < 0
trigger11 = AnimElemTime(41) >= 0 && AnimElemTime(42) < 0
trigger12 = AnimElemTime(44) >= 0 && AnimElemTime(45) < 0
trigger13 = AnimElemTime(47) >= 0 && AnimElemTime(48) < 0
pos = 51, -127

[State 3710, TargetBind 11]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(48) >= 0 && AnimElemTime(49) < 0
pos = 75, -112

[State 3710, TargetBind 12]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(49) >= 0 && AnimElemTime(50) < 0
pos = 35, -153

[State 3710, TargetBind 13]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(50) >= 0 && AnimElemTime(52) < 0
pos = 35, -145

[State 3710, TargetBind 16]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(52) >= 0 && AnimElemTime(52) < 1
pos = 38, -70

[State 3460, Damage]
type = TargetLifeAdd
triggerAll = NumTarget
trigger1 = AnimElem = 9
trigger2 = AnimElem = 12
trigger3 = AnimElem = 15
trigger4 = AnimElem = 18
trigger5 = AnimElem = 21
trigger6 = AnimElem = 24
trigger7 = AnimElem = 27
trigger8 = AnimElem = 27
trigger9 = AnimElem = 30
trigger10 = AnimElem = 33
trigger11 = AnimElem = 36
trigger12 = AnimElem = 39
trigger13 = AnimElem = 42
trigger14 = AnimElem = 45
value = floor(ifElse(21 * fvar(11) < 7, -7, -21 * fvar(11)))
kill = 0

[State 3460, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElemTime(52) = 0
value = floor(ifElse(42 * fvar(11) < 7, -7, -42 * fvar(11)))

[State 3460, TargetPowerAdd]
type = TargetPowerAdd
triggerAll = NumTarget
trigger1 = AnimElem = 9
trigger2 = AnimElem = 12
trigger3 = AnimElem = 15
trigger4 = AnimElem = 18
trigger5 = AnimElem = 21
trigger6 = AnimElem = 24
trigger7 = AnimElem = 27
trigger8 = AnimElem = 27
trigger9 = AnimElem = 30
trigger10 = AnimElem = 33
trigger11 = AnimElem = 36
trigger12 = AnimElem = 39
trigger13 = AnimElem = 42
trigger14 = AnimElem = 45
trigger15 = AnimElemTime(52) = 0
value = 36

[State 3460, HitAdd]
type = HitAdd
triggerAll = NumTarget
trigger1 = AnimElem = 9
trigger2 = AnimElem = 12
trigger3 = AnimElem = 15
trigger4 = AnimElem = 18
trigger5 = AnimElem = 21
trigger6 = AnimElem = 24
trigger7 = AnimElem = 27
trigger8 = AnimElem = 27
trigger9 = AnimElem = 30
trigger10 = AnimElem = 33
trigger11 = AnimElem = 36
trigger12 = AnimElem = 39
trigger13 = AnimElem = 42
trigger14 = AnimElem = 45
trigger15 = AnimElemTime(52) = 0
value = 1

[State 3460, HitAdd]
type = VarAdd
triggerAll = NumTarget
trigger1 = AnimElem = 9
trigger2 = AnimElem = 12
trigger3 = AnimElem = 15
trigger4 = AnimElem = 18
trigger5 = AnimElem = 21
trigger6 = AnimElem = 24
trigger7 = AnimElem = 27
trigger8 = AnimElem = 27
trigger9 = AnimElem = 30
trigger10 = AnimElem = 33
trigger11 = AnimElem = 36
trigger12 = AnimElem = 39
trigger13 = AnimElem = 42
trigger14 = AnimElem = 45
trigger15 = AnimElemTime(52) = 0
var(13) = 1

[State 3460, Juggle]
type = VarAdd
triggerAll = NumTarget
trigger1 = AnimElem = 9
trigger2 = AnimElem = 12
trigger3 = AnimElem = 15
trigger4 = AnimElem = 18
trigger5 = AnimElem = 21
trigger6 = AnimElem = 24
trigger7 = AnimElem = 27
trigger8 = AnimElem = 27
trigger9 = AnimElem = 30
trigger10 = AnimElem = 33
trigger11 = AnimElem = 36
trigger12 = AnimElem = 39
trigger13 = AnimElem = 42
trigger14 = AnimElem = 45
trigger15 = AnimElemTime(52) = 0
var(15) = 1
ignoreHitPause = 1

[State 3460, Voice]
type = PlaySnd
trigger1 = AnimElem = 9
value = 3410, 0
channel = 0

[State 3460, Sound Effect 1]
type = PlaySnd
trigger1 = AnimElem = 9
value = 810, 1
channel = 1

[State 3460, Sound Effect 2]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1910, 0
channel = 3

[State 3460, Rugal Execution Effect 1]
type = Explod
trigger1 = AnimElem = 9
anim = 1911
ID = 3410
sprPriority = -1
removeTime = -1
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 3460, Rugal Execution Effect 2]
type = Explod
trigger1 = AnimElem = 9
anim = 3412
ID = 3410
sprPriority = 2
removeTime = -1
bindtime = -1
posType = P1
pos = 0, 0
scale = 1, 1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 3460, Remove Rugal Execution Explod]
type = RemoveExplod
trigger1 = NumExplod(3410) && AnimElem = 48
ID = 3410

[State 3460, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 50
value = 3410, 1
channel = 0

[State 3460, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 50
value = 1, 2
channel = 1

[State 3460, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = NumTarget && AnimElemTime(52) = 1
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3460, Flame Particle Timer Set]
type = Null
trigger1 = NumTarget && AnimElemTime(52) = 1
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 44, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 3460, Throw]
type = TargetState
trigger1 = NumTarget && AnimElemTime(52) = 1
value = 3466

[State 1412, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElem = 52
trigger2 = AnimElem = 53
trigger3 = AnimElem = 54
trigger4 = AnimElem = 55
trigger5 = AnimElem = 56
time = 14
ampl = -4
freq = 120

[State 3160, Flame Effect 1]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 52
value = 3410, 4
channel = 6

[State 3410, Rugal Execution Explosion Effect 1]
type = Explod
trigger1 = NumTarget && AnimElem = 52
anim = 3463
ID = 3463
sprPriority = 3
posType = P1
pos = 40, -140
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 3160, Flame Effect 2]
type = PlaySnd
trigger1 = AnimElem = 53
value = 3410, 4
channel = 7

[State 3410, Rugal Execution Explosion Effect 2]
type = Explod
trigger1 = AnimElem = 53
anim = 3463
ID = 3463
sprPriority = 3
posType = P1
pos = 55, -125
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 3160, Flame Effect 3]
type = PlaySnd
trigger1 = AnimElem = 54
value = 3410, 4
channel = 8

[State 3410, Rugal Execution Explosion Effect 3]
type = Explod
trigger1 = AnimElem = 54
anim = 3463
ID = 3463
sprPriority = 3
posType = P1
pos = 25, -155
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 3160, Flame Effect 4]
type = PlaySnd
trigger1 = AnimElem = 55
value = 3410, 4
channel = 9

[State 3410, Rugal Execution Explosion Effect 4]
type = Explod
trigger1 =AnimElem = 55
anim = 3463
ID = 3463
sprPriority = 3
posType = P1
pos = 55, -155
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 3160, Flame Effect 4]
type = PlaySnd
trigger1 = AnimElem = 56
value = 3410, 4
channel = 10

[State 3410, Rugal Execution Explosion Effect 4]
type = Explod
trigger1 = AnimElem = 56
anim = 3463
ID = 3463
sprPriority = 3
posType = P1
pos = 25, -125
scale = 0.5, 0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 1

[State 3460, Voice 3]
type = PlaySnd
trigger1 = AnimElem = 71
value = 3410, 2
channel = 0

[State 3460, Snake Arm Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 71
value = 3410, 3
channel = 1

[State 3460, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Target
[StateDef 3465]
type = S
moveType = H
physics  = N
velSet = 0, 0
sprPriority = 1
faceP2 = 1

[State 3465, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3465, HitFallSet]
type = HitFallSet
trigger1 = !Time
value = 0

[State 3465, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3465

[State 3465, PalFX]
type = PalFX
trigger1 = AnimElem = 8
time = 117
mul = 192,192,192
sinAdd = 128,128,128,4


;After Throw
[StateDef 3466]
type = A
physics = N
movetype = H
ctrl = 0
velSet = -3.35195530726, -10
sprPriority = 0

[State 3466, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5061

[State 3466, PalFX]
type = PalFX
trigger1 = !Time
time = 44
mul = 192,192,192
sinAdd = 128,128,128,4

[State 3466, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,1
ignoreHitPause = 1

[State 3466, VelAdd]
type = VelAdd
Trigger1 = 1
y = 0.5126953125

[State 3466, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 3466, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100



;========================<KAISER REPPUKEN>=============================
[StateDef 3500]
type = S
physics = N
moveType = A
anim = 3500
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -3000
faceP2 = 1

[State 3500, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3500, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3500, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3500, Corner Push]
type = VarSet
trigger1 = 1
fvar(5) = 0

[State 3500, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 47

[State 3500, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3500, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3500, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
time = 1
value = SCA

[State 3500, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = P1
pos = -34, -135
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3500, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 47
moveTime = 47
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500, 0
darken = 0

[State 3500, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 3500, 0
channel = 0

[State 3500, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 6
value = 4, 0 + 10 * (var(40) = 2)
channel = 0

[State 3500, Voice 3]
type = PlaySnd
trigger1 = AnimElem = 15
value = 4, 2 + 10 * (var(40) = 2)
channel = 0

[State 3500, Reppuken Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 7
trigger2 = AnimElem = 16
value = 1000, 1
channel = 1

[State 3500, Kaiser Reppuken Startup Effect]
type = Explod
trigger1 = AnimElem = 5
anim = 3503
ID = 3503
sprPriority = 3
bindTime = -1
posType = P1
pos = 0, 0
scale = 0.5,0.5
removeOnGetHit = 1
ignoreHitPause = 0
ownPal = 1

[State 3500, Kaiser Reppuken Startup Effect]
type = Explod
trigger1 = AnimElem = 15
anim = 3504
ID = 3504
sprPriority = -3
bindTime = -1
posType = P1
pos = 0, 0
scale = 0.5,0.5
removeOnGetHit = 1
ignoreHitPause = 0
ownPal = 1

[State 3500, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 7
ID = 3500
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.5
air.cornerPush.velOff = 0
yAccel = 0.5859375
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 6)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 45), var(36) := -62
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3500, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(3500) > 1
ID = 3500
keepOne = 1
excludeID = 3500
ignoreHitPause = 1

[State 3500, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3500)
value = 3515
ID = 3500
ignoreHitPause = 1
persistent = 0

[State 3500, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 16
ID = 3505
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 4, 4
guard.pauseTime = 4, 4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.23463687151, -17.5 - (0.9375 * GameWidth / GameHeight)
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -17.5 - (0.9375 * GameWidth / GameHeight)
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 6)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 45), var(36) := -62
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3500, ChangeState]
type = ChangeState
trigger1 = NumTarget(3505)
trigger1 = MoveHit && Target, Alive
value = 3510

[State 3500, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(17) >= 0
moveType = I

[State 3500, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Success
[StateDef 3510]
type = S
anim = 3510
physics = N
moveType = A
velSet = 0, 0
sprPriority = 1

[State 3510, Voice]
type = PlaySnd
trigger1 = AnimElem = 8
value = 730, 1
channel = 0

[State 3510, Kaiser Reppuken Visual Effect]
type = Explod
trigger1 = AnimElem = 10
anim = 3513
ID = 3513
sprPriority = 0
bindtime = -1
removeTime = -1
posType = P1
pos = 0, 0
scale = 1, 1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3510, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 22
ID = 3513

[State 3510, Voice]
type = PlaySnd
trigger1 = AnimElem = 23
value = 900, 1
channel = 0

[State 3510, Kaiser Reppuken Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 23
value = 1300, 2
channel = 1

[State 3510, Projectile]
type = Helper
trigger1 = AnimElem = 23
helperType = Normal
stateNo = 3505
ID = 3505
name = "Kaiser Reppuken Projectile"
posType = P1
pos = 60, -72
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3510, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Target
[StateDef 3515]
type = S
moveType = H
physics  = N
velSet = 0, 0

[State 3515, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3515, HitFallSet]
type = HitFallSet
trigger1 = !Time
value = 0

[State 3515, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5002

[State 3515, ChangeAnim]
type = ChangeAnim
trigger1 = Time > 0
value = Anim



;========================<KAISER PHOENIX>=============================
[StateDef 3600]
type = S
physics = N
moveType = A
anim = 3600
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -3000
faceP2 = 1

[State 3600, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3600, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3600, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3600, Corner Push]
type = VarSet
trigger1 = 1
fvar(5) = 0

[State 3600, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 47

[State 3600, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3600, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3600, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(18) < 0
time = 1
value = SCA

[State 3600, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = P1
pos = -70, -60
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3600, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 47
moveTime = 47
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500, 0
darken = 0

[State 3600, Voice]
type = PlaySnd
trigger1 = !Time
value = 1300, 0 + 10 * (var(40) = 2)
channel = 0

[State 3600, Width]
type = Width
trigger1 = AnimElemTime(18) = 1
value = 30, 0

[State 3600, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 18
value = 3600, 0
channel = 0

[State 3600, Kaiser Wave Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 19
value = 1300, 2
channel = 1

[State 3600, VarSet]
type = VarSet
trigger1 = !Time
var(42) = 0

[State 3600, VarAdd]
type = VarAdd
trigger1 = AnimElem = 19
var(42) = 1

[State 3600, Projectile]
type = Helper
trigger1 = AnimElem = 19
helperType = Normal
stateNo = 3605 + 5 * (Random % 3)
ID = 3605
name = "Kaiser Phoenix Projectile"
posType = P1
pos = 94, -79
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 3600, End]
type = ChangeState
trigger1 = !AnimTime && var(42) = 6 
value = 3601


;The Last Phoenix
[StateDef 3601]
type = S
physics = N
moveType = A
anim = 3601
velSet = 0, 0
sprPriority = 1

[State 3601, Super Pause]
type = SuperPause
trigger1 = !Time
time = 90
moveTime = 90
p2DefMul = 1
unHittable = 0
anim = -1
sound = -1
darken = 0

[State 3601, BGPalFX]
type = BGPalFX
trigger1 = AnimElemTime(31) < 0
time = 1
add = 0, 0, 0
mul = 256, ifElse(Time > 16, 0, (256 - Time * 16)), ifElse(Time > 16, 0, (256 - Time * 8))
sinadd = 0, 0, 0, 1
invertall = 0
color = ifElse(Time > 16, 0, (256 - Time * 16))

[State 3601, Electric Orbs]
type = Explod
trigger1 = AnimElemTime(31) < 0
anim = 1605
facing = -1 + (!(Random % 2)) * 2
vFacing = -1 + (!(Random % 2)) * 2
ownPal = 1
pos = -60 + (Random % 60), -90 + (Random % 90)
posType = P1
removeTime = (Random % 10)
scale = 0.1 + (Time * 0.005), 0.1 + (Time * 0.005)
sprPriority = 5
ignoreHitPause = 1
persistent = 1
pauseMoveTime = -1
superMoveTime = -1

[State 3601, Electric Particles]
type = Explod
trigger1 = AnimElemTime(31) < 0
anim = 8155
facing = -1 + (!(Random % 2)) * 2
vFacing = -1 + (!(Random % 2)) * 2
ownPal = 1
pos = -60 + (Random % 60), -90 + (Random % 90)
posType = P1
removeTime = (Random % 12)
scale = 0.1 + (Time * 0.005), 0.1 + (Time * 0.005)
sprPriority = 5
ignoreHitPause = 1
persistent = 1
pauseMoveTime = -1
superMoveTime = -1

[State 3601, Voice]
type = PlaySnd
trigger1 = !Time
value = 730, 1 + 10 * (var(40) = 2)
channel = 0

[State 3601, Voice]
type = PlaySnd
trigger1 = AnimElem = 31
value = 900, 1 + 10 * (var(40) = 2)
channel = 0

[State 3601, Sound Effect 1]
type = PlaySnd
trigger1 = !(Time % 16)
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(32) < 0
value = 3601, 0 + (Random % 2)
channel = 1

[State 3601, Sound Effect 2]
type = PlaySnd
trigger1 = AnimElem = 32
value = 1300, 2
channel = 1

[State 3601, Projectile]
type = Helper
trigger1 = AnimElem = 32
helperType = Normal
stateNo = 3620
ID = 3605
name = "Final Kaiser Phoenix Projectile"
posType = P1
pos = 94, -79
size.xScale = 0.75
size.yScale = 0.75
ownPal = 1

[State 3601, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<G. END>=============================
[StateDef 3700]
type = S
physics = N
moveType = A
anim = 3700
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -3000
faceP2 = 1

[State 3700, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3700, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3700, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3700, Corner Push]
type = VarSet
trigger1 = 1
fvar(5) = 0

[State 3700, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 47

[State 3700, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3700, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3700, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(2) < 0
time = 1
value = SCA

[State 3700, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = P1
pos = 2, -100
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3700, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 47
moveTime = 47
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500, 0
darken = 0

[State 3700, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 730, 1 + 10 * (var(40) = 2)
channel = 0

[State 3700, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 2 + 10 * (var(40) = 2)
channel = 0

[State 3700, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 2
channel = 1

[State 3700, HitDef]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4 && !MoveContact && !MoveReversed
trigger3 = AnimElem = 5 && !MoveContact && !MoveReversed
ID = 3700
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 0
guard.pauseTime = 12, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.2503630888
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.5
air.cornerPush.velOff = 0
yAccel = 0.5859375
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 84), var(36) := -62
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3700, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(3700) > 1
ID = 3700
keepOne = 1
excludeID = 3700
ignoreHitPause = 1

[State 3700, TargetState]
type = TargetState
trigger1 = AnimElem = 6
trigger1 = MoveHit && NumTarget(3700)
value = 3715
ID = 3700
ignoreHitPause = 1
persistent = 0

[State 3700, ChangeState]
type = ChangeState
trigger1 = AnimElem = 6
trigger1 = NumTarget(3700)
trigger1 = MoveHit && Target, Alive
value = 3710

[State 3700, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 3700, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Success
[StateDef 3710]
type = S
anim = 3710
physics = N
moveType = A
velSet = 0, 0
sprPriority = 1

[State 3710, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 3710, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 3715

[State 3710, Voice]
type = PlaySnd
trigger1 = !Time
value = 3710, 0
channel = 0

[State 3710, Width]
type = Width
trigger1 = NumTarget && AnimElemTime(2) < 0
edge = 67, 0

[State 3710, TargetBind 2]
type = TargetBind
trigger1 = NumTarget && AnimElemTime(2) < 0
pos = 80, 0

[State 3710, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = 85, -92

[State 3710, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = 83, -101

[State 3710, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = 75, -112

[State 3710, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = 35, -153

[State 3710, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(8) < 0
pos = 35, -145

[State 3710, Voice]
type = PlaySnd
trigger1 = AnimElem = 8
value = 1200, 10
channel = 0

[State 3710, TargetBind 3]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
trigger2 = AnimElemTime(10) >= 0 && AnimElemTime(11) < 0
trigger3 = AnimElemTime(12) >= 0 && AnimElemTime(13) < 0
trigger4 = AnimElemTime(14) >= 0 && AnimElemTime(15) < 0
trigger5 = AnimElemTime(16) >= 0 && AnimElemTime(17) < 0
trigger6 = AnimElemTime(18) >= 0 && AnimElemTime(19) < 0
trigger7 = AnimElemTime(20) >= 0 && AnimElemTime(21) < 0
trigger8 = AnimElemTime(22) >= 0 && AnimElemTime(23) < 0
trigger9 = AnimElemTime(24) >= 0 && AnimElemTime(25) < 0
trigger10 = AnimElemTime(26) >= 0 && AnimElemTime(27) < 0
trigger11 = AnimElemTime(28) >= 0 && AnimElemTime(29) < 0
pos = 38, -139

[State 3710, TargetBind 3]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 0
trigger2 = AnimElemTime(11) >= 0 && AnimElemTime(12) < 0
trigger3 = AnimElemTime(13) >= 0 && AnimElemTime(14) < 0
trigger4 = AnimElemTime(15) >= 0 && AnimElemTime(16) < 0
trigger5 = AnimElemTime(17) >= 0 && AnimElemTime(18) < 0
trigger6 = AnimElemTime(19) >= 0 && AnimElemTime(20) < 0
trigger7 = AnimElemTime(21) >= 0 && AnimElemTime(22) < 0
trigger8 = AnimElemTime(23) >= 0 && AnimElemTime(24) < 0
trigger9 = AnimElemTime(25) >= 0 && AnimElemTime(26) < 0
trigger10 = AnimElemTime(27) >= 0 && AnimElemTime(28) < 0
trigger11 = AnimElemTime(29) >= 0 && AnimElemTime(30) < 0
pos = 38, -135

[State 3710, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(30) >= 0 && AnimElemTime(30) < 1
pos = 48, -175

[State 3710, SprPriority]
type = SprPriority
trigger1 = AnimElem = 5
value = 0

[State 3710, Damage]
type = TargetLifeAdd
triggerAll = NumTarget
trigger1 = AnimElem = 8
trigger2 = AnimElem = 10
trigger3 = AnimElem = 12
trigger4 = AnimElem = 14
trigger5 = AnimElem = 16
trigger6 = AnimElem = 18
trigger7 = AnimElem = 20
trigger8 = AnimElem = 22
trigger9 = AnimElem = 24
trigger10 = AnimElem = 26
trigger11 = AnimElem = 28
trigger12 = AnimElem = 30
value = floor(ifElse(35 * fvar(11) < 7, -7, -35 * fvar(11)))
kill = 0

[State 3710, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 30
value = floor(ifElse(56 * fvar(11) < 7, -7, -56 * fvar(11)))

[State 3710, TargetPowerAdd]
type = TargetPowerAdd
triggerAll = NumTarget
trigger1 = AnimElem = 8
trigger2 = AnimElem = 10
trigger3 = AnimElem = 12
trigger4 = AnimElem = 14
trigger5 = AnimElem = 16
trigger6 = AnimElem = 18
trigger7 = AnimElem = 20
trigger8 = AnimElem = 22
trigger9 = AnimElem = 24
trigger10 = AnimElem = 26
trigger11 = AnimElem = 28
trigger12 = AnimElem = 30
value = 36

[State 3710, HitAdd]
type = HitAdd
triggerAll = NumTarget
trigger1 = AnimElem = 8
trigger2 = AnimElem = 10
trigger3 = AnimElem = 12
trigger4 = AnimElem = 14
trigger5 = AnimElem = 16
trigger6 = AnimElem = 18
trigger7 = AnimElem = 20
trigger8 = AnimElem = 22
trigger9 = AnimElem = 24
trigger10 = AnimElem = 26
trigger11 = AnimElem = 28
trigger12 = AnimElem = 30
value = 1

[State 3710, HitAdd]
type = VarAdd
triggerAll = NumTarget
trigger1 = AnimElem = 8
trigger2 = AnimElem = 10
trigger3 = AnimElem = 12
trigger4 = AnimElem = 14
trigger5 = AnimElem = 16
trigger6 = AnimElem = 18
trigger7 = AnimElem = 20
trigger8 = AnimElem = 22
trigger9 = AnimElem = 24
trigger10 = AnimElem = 26
trigger11 = AnimElem = 28
trigger12 = AnimElem = 30
var(13) = 1

[State 3710, Juggle]
type = VarAdd
triggerAll = NumTarget
trigger1 = AnimElem = 8
trigger2 = AnimElem = 10
trigger3 = AnimElem = 12
trigger4 = AnimElem = 14
trigger5 = AnimElem = 16
trigger6 = AnimElem = 18
trigger7 = AnimElem = 20
trigger8 = AnimElem = 22
trigger9 = AnimElem = 24
trigger10 = AnimElem = 26
trigger11 = AnimElem = 28
trigger12 = AnimElem = 30
var(15) = 1
ignoreHitPause = 1

[State 3710, Hit Sound Effect 1]
type = PlaySnd
triggerAll = NumTarget
trigger1 = AnimElem = 8
trigger2 = AnimElem = 10
trigger3 = AnimElem = 12
trigger4 = AnimElem = 14
trigger5 = AnimElem = 16
trigger6 = AnimElem = 18
trigger7 = AnimElem = 20
trigger8 = AnimElem = 22
trigger9 = AnimElem = 24
trigger10 = AnimElem = 26
trigger11 = AnimElem = 28
trigger12 = AnimElem = 30
value = 2, 2
channel = 2

[State 3710, Hit Sound Effect 2]
type = PlaySnd
triggerAll = NumTarget
trigger1 = AnimElem = 8
trigger2 = AnimElem = 10
trigger3 = AnimElem = 12
trigger4 = AnimElem = 14
trigger5 = AnimElem = 16
trigger6 = AnimElem = 18
trigger7 = AnimElem = 20
trigger8 = AnimElem = 22
trigger9 = AnimElem = 24
trigger10 = AnimElem = 26
trigger11 = AnimElem = 28
trigger12 = AnimElem = 30
value = 3110, 2
channel = 4

[State 3710, Gigantic Pressure Skull]
type = Helper
triggerAll = NumTarget
trigger1 = AnimElem = 8
trigger2 = AnimElem = 10
trigger3 = AnimElem = 12
trigger4 = AnimElem = 14
trigger5 = AnimElem = 16
trigger6 = AnimElem = 18
trigger7 = AnimElem = 20
trigger8 = AnimElem = 22
trigger9 = AnimElem = 24
trigger10 = AnimElem = 26
trigger11 = AnimElem = 28
trigger12 = AnimElem = 30
helperType = Normal
stateNo = 3713
ID = 3713
name = "MAX Gigantic Pressure Skull"
posType = P1
size.xScale = 1
size.yScale = 1
ownPal = 1
ignoreHitPause = 0

[State 3710, EnvShake]
type = EnvShake
triggerAll = NumTarget
trigger1 = AnimElem = 8
trigger2 = AnimElem = 10
trigger3 = AnimElem = 12
trigger4 = AnimElem = 14
trigger5 = AnimElem = 16
trigger6 = AnimElem = 18
trigger7 = AnimElem = 20
trigger8 = AnimElem = 22
trigger9 = AnimElem = 24
trigger10 = AnimElem = 26
trigger11 = AnimElem = 28
time = 18
ampl = 6
freq = 120

[State 3710, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElem = 30
time = 36
ampl = 12
freq = 120

[State 3710, Throw]
type = TargetState
trigger1 = NumTarget && AnimElemTime(30) = 1
value = 3716

[State 3710, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Target
[StateDef 3715]
type = S
moveType = H
physics  = N
velSet = 0, 0
sprPriority = 1
faceP2 = 1

[State 3715, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3715, HitFallSet]
type = HitFallSet
trigger1 = !Time
value = 0

[State 3715, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3715


;After Throw
[StateDef 3716]
type = A
physics = N
movetype = H
ctrl = 0
velSet = 0, 0
sprPriority = 0

[State 3716, VelSet]
type = VelSet
trigger1 = Time = 1
x = -1.11731843575
y = -8.125

[State 3716, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5160

[State 3716, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1, 1
ignoreHitPause = 1

[State 3716, VelAdd]
type = VelAdd
Trigger1 = Time >= 1
y = 0.537109375

[State 3716, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 3716, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 3716, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100



;========================<LAST JUDGEMENT>=============================
[StateDef 3800]
type = S
physics = N
moveType = A
anim = 3800
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -3000
faceP2 = 1

[State 3800, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

[State 3800, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000, 4999]) && var(8)

[State 3800, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3800, Corner Push]
type = VarSet
trigger1 = 1
fvar(5) = 0

[State 3800, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120, 155])
var(17) = 47

[State 3800, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3800, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3800, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(2) < 0
time = 1
value = SCA

[State 3800, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = P1
pos = 14, -98
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3800, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 47
moveTime = 47
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500, 0
darken = 0

[State 3800, Voice]
type = PlaySnd
trigger1 = !Time
value = 5200, 1 + 10 * (var(40) = 2)
channel = 0

[State 3800, Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2000, 0
channel = 1

[State 3800, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 5.02793296089

[State 3800, HitDef]
type = HitDef
trigger1 = AnimElemTime(3) >= 0
trigger1 = P2BodyDist x < 18
trigger1 = !var(38)
attr = S, HT
hitFlag = M-
priority = 1, Miss
getPower = 0, 0
givePower = 0, 0
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -50
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
fall = 1
fall.recover = 1
numHits = 0
p1StateNo = 3810 
p2StateNo = 3815

[State 3800, End]
type = ChangeState
trigger1 = Time = 80
value = 3801


;Landing (Missed)
[StateDef 3801]
type = S
anim = 3801
physics = N
moveType = I
velSet = 0, 0

[State 3801, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3801, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3801, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0

[State 3801, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Success
[StateDef 3810]
type = S
anim = 3810
physics = N
moveType = A
velSet = 0, 0
sprPriority = 0

[State 3810, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 3810, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 3815

[State 3810, Voice]
type = PlaySnd
trigger1 = !Time
value = 900, 1 + 10 * (var(40) = 2)
channel = 0

[State 3810, Width]
type = Width
trigger1 = NumTarget
trigger1 = AnimElemTime(2) < 0
edge = 42, 0

[State 3810, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) < 0
pos = 42, 0

[State 3810, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = 36, 0

[State 3810, AllPalFX]
type = AllPalFX
trigger1 = AnimElemTime(1) = 14
time = 10
sinAdd = -255, -255, -255, 120

[State 3810, BGPalFX]
type = BGPalFX
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
time = 1
add = -256,-256,-256

[State 3810, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
flag = NoBarDisplay
flag2 = NoFG

[State 3810, SprPriority]
type = SprPriority
trigger1 = AnimElem = 2
value = 3

[State 3810, Damage]
type = TargetLifeAdd
triggerAll = NumTarget
trigger1 = AnimElemTime(2) = 4
trigger2 = AnimElemTime(2) = 7
trigger3 = AnimElemTime(2) = 10
trigger4 = AnimElemTime(2) = 13
trigger5 = AnimElemTime(2) = 16
trigger6 = AnimElemTime(2) = 20
trigger7 = AnimElemTime(2) = 23
trigger8 = AnimElemTime(2) = 26
trigger9 = AnimElemTime(2) = 29
trigger10 = AnimElemTime(2) = 32
trigger11 = AnimElemTime(2) = 36
trigger12 = AnimElemTime(2) = 39
trigger13 = AnimElemTime(2) = 42
trigger14 = AnimElemTime(2) = 45
value = floor(ifElse(35 * fvar(11) < 7, -7, -35 * fvar(11)))
kill = 0

[State 3810, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 3
value = floor(ifElse(56 * fvar(11) < 7, -7, -56 * fvar(11)))

[State 3810, TargetPowerAdd]
type = TargetPowerAdd
triggerAll = NumTarget
trigger1 = AnimElemTime(2) = 4
trigger2 = AnimElemTime(2) = 7
trigger3 = AnimElemTime(2) = 10
trigger4 = AnimElemTime(2) = 13
trigger5 = AnimElemTime(2) = 16
trigger6 = AnimElemTime(2) = 20
trigger7 = AnimElemTime(2) = 23
trigger8 = AnimElemTime(2) = 26
trigger9 = AnimElemTime(2) = 29
trigger10 = AnimElemTime(2) = 32
trigger11 = AnimElemTime(2) = 36
trigger12 = AnimElemTime(2) = 39
trigger13 = AnimElemTime(2) = 42
trigger14 = AnimElemTime(2) = 45
trigger15 = AnimElem = 3
value = 36

[State 3810, HitAdd]
type = HitAdd
triggerAll = NumTarget
trigger1 = AnimElemTime(2) = 4
trigger2 = AnimElemTime(2) = 7
trigger3 = AnimElemTime(2) = 10
trigger4 = AnimElemTime(2) = 13
trigger5 = AnimElemTime(2) = 16
trigger6 = AnimElemTime(2) = 20
trigger7 = AnimElemTime(2) = 23
trigger8 = AnimElemTime(2) = 26
trigger9 = AnimElemTime(2) = 29
trigger10 = AnimElemTime(2) = 32
trigger11 = AnimElemTime(2) = 36
trigger12 = AnimElemTime(2) = 39
trigger13 = AnimElemTime(2) = 42
trigger14 = AnimElemTime(2) = 45
trigger15 = AnimElem = 3
value = 1

[State 3810, HitAdd]
type = VarAdd
triggerAll = NumTarget
trigger1 = AnimElemTime(2) = 4
trigger2 = AnimElemTime(2) = 7
trigger3 = AnimElemTime(2) = 10
trigger4 = AnimElemTime(2) = 13
trigger5 = AnimElemTime(2) = 16
trigger6 = AnimElemTime(2) = 20
trigger7 = AnimElemTime(2) = 23
trigger8 = AnimElemTime(2) = 26
trigger9 = AnimElemTime(2) = 29
trigger10 = AnimElemTime(2) = 32
trigger11 = AnimElemTime(2) = 36
trigger12 = AnimElemTime(2) = 39
trigger13 = AnimElemTime(2) = 42
trigger14 = AnimElemTime(2) = 45
trigger15 = AnimElem = 3
var(13) = 1

[State 3810, Juggle]
type = VarAdd
triggerAll = NumTarget
trigger1 = AnimElemTime(2) = 4
trigger2 = AnimElemTime(2) = 7
trigger3 = AnimElemTime(2) = 10
trigger4 = AnimElemTime(2) = 13
trigger5 = AnimElemTime(2) = 16
trigger6 = AnimElemTime(2) = 20
trigger7 = AnimElemTime(2) = 23
trigger8 = AnimElemTime(2) = 26
trigger9 = AnimElemTime(2) = 29
trigger10 = AnimElemTime(2) = 32
trigger11 = AnimElemTime(2) = 36
trigger12 = AnimElemTime(2) = 39
trigger13 = AnimElemTime(2) = 42
trigger14 = AnimElemTime(2) = 45
trigger15 = AnimElem = 3
var(15) = 1
ignoreHitPause = 1

[State 3810, Hit Sound 3]
type = PlaySnd
triggerAll = NumTarget
trigger1 = AnimElemTime(2) = 4
trigger2 = AnimElemTime(2) = 7
trigger3 = AnimElemTime(2) = 10
trigger4 = AnimElemTime(2) = 13
trigger5 = AnimElemTime(2) = 16
trigger6 = AnimElemTime(2) = 20
trigger7 = AnimElemTime(2) = 23
trigger8 = AnimElemTime(2) = 26
trigger9 = AnimElemTime(2) = 29
trigger10 = AnimElemTime(2) = 32
trigger11 = AnimElemTime(2) = 36
trigger12 = AnimElemTime(2) = 39
trigger13 = AnimElemTime(2) = 42
trigger14 = AnimElemTime(2) = 45
trigger15 = AnimElem = 3
value = 2, ifElse((AnimElem = 3), 3810, 2)
channel = 2

[State 3810, Hit Spark]
type = Helper
triggerAll = NumTarget
trigger1 = AnimElemTime(2) = 4
trigger2 = AnimElemTime(2) = 7
trigger3 = AnimElemTime(2) = 10
trigger4 = AnimElemTime(2) = 13
trigger5 = AnimElemTime(2) = 16
trigger6 = AnimElemTime(2) = 20
trigger7 = AnimElemTime(2) = 23
trigger8 = AnimElemTime(2) = 26
trigger9 = AnimElemTime(2) = 29
trigger10 = AnimElemTime(2) = 32
trigger11 = AnimElemTime(2) = 36
trigger12 = AnimElemTime(2) = 39
trigger13 = AnimElemTime(2) = 42
trigger14 = AnimElemTime(2) = 45
trigger15 = AnimElem = 3
helperType = Normal
stateNo = 8014
ID = 8000
name = "Spark"
posType = P2
pos = ((Random % 25) * ifElse(Random < 500, 1, -1)), (Target, const(size.mid.pos.y)) - ((Random % 25) * ifElse(Random < 500, 1, -1))
facing = ifElse(Random % 2, -1, 1)
ownPal = 1
onTop = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3810, EnvShake]
type = EnvShake
triggerAll = NumTarget
trigger1 = AnimElemTime(2) = 4
trigger2 = AnimElemTime(2) = 7
trigger3 = AnimElemTime(2) = 10
trigger4 = AnimElemTime(2) = 13
trigger5 = AnimElemTime(2) = 16
trigger6 = AnimElemTime(2) = 20
trigger7 = AnimElemTime(2) = 23
trigger8 = AnimElemTime(2) = 26
trigger9 = AnimElemTime(2) = 29
trigger10 = AnimElemTime(2) = 32
trigger11 = AnimElemTime(2) = 36
trigger12 = AnimElemTime(2) = 39
trigger13 = AnimElemTime(2) = 42
trigger14 = AnimElemTime(2) = 45
trigger15 = AnimElem = 3
time = 18
ampl = -6
freq = 120

[State 3810, Voice]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 3
value = 1200, 0 + 10 * (var(40) = 2)
channel = 0

[State 3810, EnvShake]
type = Null
trigger1 = NumTarget && AnimElem = 3 
time = 18
freq = 120
ampl = 6

[State 3810, ChangeState]
type = ChangeState
trigger1 = WinKO
value = 3820

[State 3810, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Target
[StateDef 3815]
type = S
moveType = H
physics  = N
velSet = 0, 0
sprPriority = 1
faceP2 = 1

[State 3815, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3815, HitFallSet]
type = HitFallSet
trigger1 = !Time
value = 0

[State 3815, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3815

[State 3815, StateTypeSet: Lie Down, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 3
stateType = L
physics = N

[State 3815, ChangeState]
type = SelfState
trigger1 = Time >= 120
value = ifElse(Alive, 5120, 5150)



;========================<WIN BY LAST JUDGEMENT>=============================
[Statedef 3820]
type = S

[State 3820, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && PrevStateNo = 3810
value = 3820

[State 3820, Kanji]
type = Helper
trigger1 = !Time && PrevStateNo = 3810 && !NumHelper(8610)
helperType = Normal
stateNo = 8620
ID = 8620
postype = Left
ownPal = 1
persistent = 0

[State 3820, ChangeState]
type = ChangeState
trigger1 = Time >= 16 && RoundState = 3
value = ifElse(RoundState = 3, 180, 0)
ctrl = 1


;========================<SUPER FINISH (KANJI)>=============================
[StateDef 8620]
type = A
velSet = 0, 0
anim = 1

[State 8620, Assert]
type = AssertSpecial
trigger1 = Time < 120
flag = NoMusic

[State 8620, Snd]
type = PlaySnd
trigger1 = !Time
value = 2, 3811

[State 8620, Black]
type = BGPalFX
trigger1 = Time < 120
time = 2
add = -255, -255, -255

[State 8620, Black]
type = BGPalFX
trigger1 = Time = 120
time = 60
add = -255, -255, -255
sinAdd = 255, 255, 255, 240

[State 8620, Fade]
type = PalFX
trigger1 = Time = 120
time = 60
sinAdd = -255, -255, -255, 240

[State 8620, Last Judgement Kanji]
type = Explod
trigger1 = !Time
anim = 8620
ID = 8620
sprPriority = -5
posType = Left
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 1 * (1.3333333 * GameHeight / GameWidth), 1 * (1.3333333 * GameHeight / GameWidth)
bindTime = -1

[State 8620, Shrink]
type = ModifyExplod
trigger1 = Time < 6
ID = 8620
scale = (5.5 - time) * (1.3333333 * GameHeight / GameWidth), (5.5 - time) * (1.3333333 * GameHeight / GameWidth)

[State 8620, Shrink]
type = ModifyExplod
trigger1 = Time >= 6
ID = 8620
scale = 0.5 * (1.3333333 * GameHeight / GameWidth), 0.5 * (1.3333333 * GameHeight / GameWidth)

[State 8620, Last Judgement Flames]
type = Explod
trigger1 = !Time
anim = 8621
ID = 8621
sprPriority = 5
posType = Left
pos = 0, floor((GameHeight / GameWidth) * 80) - 60
bindTime = -1
removeTime = -1
pauseMoveTime = 300
superMoveTime = 300

[State 8620, Assert: Invisible | NoBarDisplay]
type = AssertSpecial
trigger1 = 1
flag = Invisible
flag2 = NoBarDisplay
ignoreHitPause = 1

[State 8620, Assert]
type = AssertSpecial
trigger1 = Time < 120
flag = noFG
ignoreHitPause = 1

[State 8620, Safety]
type = RemoveExplod
trigger1 = Time >= 180

[State 8620, End]
type = DestroySelf
trigger1 = Time >= 180