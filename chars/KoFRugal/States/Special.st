; _________________________________________________
;| Rugal Bernstein by KarmaCharmeleon		 |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SPECIAL MOVES>=======================================
;==============================================================================================

;========================<REPPUKEN>=============================
[StateDef 1000]
type = S
physics = N
moveType = A
anim = 1000
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
var(10) = ifElse((P2MoveType = H || Random < 333), 2, ifElse(Random < 500, 1, 0))

[State 1000, Voice]
type = PlaySnd
trigger1 = !Time
value = 1000, 0 + 10 * (var(40) = 2)
channel = 0

[State 1000, Reppuken Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 8
value = 1000, 1
channel = 1

[State 1000, Reppuken Startup Effect]
type = Explod
trigger1 = AnimElem = 8
anim = 1003
ID = 1003
sprPriority = 3
bindTime = -1
posType = P1
pos = 0, 0
scale = 0.5,0.5
removeOnGetHit = 1
ignoreHitPause = 0
ownPal = 1

[State 1000, Projectile]
type = Helper
trigger1 = AnimElemTime(8) = 1
helperType = Normal
stateNo = 1005
ID = 1005
name = "Reppuken Projectile"
posType = P1
pos = 0, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1000, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX REPPUKEN>=============================
[StateDef 1030]
type = S
physics = N
moveType = A
anim = 1030
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1030, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

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
var(25) = 25

[State 1030, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = -42, -84
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
trigger1 = !Time
value = 1000, 0 + 10 * (var(40) = 2)
channel = 0

[State 1030, Reppuken Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 8
value = 1000, 1
channel = 3

[State 1030, Reppuken Startup Effect]
type = Explod
trigger1 = AnimElem = 8
anim = 1003
ID = 1003
sprPriority = 3
bindTime = -1
posType = P1
pos = 0, 0
scale = 0.5,0.5
removeOnGetHit = 1
ignoreHitPause = 0
ownPal = 1

[State 1030, Projectile]
type = Helper
trigger1 = AnimElemTime(8) = 1
helperType = Normal
stateNo = 1005
ID = 1005
name = "Reppuken Projectile"
posType = P1
pos = 0, 0
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1030, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<GENOCIDE CUTTER>==========================
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
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1100, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H), 2, ifElse(Random < 500, 1, 0))

[State 1100, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1120, ifElse(var(10) = 1, 1110, 1100))

[State 1100, Voice]
type = PlaySnd
trigger1 = !Time
value = 1100, 0 + 10 * (var(40) = 2)
channel = 0

[State 1100, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 5
channel = 1

[State 1100, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 41, 0
channel = 4

[State 1100, Genocide Cutter Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1100, 1
channel = 3

[State 1100, Genocide Cutter Effect]
type = Explod
trigger1 = AnimElem = 3
anim = ifElse(var(10), 1115, 1105)
ID = 1105
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 1100, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1100, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Genocide Cutter Dust"
posType = P1
ownPal = 1

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = ifElse(var(10) = 2, 1.11731843575, ifElse(var(10) = 1, 0.83798882681, 0.55865921787))
y = ifElse(var(10) = 2, -11.25, ifElse(var(10) = 1, -8.75, -6.25))

[State 1100, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 0
y = 0.5859375

[State 1100, Ground Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 91, ifElse(var(10) = 1, 84, 77)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 91, ifElse(var(10) = 1, 84, 77)))), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Heavy
air.animType = Heavy
fall.animType = Heavy
ground.type = Low
air.type = Low
ground.hitTime = 10
ground.slideTime = 10
guard.hitTime = 10
air.hitTime = 120
ground.velocity = -5.58659217877, -5.78125
ground.cornerPush.velOff = 0
guard.velocity = -5.00836530482
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8018)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := ifElse(var(10) = 2, 42, 33)), var(36) := ifElse(var(10) = 2, -63, -33)
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, Air Hit]
type = HitDef
triggerAll = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5 && !MoveContact && !MoveReversed
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 35, 28) < 7, 7, fvar(11) * ifElse(var(10) = 2, 35, 28))), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 10
ground.slideTime = 10
guard.hitTime = 10
air.hitTime = 120
ground.velocity = -5.58659217877, -5.78125
ground.cornerPush.velOff = 0
guard.velocity = -5.00836530482
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8018)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := ifElse(var(10) = 2, 35, 45)), var(36) := ifElse(var(10) = 2, -114, -78)
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 1100, End]
type = ChangeState
trigger1 = AnimElemTime(4) > 0
trigger1 = pos y > -vel y
value = 1101


;Landing
[StateDef 1101]
type = S
anim = ifElse(var(10) = 2, 1121, ifElse(var(10) = 1, 1111, 1101))
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
value = 52, 0
channel = 1

[State 1101, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<EX GENOCIDE CUTTER>==========================
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
var(25) = 9

[State 1130, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = 35, -75
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
value = 1100, 0 + 10 * (var(40) = 2)
channel = 0

[State 1130, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 5
channel = 3

[State 1130, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 41, 0
channel = 5

[State 1130, Genocide Cutter Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1100, 1
channel = 4

[State 1130, Genocide Cutter Effect]
type = Explod
trigger1 = AnimElem = 3
anim = 1115
ID = 1105
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 1130, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1130, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Genocide Cutter Dust"
posType = P1
ownPal = 1

[State 1130, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 1.11731843575
y = -12.5

[State 1130, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 0
y = 0.5859375

[State 1130, Ground Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 98 < 7, 7, fvar(11) * 98)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Heavy
air.animType = Heavy
fall.animType = Heavy
ground.type = Low
air.type = Low
ground.hitTime = 10
ground.slideTime = 10
guard.hitTime = 10
air.hitTime = 120
ground.velocity = -5.58659217877, -5.78125
ground.cornerPush.velOff = 0
guard.velocity = -5.00836530482
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8018)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 37), var(36) := -43
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, Air Hit]
type = HitDef
triggerAll = !var(16) && var(15) < (1 + HitCount)
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5 && !MoveContact && !MoveReversed
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 10
ground.slideTime = 10
guard.hitTime = 10
air.hitTime = 120
ground.velocity = -5.58659217877, -5.78125
ground.cornerPush.velOff = 0
guard.velocity = -5.00836530482
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8018)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 45), var(36) := -95
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 1130, End]
type = ChangeState
trigger1 = AnimElemTime(4) > 0
trigger1 = pos y > -vel y
value = 1101



;=====================<DARK GENOCIDE>==========================
[StateDef 1150]
type = S
physics = N
moveType = A
anim = 1150
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1150, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1150, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H && !var(20)), 2, ifElse(Random < 500 && !var(20), 1, 0))

[State 1150, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1170, ifElse(var(10) = 1, 1160, 1150))

[State 1150, Voice]
type = PlaySnd
trigger1 = !Time
value = 1100, 0 + 10 * (var(40) = 2)
channel = 0

[State 1150, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 27
value = 1200, 0 + 10 * (var(40) = 2)
channel = 0

[State 1150, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 14 && var(10)
trigger3 = AnimElem = 27 && var(10) = 2
value = 1, 5
channel = 1

[State 1150, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0 && !var(10)
trigger2 = AnimElemTime(4) < 0 && var(10)
value = SCA
time = 1

[State 1150, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 41, 0
channel = 4

[State 1150, Dark Genocide Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 15 && var(10)
trigger3 = AnimElem = 28 && var(10) = 2
value = 1100, 1
channel = 3

[State 1150, Dark Genocide Effect 1]
type = Explod
trigger1 = AnimElem = 3
anim = ifElse(var(10), 1115, 1105)
ID = 1105
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 1550, Remove Dark Genocide Explod]
type = RemoveExplod
trigger1 = NumExplod(1105) && AnimElem = 14 && var(10)
ID = 1105

[State 1150, Dark Genocide Effect 2]
type = Explod
trigger1 = AnimElem = 14 && var(10)
anim = 1165
ID = 1165
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 1550, Remove Dark Genocide Explod]
type = RemoveExplod
trigger1 = NumExplod(1165) && AnimElem = 22 && var(10) = 2
ID = 1165

[State 1150, Dark Genocide Effect 3]
type = Explod
trigger1 = AnimElem = 28 && var(10) = 2
anim = 1175
ID = 1175
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 1150, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1150, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Dark Genocide Dust"
posType = P1
ownPal = 1

[State 1150, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = ifElsE(var(10) = 2, 1.11731843575, ifElse(var(10) = 1, 0.83798882681, 0.55865921787))
y = -6.25

[State 1150, Light VelAdd]
type = VelAdd
triggerAll = !var(10)
trigger1 = AnimElemTime(4) > 0
y = 0.5859375

[State 1150, Medium VelAdd]
type = VelAdd
triggerAll = var(10) = 1
trigger1 = AnimElemTime(4) > 0 && AnimElemTime(12) < 0
trigger2 = AnimElemTime(12) > 0
y = 0.390625

[State 1150, Heavy VelAdd]
type = VelAdd
triggerAll = var(10) = 2
trigger1 = AnimElemTime(4) > 0 && AnimElemTime(12) < 0
trigger2 = AnimElemTime(12) > 0 && AnimElemTime(19) < 0
trigger3 = AnimElemTime(32) > 0
y = 0.390625

[State 1150, Second VelSet]
type = VelSet
trigger1 = var(10)
trigger1 = AnimElem = 12
x = 3.91061452514
y = ifElse(var(10) = 2, -5, -5.625)

[State 1150, Medium Third VelSet]
type = VelSet
trigger1 = var(10) = 1
trigger1 = AnimElemTime(12) > 0 && vel y >= 0
x = 0.83798882681

[State 1150, Heavy Third/Fifth VelSet]
type = VelSet
trigger1 = var(10) = 2
trigger1 = AnimElemTime(12) > 0 && AnimElemTime(22) < 0 && vel y >= 0
x = 1.11731843575

[State 1150, PosFreeze]
type = PosFreeze
trigger1 = AnimElemTime(22) >= 0 && AnimElemTime(32) < 0

[State -1150, Accel]
type = VelSet
trigger1 = var(10) = 2
trigger1 = AnimElem = 32
x = -2.23463687151
y = -5

[State 1150, Ground Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 63, ifElse(var(10) = 1, 70, 77)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 63, ifElse(var(10) = 1, 70, 77)))), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Heavy
air.animType = Heavy
fall.animType = Heavy
ground.type = Low
air.type = Low
ground.hitTime = 10
ground.slideTime = 10
guard.hitTime = 10
air.hitTime = 120
ground.velocity = -5.58659217877, -5.78125
ground.cornerPush.velOff = 0
guard.velocity = -5.00836530482
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8018)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := ifElse(var(10) = 2, 42, 33)), var(36) := ifElse(var(10) = 2, -63, -33)
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1150, Air Hit 1]
type = HitDef
triggerAll = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5 && !var(10)
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 10
ground.slideTime = 10
guard.hitTime = 10
air.hitTime = 120
ground.velocity = -2.23463687151, -10
ground.cornerPush.velOff = 0
guard.velocity = -5.00836530482
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8018)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * 45, var(36) := -78
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1150, Air Hit 2]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20)) && var(10)
trigger1 = AnimElem = 15
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 10
ground.slideTime = 10
guard.hitTime = 10
air.hitTime = 120
ground.velocity = -2.23463687151, ifElse(var(10) = 2, -5, -10)
ground.cornerPush.velOff = 0
guard.velocity = -5.00836530482
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, ifElse(var(10) = 2, -5, -10)
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8018)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1150, Air Hit 3]
type = HitDef
triggerAll = !var(16) && (var(15) < (1 + HitCount) || var(20)) && var(10)
trigger1 = AnimElem = 16
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 10
ground.slideTime = 10
guard.hitTime = 10
air.hitTime = 120
ground.velocity = -2.23463687151, ifElse(var(10) = 2, -5, -10)
ground.cornerPush.velOff = 0
guard.velocity = -5.00836530482
guard.cornerPush.velOff = 0
air.velocity = -2.23463687151, ifElse(var(10) = 2, -5, -10)
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8018)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1150, HitDef: Last Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20)) && var(10) = 2
trigger1 = AnimElem = 29
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 10
ground.slideTime = 10
guard.hitTime = 10
air.hitTime = 120
ground.velocity = -5.58659217877, -5.78125
ground.cornerPush.velOff = 0
guard.velocity = -5.00836530482
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8018)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 85), var(36) := -50
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1150, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0 && !var(10)
trigger2 = AnimElemTime(17) >= 0 && var(10) = 1
trigger3 = AnimElemTime(30) >= 0 && var(10) = 2
moveType = I

[State 1150, End]
type = ChangeState
trigger1 = AnimElemTime(4) > 0
trigger1 = pos y > -vel y
value = 1101



;========================<DARK BARRIER>=============================
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
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1200, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = 0

[State 1200, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1200, ifElse(var(10) = 1, 1201, 1202))

[State 1200, Voice]
type = PlaySnd
trigger1 = !Time
value = 1200, 0 + 10 * (var(40) = 2)
channel = 0

[State 1200, Dark Barrier Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1200, 1
channel = 1

[State 1200, Projectile]
type = Helper
trigger1 = AnimElemTime(3) = 1
helperType = Normal
stateNo = 1205
ID = 1205
name = "Dark Barrier Projectile"
posType = P1
pos = 65, -52
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1200, Projectile Reflector]
type = Helper
trigger1 = AnimElemTime(3) = 1
helperType = Normal
stateNo = 1210
ID = 1210
name = "Dark Barrier Projectile Reflector"
posType = P1
pos = 65, -52
size.xScale = 0.5
size.yScale = 0.5
keyctrl = 1
ownpal = 1
facing = 1
persistent = 0
ignorehitpause = 1

[State 1200, Null]
type = Null
trigger1 = NumHelper(1205)
trigger1 = (Helper(1205), MoveContact) || (Helper(1205), MoveReversed)
trigger1 = Cond(NumHelper(1210), Helper(1210), Cond(1, var(11) := 1205, 0), 0)
trigger2 = NumHelper(1210)
trigger2 = Helper(1210), StateNo = 1211
trigger2 = Cond(NumHelper(1205), Helper(1205), Cond(1, var(11) := 1210, 0), 0)
ignorehitpause = 1
persistent = 0

[State 1200, ChangeAnim]
type = ChangeAnim
trigger1 = NumHelper(1205)
trigger1 = (Helper(1205), MoveContact) || (Helper(1205), MoveReversed)
trigger2 = NumHelper(1210)
trigger2 = Helper(1210), StateNo = 1211
value = 1200
elem = 12
ignoreHitPause = 1
persistent = 0

[State 1200, Width]
type = Width
trigger1 = AnimElemTime(3) = 0
value = 30, 0

[State 1200, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX DARK BARRIER>=============================
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
var(25) = 32

[State 1230, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = -12, -108
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1230, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 1

[State 1230, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 0

[State 1230, Voice]
type = PlaySnd
trigger1 = !Time
value = 1200, 0 + 10 * (var(40) = 2)
channel = 0

[State 1230, Dark Barrier Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1200, 1
channel = 3

[State 1230, Projectile]
type = Helper
trigger1 = AnimElemTime(3) = 1
helperType = Normal
stateNo = 1205
ID = 1235
name = "Dark Barrier Projectile"
posType = P1
pos = 65, -52
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1230, Projectile Reflector]
type = Helper
trigger1 = AnimElemTime(3) = 1
helperType = Normal
stateNo = 1210
ID = 1240
name = "Dark Barrier Projectile Reflector"
posType = P1
pos = 65, -52
size.xScale = 0.5
size.yScale = 0.5
keyctrl = 1
ownpal = 1
facing = 1
persistent = 0
ignorehitpause = 1

[State 1230, Null]
type = Null
trigger1 = NumHelper(1235)
trigger1 = (Helper(1235), MoveContact) || (Helper(1235), MoveReversed)
trigger1 = Cond(NumHelper(1240), Helper(1240), Cond(1, var(11) := 1205, 0), 0)
trigger2 = NumHelper(1240)
trigger2 = Helper(1240), StateNo = 1211
trigger2 = Cond(NumHelper(1235), Helper(1235), Cond(1, var(11) := 1210, 0), 0)
ignorehitpause = 1
persistent = 0

[State 1230, ChangeAnim]
type = ChangeAnim
trigger1 = NumHelper(1235)
trigger1 = (Helper(1235), MoveContact) || (Helper(1235), MoveReversed)
trigger2 = NumHelper(1240)
trigger2 = Helper(1240), StateNo = 1211
value = 1230
elem = 12
ignoreHitPause = 1
persistent = 0

[State 1230, Width]
type = Width
trigger1 = AnimElemTime(3) = 0
value = 30, 0

[State 1230, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<KAISER WAVE>=============================
[StateDef 1300]
type = S
physics = N
moveType = A
anim = ifElse(var(40), 11300, 1300)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1300, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1300, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 1300, 0 + 10 * (var(40) = 2)
channel = 0

[State 1300, Reset Kaiser Wave Strength]
type = VarSet
trigger1 = !Time
var(11) = 0

[State 1300, Kaiser Wave Strength]
type = VarAdd
triggerAll = !var(40)
trigger1 = AnimElemTime(19) = 0
trigger2 = AnimElemTime(33) = 0
var(11) = 1

[State 1300, Kaiser Wave Strength (God)]
type = VarAdd
triggerAll = var(40)
trigger1 = AnimElemTime(13) = 0
trigger2 = AnimElemTime(20) = 0
var(11) = 1

[State 1300, ChangeAnim]
type = ChangeAnim
triggerAll = !var(40)
triggerAll = AnimElemTime(7) > 0 && AnimElemTime(46) < 0
trigger1 = !NumExplod(90000201) && !var(10)
trigger2 = !NumExplod(90000211) && var(10) = 1
trigger3 = !NumExplod(90000221) && var(10) = 2
value = 1300
elem = 46
ignoreHitPause = 1
persistent = 0

[State 1300, ChangeAnim]
type = ChangeAnim
triggerAll = var(40)
triggerAll = AnimElemTime(7) > 0 && AnimElemTime(27) < 0
trigger1 = !NumExplod(90000201) && !var(10)
trigger2 = !NumExplod(90000211) && var(10) = 1
trigger3 = !NumExplod(90000221) && var(10) = 2
value = 11300
elem = 27
ignoreHitPause = 1
persistent = 0

[State 1300, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 19 && !var(40)
trigger2 = AnimElem = 13 && var(40)
value = 730, 1 + 10 * (var(40) = 2)
channel = 0

[State 1300, Voice 3]
type = PlaySnd
trigger1 = AnimElem = 46 && !var(40)
trigger2 = AnimElem = 27 && var(40)
value = 1300, 1 + 10 * (var(40) = 2)
channel = 0

[State 1300, Kaiser Wave Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 47 && !var(40)
trigger2 = AnimElem = 28 && var(40)
value = 1300, 2
channel = 1

[State 1300, Projectile]
type = Helper
trigger1 = AnimElem = 47 && !var(40)
trigger2 = AnimElem = 28 && var(40)
helperType = Normal
stateNo = 1305
ID = 1305
name = "Kaiser Wave Projectile"
posType = P1
pos = 94, -72
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1300, Width]
type = Width
trigger1 = AnimElemTime(46) = 1 && !var(40)
trigger2 = AnimElemTime(27) = 1 && var(40)
value = 30, 0

[State 1300, Reset God Kaiser Wave Strength]
type = VarSet
triggerAll = var(40)
trigger1 = !Time
trigger2 = AnimElemTime(32) = 0
var(24) = 0

[State 1300, God Kaiser Wave Strength]
type = VarSet
trigger1 = AnimElem = 28 && var(40)
var(24) = 1 

[State 1300, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<EX KAISER WAVE>=============================
[StateDef 1330]
type = S
physics = N
moveType = A
anim = 1330
ctrl = 0
velSet = 0,0
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
var(25) = 148

[State 1330, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = -26, -102
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1330, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 1

[State 1330, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 1300, 0 + 10 * (var(40) = 2)
channel = 0

[State 1330, Reset Kaiser Wave Strength]
type = VarSet
trigger1 = !Time
var(11) = 0

[State 1330, Kaiser Wave Strength]
type = VarAdd
trigger1 = AnimElemTime(19) = 0
trigger2 = AnimElemTime(33) = 0
var(11) = 1

[State 1330, ChangeAnim]
type = ChangeAnim
trigger1 = !AILevel
trigger1 = AnimElemTime(7) > 0 && AnimElemTime(46) < 0
trigger1 = !NumExplod(90000201)
trigger1 = !NumExplod(90000211)
trigger1 = !NumExplod(90000221)
value = 1330
elem = 46
ignoreHitPause = 1
persistent = 0

[State 1330, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 19
value = 730, 1 + 10 * (var(40) = 2)
channel = 0

[State 1330, Voice 3]
type = PlaySnd
trigger1 = AnimElem = 46
value = 1300, 1 + 10 * (var(40) = 2)
channel = 0

[State 1330, Kaiser Wave Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 47
value = 1300, 2
channel = 1

[State 1330, Projectile]
type = Helper
trigger1 = AnimElem = 47
helperType = Normal
stateNo = 1305
ID = 1335
name = "Kaiser Wave Projectile"
posType = P1
pos = 94, -72
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1330, Width]
type = Width
trigger1 = AnimElemTime(46) = 1
value = 30, 0

[State 1330, EX Flash]
type = VarSet
trigger1 = AnimElem = 50
var(25) = 0

[State 1330, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<GOD PRESS>=============================
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
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1400, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1400, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1402, ifElse(var(10) = 1, 1401, 1400))

[State 1400, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 0 + 10 * (var(40) = 2)
channel = 0

[State 1400, Step Sound 1]
type = PlaySnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 14 && var(10)
value = 100, 0
channel = 3

[State 1400, Step Sound 2]
type = PlaySnd
trigger1 = AnimElem = 10
trigger2 = AnimElem = 18 && var(10) = 2
value = 100, 1
channel = 3

[State 1400, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = ifElse(var(10) = 2, 8.93854748603, ifElse(var(10) = 1, 7.82122905028, 6.70391061453))

[State 1400, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem >= 4
ID = 1400
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
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
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
kill = 0

[State 1400, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1400) > 1
ID = 1400
keepOne = 1
excludeID = 1400
ignoreHitPause = 1

[State 1400, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1400)
value = 1415
ID = 1400
ignoreHitPause = 1
persistent = 0

[State 1400, ChangeState]
type = ChangeState
trigger1 = NumTarget(1400)
trigger1 = MoveHit && Target, Alive
value = 1410

[State 1400, ChangeState]
type = ChangeState
triggerAll = AnimElemTime(4) >= 0
trigger1 = MoveGuarded
trigger2 = !AnimTime
trigger3 = FrontEdgeDist <= 0
trigger4 = P2BodyDist X <= 0 && P2StateType = L
value = ifElse(MoveGuarded, 1406, 1405)


;Whiff
[StateDef 1405]
type = S
physics = N
moveType = I
anim = 1405
ctrl = 0
velSet = 0, 0
sprPriority = 1

[State 1405, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 0

[State 1405, Woosh]
type = PlaySnd
trigger1 = !Time
value = 1, 2
channel = 1

[State 1405, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Block
[StateDef 1406]
type = S
physics = N
moveType = I
anim = 1406
ctrl = 0
velSet = 0, 0
sprPriority = 1

[State 1406, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 0

[State 1406, Woosh]
type = PlaySnd
trigger1 = !Time
value = 1, 2
channel = 1

[State 1406, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Throw Part 1
[Statedef 1410]
type = S
physics = N
moveType = A
anim = 1410
ctrl = 0
velSet = 0, 0
sprPriority = 0

[State 1410, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 1410, NotHitBy]
type = NotHitBy
trigger1 = NumTarget
value = SCA
time = 1

[State 1410, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 11.1731843575
y = -1.875

[State 1410, VelAdd]
type = VelAdd
Trigger1 = AnimElemTime(2) > 0
y = 0.29296875

[State 1410, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 1415

[State 1410, TargetBind]
type = TargetBind
trigger1 = NumTarget
trigger1 = Time >= 0
pos = -31, -88

[State 1410, Voice]
type = PlaySnd
trigger1 = !Time
value = 1410, 0 + 10 * (var(40) = 2)
channel = 0

[State 1410, Grab sound]
type = PlaySnd
trigger1 = !Time
value = 2, 800
channel = 2

[State 1410, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 41, 0
channel = 4

[State 1410, End]
type = ChangeState
trigger1 = AnimElemTime(1) >= 2 && AnimElemTime(2) < 0
trigger1 = FrontEdgeDist <= 52
trigger2 = AnimElemTime(2) >= 0
trigger2 = FrontEdgeDist <= 35
trigger3 = Time >= 600
value = 1412

[State 1410, End]
type = ChangeState
trigger1 = AnimElemTime(2) > 0
trigger1 = pos y > -vel y
value = 1411


;Throw Part 2
[Statedef 1411]
type = S
physics = N
moveType = A
anim = 1411
ctrl = 0
velSet = 0, 0
sprPriority = 0

[State 1411, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 1411, NotHitBy]
type = NotHitBy
trigger1 = NumTarget
value = SCA
time = 1

[State 1411, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1411, VelSet]
type = VelSet
trigger1 = 1
x = 11.1731843575

[State 1411, TargetBind]
type = TargetBind
trigger1 = NumTarget
pos = -31, -88

[State 1411, Slide Sound]
type = PlaySnd
trigger1 = !Time
value = 1, 1400
channel = 5

[State 1411, Dust Helper]
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

[State 1411, End]
type = ChangeState
trigger1 = FrontEdgeDist <= 35
trigger2 = Time >= 600
value = 1412


;Throw Part 3
[Statedef 1412]
type = S
physics = N
moveType = A
anim = 1412
ctrl = 0
velSet = 0, 0
sprPriority = 0

[State 1412, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 1412, NotHitBy]
type = NotHitBy
trigger1 = NumTarget && AnimElemTime(3) < 1
value = SCA
time = 1

[State 1412, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1412, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 1416

[State 1412, Width]
type = Width
trigger1 = AnimElemTime(2) >= 0
edge = 65, 0

[State 1412, TargetBind]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) < 0
pos = 35, -7

[State 1412, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = 68, -21

[State 1412, SprPriority]
type = SprPriority
trigger1 = NumTarget && AnimElemTime(2) = 0
value = 2

[State 1412, Wall Slam Sound Effect]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(2) = 0
value = 2, 1410
channel = 3

[State 1412, God Press Sound Effect]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(2) = 1
value = 1410, 2
channel = 4

[State 1412, Damage]
type = TargetLifeAdd
trigger1 = var(40) != 2
trigger1 = NumTarget && AnimElemTime(3) = 0
value = floor(ifElse(ifElse(var(10) = 2, 140, ifElse(var(10) = 1, 133, 126)) * fvar(11) < 7, -7, (-ifElse(var(10) = 2, 140, ifElse(var(10) = 1, 133, 126))) * fvar(11)))

[State 1412, Damage]
type = TargetLifeAdd
trigger1 = var(40) = 2
trigger1 = NumTarget && AnimElemTime(3) = 0
value = floor(ifElse(ifElse(var(10) = 2, 154, ifElse(var(10) = 1, 147, 140)) * fvar(11) < 7, -7, (-ifElse(var(10) = 2, 154, ifElse(var(10) = 1, 147, 140))) * fvar(11)))

[State 1412, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElemTime(3) = 0
value = 36

[State 1412, Power]
type = PowerAdd
trigger1 = NumTarget && AnimElemTime(3) = 0 && !var(20)
value = 72

[State 1412, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElemTime(3) = 0
value = 1

[State 1412, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(3) = 0
var(13) = 1

[State 1412, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(3) = 0
var(15) = 1
ignoreHitPause = 1

[State 1412, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElemTime(3) = 0
time = 14
ampl = -4
freq = 120

[State 1412, Wall Impact Dust]
type = Helper
trigger1 = NumTarget && !Time
helperType = Normal
stateNo = 8111
ID = 8111
name = "Wall Impact Dust"
posType = Front
pos = 0, -80
ownPal = 1

[State 1412, Explosion]
type = Explod
trigger1 = NumTarget && AnimElemTime(3) = 1
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

[State 1412, Throw]
type = TargetState
trigger1 = NumTarget && AnimElemTime(3) = 1
value = 1417

[State 1412, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<GOD PRESS (TARGET)>==========
;Being Thrown Part 1/2
[StateDef 1415]
type = A
moveType = H
physics = N
velSet = 0,0
sprPriority = 1

[State 1415, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 1415, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1415

[State 1415, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 1415, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1


;Being Thrown Part 3
[StateDef 1416]
type = A
moveType = H
physics = N
velSet = 0,0
sprPriority = 1

[State 1416, PosSet]
type = PosSet
trigger1 = !time
y = 0

[State 1416, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1416

[State 1416, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 1416, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1


;After Throw
[StateDef 1417]
type = A
physics = N
movetype = H
ctrl = 0
velSet = -4.74860335196, -9.0625
sprPriority = 1

[State 1416, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,1
ignoreHitPause = 1

[State 1416, VelAdd]
type = VelAdd
Trigger1 = 1
y = 0.634765625

[State 1416, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 1416, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 1416, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100



;========================<EX GOD PRESS>=============================
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
var(25) = 55

[State 1430, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = -39, -89
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1430, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 1

[State 1430, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0
value = SCA
time = 1

[State 1430, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 0 + 10 * (var(40) = 2)
channel = 0

[State 1430, Step Sound 1]
type = PlaySnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 14
value = 100, 0
channel = 3

[State 1430, Step Sound 2]
type = PlaySnd
trigger1 = AnimElem = 10
trigger2 = AnimElem = 18
value = 100, 1
channel = 3

[State 1430, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 10.0558659218

[State 1430, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem >= 4
ID = 1430
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
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
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
kill = 0

[State 1430, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1430) > 1
ID = 1430
keepOne = 1
excludeID = 1430
ignoreHitPause = 1

[State 1430, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1430)
value = 1415
ID = 1430
ignoreHitPause = 1
persistent = 0

[State 1430, ChangeState]
type = ChangeState
trigger1 = NumTarget(1430)
trigger1 = MoveHit && Target, Alive
value = 1440

[State 1430, ChangeState]
type = ChangeState
triggerAll = AnimElemTime(4) >= 0
trigger1 = MoveGuarded
trigger2 = !AnimTime
trigger3 = FrontEdgeDist <= 0
trigger4 = P2BodyDist X <= 0 && P2StateType = L
value = ifElse(MoveGuarded, 1406, 1405)


;Throw Part 1
[Statedef 1440]
type = S
physics = N
moveType = A
anim = 1410
ctrl = 0
velSet = 0, 0
sprPriority = 0

[State 1440, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 1440, NotHitBy]
type = NotHitBy
trigger1 = NumTarget
value = SCA
time = 1

[State 1440, EX Flash]
type = VarAdd
trigger1 = 1
var(25) = 1

[State 1440, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 11.1731843575
y = -1.875

[State 1440, VelAdd]
type = VelAdd
Trigger1 = AnimElemTime(2) > 0
y = 0.29296875

[State 1440, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 1415

[State 1440, TargetBind]
type = TargetBind
trigger1 = NumTarget
trigger1 = Time >= 0
pos = -31, -88

[State 1440, Voice]
type = PlaySnd
trigger1 = !Time
value = 1410, 0 + 10 * (var(40) = 2)
channel = 0

[State 1440, Grab sound]
type = PlaySnd
trigger1 = !Time
value = 2, 800
channel = 2

[State 1440, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 41, 0
channel = 4

[State 1440, End]
type = ChangeState
trigger1 = AnimElemTime(1) >= 2 && AnimElemTime(2) < 0
trigger1 = FrontEdgeDist <= 52
trigger2 = AnimElemTime(2) >= 0
trigger2 = FrontEdgeDist <= 35
trigger3 = Time >= 600
value = 1442

[State 1440, End]
type = ChangeState
trigger1 = AnimElemTime(2) > 0
trigger1 = pos y > -vel y
value = 1441


;Throw Part 2
[Statedef 1441]
type = S
physics = N
moveType = A
anim = 1411
ctrl = 0
velSet = 0, 0
sprPriority = 0

[State 1441, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 1441, NotHitBy]
type = NotHitBy
trigger1 = NumTarget
value = SCA
time = 1

[State 1441, EX Flash]
type = VarAdd
trigger1 = 1
var(25) = 1

[State 1441, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1441, VelSet]
type = VelSet
trigger1 = 1
x = 11.1731843575

[State 1441, TargetBind]
type = TargetBind
trigger1 = NumTarget
pos = -31, -88

[State 1441, Slide Sound]
type = PlaySnd
trigger1 = !Time
value = 1, 1400
channel = 5

[State 1441, Dust Helper]
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

[State 1441, End]
type = ChangeState
trigger1 = FrontEdgeDist <= 35
trigger2 = Time >= 600
value = 1442


;Throw Part 3
[Statedef 1442]
type = S
physics = N
moveType = A
anim = 1412
ctrl = 0
velSet = 0, 0
sprPriority = 0

[State 1442, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 1442, NotHitBy]
type = NotHitBy
trigger1 = NumTarget && AnimElemTime(3) < 1
value = SCA
time = 1

[State 1442, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1442, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 12

[State 1442, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 1416

[State 1442, Width]
type = Width
trigger1 = AnimElemTime(2) >= 0
edge = 65, 0

[State 1442, TargetBind]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) < 0
pos = 35, -7

[State 1442, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = 68, -21

[State 1442, SprPriority]
type = SprPriority
trigger1 = NumTarget && AnimElemTime(2) = 0
value = 2

[State 1442, Wall Slam Sound Effect]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(2) = 0
value = 2, 1410
channel = 3

[State 1442, God Press Sound Effect]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(2) = 1
value = 1410, 2
channel = 4

[State 1442, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElemTime(3) = 0
value = floor(ifElse(154 * fvar(11) < 7, -7, -154 * fvar(11)))

[State 1412, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElemTime(3) = 0
value = 36

[State 1442, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElemTime(3) = 0
value = 1

[State 1442, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(3) = 0
var(13) = 1

[State 1442, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(3) = 0
var(15) = 1
ignoreHitPause = 1

[State 1442, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElemTime(3) = 0
time = 14
ampl = -4
freq = 120

[State 1442, Wall Impact Dust]
type = Helper
trigger1 = NumTarget && !Time
helperType = Normal
stateNo = 8111
ID = 8111
name = "Wall Impact Dust"
posType = Front
pos = 0, -80
ownPal = 1

[State 1442, Explosion]
type = Explod
trigger1 = NumTarget && AnimElemTime(3) = 1
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

[State 1442, Throw]
type = TargetState
trigger1 = NumTarget && AnimElemTime(3) = 1
value = 1417

[State 1442, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<DARK SMASH>=============================
[StateDef 1500]
type = S
physics = N
moveType = A
anim = 1500
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72  * !var(20)
faceP2 = 1

[State 1500, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1500, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1500, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1520, ifElse(var(10) = 1, 1510, 1500))

[State 1500, Voice]
type = PlaySnd
trigger1 = !Time
value = 730, 1 + 10 * (var(40) = 2)
channel = 0

[State 1500, Dark Smash Sound Effect 1]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 1550, 1
channel = 3

[State 1500, Dark Smash Visual Effect 1]
type = Explod
trigger1 = AnimElemTime(3) = 0
anim = 1503
ID = 1503
sprPriority = 3
bindtime = -1
removeTime = -1
posType = P1
pos = -28, -80
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1500, Remove Dark Smash Explod]
type = RemoveExplod
trigger1 = NumExplod(1503) && AnimElem = 9 && !var(10)
trigger2 = NumExplod(1503) && AnimElem = 11 && var(10) = 1
trigger3 = NumExplod(1503) && AnimElem = 12 && var(10) = 2
ID = 1503

[State 1500, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 8 && !var(10)
trigger2 = AnimElem = 10 && var(10) = 1
trigger3 = AnimElem = 11 && var(10) = 2
value = 4, 2 + 10 * (var(40) = 2)
channel = 0

[State 1500, Dark Smash Sound Effect 2]
type = PlaySnd
trigger1 = AnimElemTime(9) = 0 && !var(10)
trigger2 = AnimElemTime(11) = 0 && var(10) = 1
trigger3 = AnimElemTime(12) = 0 && var(10) = 2
value = 1550, 2
channel = 3

[State 1500, Dark Smash Sound Effect 3]
type = PlaySnd
trigger1 = AnimElemTime(9) = 1 && !var(10)
trigger2 = AnimElemTime(11) = 1 && var(10) = 1
trigger3 = AnimElemTime(12) = 1 && var(10) = 2
value = 1300, 2
channel = 3

[State 1500, Dark Smash Visual Effect 2]
type = Explod
trigger1 = AnimElemTime(9) = 0 && !var(10)
trigger2 = AnimElemTime(11) = 0 && var(10) = 1
trigger3 = AnimElemTime(12) = 0 && var(10) = 2
anim = 1305
ID = 1505
sprPriority = 3
bindtime = -1
removeTime = -1
posType = P1
pos = 98, -70
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1500, Remove Dark Smash Explod]
type = RemoveExplod
trigger1 = NumExplod(1505) && AnimElem = 13 && !var(10)
trigger2 = NumExplod(1505) && AnimElem = 15 && var(10) = 1
trigger3 = NumExplod(1505) && AnimElem = 16 && var(10) = 2
ID = 1505

[State 1500, Dark Smash Projectile Shield]
type = Helper
trigger1 = AnimElemTime(9) = 0 && !var(10)
trigger2 = AnimElemTime(11) = 0 && var(10) = 1
trigger3 = AnimElemTime(12) = 0 && var(10) = 2
helperType = Normal
stateNo = 1502
ID = 1502
name = "Projectile Shield"
posType = P1
pos = 0, 0
keyctrl = 1
ownpal = 1
facing = 1
persistent = 0
ignorehitpause = 1

[State 1500, VelSet]
type = VelSet
trigger1 = AnimElemTime(11) = 0 && var(10) = 1
trigger2 = AnimElemTime(12) = 0 && var(10) = 2
x = ifElse(var(10) = 2, 4.46927374302, 2.23463687151)

[State 1500, VelSet]
type = VelAdd
trigger1 = AnimElemTime(11) > 0 && AnimElemTime(16) < 0 && var(10) = 1
trigger2 = AnimElemTime(12) > 0 && AnimElemTime(17) < 0 && var(10) = 2
x = ifElse(var(10) = 2, -0.34916201117, -0.17458100558)

[State 1500, VelSet]
type = VelSet
trigger1 = AnimElemTime(16) = 0 && var(10) = 1
trigger2 = AnimElemTime(17) = 0 && var(10) = 2
x = 0

[State 1500, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElemTime(9) > 0 && !MoveContact && !MoveReversed && !var(10)
trigger2 = AnimElemTime(11) > 0 && !MoveContact && !MoveReversed && var(10) = 1
trigger3 = AnimElemTime(12) > 0 && !MoveContact && !MoveReversed && var(10) = 2
ID = 1500
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * ifElse(var(10) = 2, 98, ifElse(var(10) = 1, 91, 84)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 98, ifElse(var(10) = 1, 91, 84)))), 7
getPower = ifElse(!var(13), 144, 72)  * !var(20), 36  * !var(20)
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
ground.velocity = -3.35195530726, -7.34375
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -7.34375
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 10)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 104), var(36) := -72
palFX.time = ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 0, 45)
palFX.mul = ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 256, 192), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 256, 192), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 256, 192)
palFX.sinAdd = ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), -255, 128), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), -255, 128), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), -255, 128), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 48, 4)
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1500, Shock Particles]
type = Helper
triggerAll = !(EnemyNear, SelfAnimExist(7696)) && !(EnemyNear, SelfAnimExist(9010))
triggerAll = !NumHelper(8155)
triggerAll = MoveHit = 1 && NumTarget
triggerAll = !(Target, HitShakeOver)
triggerAll = var(43) := (Target, ID)
trigger1 = AnimElemTime(9) >= 0 && !var(10)
trigger2 = AnimElemTime(11) >= 0 && var(10) = 1
trigger3 = AnimElemTime(12) >= 0 && var(10) = 2
helperType = Normal
stateNo = 8155
ID = 8155
name = "Shock Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1500, Shock Particle Timer Set]
type = Null
triggerAll = !(EnemyNear, SelfAnimExist(7696)) && !(EnemyNear, SelfAnimExist(9010))
triggerAll = MoveHit = 1 && NumTarget
triggerAll = !(Target, HitShakeOver)
triggerAll = NumHelper(8155)
triggerAll = Cond(NumHelper(8155), Helper(8155), Cond(1, var(44) := 45, 0), 0)
trigger1 = AnimElemTime(9) >= 0 && !var(10)
trigger2 = AnimElemTime(11) >= 0 && var(10) = 1
trigger3 = AnimElemTime(12) >= 0 && var(10) = 2
ignoreHitPause = 1
persistent = 0

[State 1500, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1500)
value = 51500
ID = 1500
ignoreHitPause = 1
persistent = 0

[State 1500, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(13) >= 0 && !var(10)
trigger2 = AnimElemTime(15) >= 0 && var(10) = 1
trigger3 = AnimElemTime(16) >= 0 && var(10) = 2
moveType = I

[State 1500, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;====================<DARK SMASH (TARGET)>=========================
;Hit shake
[StateDef 51500]
type = S
moveType = H
physics = N
velset = 0,0

[State 51500, ChangeAnim]
type = ChangeAnim
trigger1 = !SelfAnimExist(7696) && !SelfAnimExist(9010)
trigger1 = !Time
trigger1 = GetHitVar(AnimType) != [3,5]
value = ifElse((GetHitVar(GroundType) = 1), 5000, 5010) + GetHitVar(AnimType)

[State 51500, ChangeAnim]
type = ChangeAnim
trigger1 = !SelfAnimExist(7696) && !SelfAnimExist(9010)
trigger1 = !Time
trigger1 = GetHitVar(AnimType) = [3,5]
value = 5030

[State 51500, ChangeAnim]
type = ChangeAnim
trigger1 = !SelfAnimExist(7696) && !SelfAnimExist(9010)
trigger1 = !Time
trigger1 = (GetHitVar(AnimType) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(AnimType)))
value = 5047 + GetHitVar(AnimType)

[State 51500, ChangeAnim]
type = ChangeAnim
trigger1 = SelfAnimExist(7696) || SelfAnimExist(9010)
trigger1 = !Time
value = ifElse(SelfAnimExist(7696), 7696, 9010)

[State 51500, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 7696 && Anim != 9010
trigger1 = Time > 0
value = Anim

[State 51500, StateTypeSet]
type = StateTypeSet
trigger1 = !Time
trigger1 = GetHitVar(yVel) != 0 || GetHitVar(fall)
trigger2 = pos y != 0
StateType = A

[State 51500, SelfState]
type = SelfState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yVel) = 0 && !GetHitVar(fall)
value = 5001

[State 51500, ChangeState]
type = ChangeState
trigger1 = SelfAnimExist(7696) || SelfAnimExist(9010)
trigger1 = HitShakeOver
value = 51501

[State 51500, SelfState]
type = SelfState
trigger1 = HitShakeOver
value = 5030

[State 51500, OffSet]
type = OffSet
trigger1 = Anim = 7696 || Anim = 9010
x = ifElse(Time > 10, 4, ifElse(Time > 6, 6, 8)) * ifElse(Time % 2 = 0, 1, -1)


;Air get-hit (knocked away)
[StateDef 51501]
type = A
moveType = H
physics = N
ctrl = 0

[State 51501, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != [5000, 5199]
trigger1 = (GetHitVar(AnimType) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
trigger1 = Time > 12
value = 5047 + GetHitVar(AnimType)

[State 51501, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != [5000, 5199]
trigger1 = SelfAnimExist(5030)
trigger1 = Time > 12
value = 5030

[State 51501, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = GetHitVar(yAccel)

[State 51501, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

[State 51501, SelfState]
type = SelfState
triggerAll = !HitFall
trigger1 = HitOver
trigger2 = vel y > 0
trigger2 = pos y >= const(movement.air.getHit.groundLevel)
value = 5040

[State 51501, SelfState]
type = SelfState
triggerAll = HitFall
trigger1 = HitOver
trigger2 = vel y > 0
trigger2 = pos y >= const(movement.air.getHit.groundLevel)
value = 5050

[State 51501, SelfState]
type = SelfState
trigger1 = vel y > 0
value = 5035

[State 51501, OffSet]
type = OffSet
trigger1 = Anim = 7696 || Anim = 9010
trigger1 = Time <= 12
x = 2 * ifElse(Time % 2 = 0, 1, -1)



;========================<EX DARK SMASH>=============================
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

[State 1530, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 0

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
var(25) = 27

[State 1530, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = -26, -102
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
value = 730, 1 + 10 * (var(40) = 2)
channel = 0

[State 1530, Dark Smash Sound Effect 1]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = 1550, 1
channel = 3

[State 1530, Dark Smash Visual Effect 1]
type = Explod
trigger1 = AnimElemTime(3) = 0
anim = 1503
ID = 1503
sprPriority = 3
bindtime = -1
removeTime = -1
posType = P1
pos = -28, -80
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1530, Remove Dark Smash Explod]
type = RemoveExplod
trigger1 = NumExplod(1503) && AnimElem = 9
ID = 1503

[State 1530, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 8
value = 4, 2 + 10 * (var(40) = 2)
channel = 0

[State 1530, Dark Smash Sound Effect 2]
type = PlaySnd
trigger1 = AnimElemTime(9) = 0
value = 1550, 2
channel = 3

[State 1530, Dark Smash Sound Effect 3]
type = PlaySnd
trigger1 = AnimElemTime(9) = 1
value = 1300, 2
channel = 3

[State 1530, Dark Smash Visual Effect 2]
type = Explod
trigger1 = AnimElemTime(9) = 0
anim = 1305
ID = 1505
sprPriority = 3
bindtime = -1
removeTime = -1
posType = P1
pos = 98, -70
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1530, Remove Dark Smash Explod]
type = RemoveExplod
trigger1 = NumExplod(1505) && AnimElem = 13
ID = 1505

[State 1530, Dark Smash Projectile Shield]
type = Helper
trigger1 = AnimElemTime(9) = 0
helperType = Normal
stateNo = 1502
ID = 1502
name = "Projectile Shield"
posType = P1
pos = 0, 0
keyctrl = 1
ownpal = 1
facing = 1
persistent = 0
ignorehitpause = 1

[State 1530, VelSet]
type = VelSet
trigger1 = AnimElemTime(9) = 0
x = 5.58659217877

[State 1530, VelSet]
type = VelAdd
trigger1 = AnimElemTime(9) > 0 && AnimElemTime(14) < 0
x = -0.34916201117

[State 1530, VelSet]
type = VelSet
trigger1 = AnimElemTime(14) = 0
x = 0

[State 1530, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElemTime(9) > 0 && !MoveContact && !MoveReversed
ID = 1530
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 126 < 7, 7, fvar(11) * 126)), 7
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
ground.velocity = -3.35195530726, -7.34375
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -7.34375
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 10)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 104), var(36) := -72
palFX.time = ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 0, 45)
palFX.mul = ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 256, 192), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 256, 192), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 256, 192)
palFX.sinAdd = ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), -255, 128), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), -255, 128), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), -255, 128), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 48, 4)
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1530, Shock Particles]
type = Helper
triggerAll = !(EnemyNear, SelfAnimExist(7696)) && !(EnemyNear, SelfAnimExist(9010))
triggerAll = !NumHelper(8155)
triggerAll = MoveHit = 1 && NumTarget
triggerAll = !(Target, HitShakeOver)
triggerAll = var(43) := (Target, ID)
trigger1 = AnimElemTime(9) >= 0 && !var(10)
trigger2 = AnimElemTime(11) >= 0 && var(10) = 1
trigger3 = AnimElemTime(12) >= 0 && var(10) = 2
helperType = Normal
stateNo = 8155
ID = 8155
name = "Shock Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1530, Shock Particle Timer Set]
type = Null
triggerAll = !(EnemyNear, SelfAnimExist(7696)) && !(EnemyNear, SelfAnimExist(9010))
triggerAll = MoveHit = 1 && NumTarget
triggerAll = !(Target, HitShakeOver)
triggerAll = NumHelper(8155)
triggerAll = Cond(NumHelper(8155), Helper(8155), Cond(1, var(44) := 45, 0), 0)
trigger1 = AnimElemTime(9) >= 0
ignoreHitPause = 1
persistent = 0

[State 1530, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1500)
value = 51500
ID = 1500
ignoreHitPause = 1
persistent = 0

[State 1530, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(13) >= 0
moveType = I

[State 1530, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<AIRBORNE DARK SMASH>==========================
[StateDef 1550]
type = A
physics = N
moveType = A
anim = 1550
ctrl = 0
sprPriority = 1
powerAdd = 72 * !var(20)

[State 1550, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1550, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(P2MoveType = H, 2, 0)

[State 1550, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1570, ifElse(var(10) = 1, 1560, 1550))

[State 1550, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 730, 1 + 10 * (var(40) = 2)
channel = 0

[State 1550, Dark Smash Sound Effect 1]
type = PlaySnd
trigger1 = AnimElemTime(3) = 2
value = 1550, 1
channel = 3

[State 1550, Dark Smash Visual Effect 1]
type = Explod
trigger1 = AnimElemTime(3) = 2
anim = 1553
ID = 1553
sprPriority = 3
bindtime = -1
removeTime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1550, Remove Dark Smash Explod]
type = RemoveExplod
trigger1 = NumExplod(1553) && AnimElem = 7
ID = 1553

[State 1550, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 7
value = 4, 2 + 10 * (var(40) = 2)
channel = 0

[State 1550, Dark Smash Sound Effect 2]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1550, 2
channel = 3

[State 1550, Dark Smash Sound Effect 3]
type = PlaySnd
trigger1 = AnimElemTime(7) = 2
value = 1300, 2
channel = 3

[State 1550, Dark Smash Visual Effect 2]
type = Explod
trigger1 = AnimElemTime(7) = 2
anim = 1555
ID = 1555
sprPriority = 3
bindtime = -1
removeTime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1550, Dark Smash Projectile Shield]
type = Helper
trigger1 = AnimElemTime(7) = 2
helperType = Normal
stateNo = 1502
ID = 1502
name = "Projectile Shield"
posType = P1
pos = 0, 0
keyctrl = 1
ownpal = 1
facing = 1
persistent = 0
ignorehitpause = 1

[State 1550, PosFreeze]
type = PosFreeze
trigger1 = AnimElemTime(7) < 1

[State 1550, VelSet]
type = VelSet
trigger1 = AnimElemTime(7) = 1
x = 7.82122905028
y = 3.75

[State 1550, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(7) > 1
y = 0.09765625

[State 1550, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElemTime(7) >= 0 && !MoveContact && !MoveReversed
ID = 1550
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * (ifElse(var(10) = 2, 98, ifElse(var(10) = 1, 91, 84)) + (7 * (AnimElem = 7))) < 7, 7, fvar(11) * (ifElse(var(10) = 2, 98, ifElse(var(10) = 1, 91, 84)) + (7 * (AnimElem = 7))))), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -3.35195530726, -7.34375
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -7.34375
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 10)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 65), var(36) := -58
palFX.time = ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 0, 45)
palFX.mul = ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 256, 192), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 256, 192), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 256, 192)
palFX.sinAdd = ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), -255, 128), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), -255, 128), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), -255, 128), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 48, 4)
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1550, Shock Particles]
type = Helper
trigger1 = AnimElemTime(7) >= 0
trigger1 = !(EnemyNear, SelfAnimExist(7696)) && !(EnemyNear, SelfAnimExist(9010))
trigger1 = !NumHelper(8155)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8155
ID = 8155
name = "Shock Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1550, Shock Particle Timer Set]
type = Null
trigger1 = AnimElemTime(7) >= 0
trigger1 = !(EnemyNear, SelfAnimExist(7696)) && !(EnemyNear, SelfAnimExist(9010))
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8155)
trigger1 = Cond(NumHelper(8155), Helper(8155), Cond(1, var(44) := 45, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 1550, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1550)
value = 51500
ID = 1550
ignoreHitPause = 1
persistent = 0

[State 1550, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1551


;Landing
[StateDef 1551]
type = S
anim = 1551
physics = N
moveType = I
velSet = 0,0

[State 1551, Remove Dark Smash Explod 2]
type = RemoveExplod
trigger1 = NumExplod(1555) && !Time
ID = 1555

[State 1551, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1551, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1551, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0
channel = 4

[State 1551, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<EX AIRBORNE DARK SMASH>==========================
[StateDef 1580]
type = A
physics = N
moveType = A
anim = 1550
ctrl = 0
sprPriority = 1
powerAdd = -500

[State 1580, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 0

[State 1580, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1580, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1580, EX Flash]
type = VarSet
trigger1 = 1
var(25) = 2

[State 1580, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = 14, -100
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1580, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0, 1000
channel = 1

[State 1580, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 730, 1 + 10 * (var(40) = 2)
channel = 0

[State 1580, Dark Smash Sound Effect 1]
type = PlaySnd
trigger1 = AnimElemTime(3) = 2
value = 1550, 1
channel = 3

[State 1580, Dark Smash Visual Effect 1]
type = Explod
trigger1 = AnimElemTime(3) = 2
anim = 1553
ID = 1553
sprPriority = 3
bindtime = -1
removeTime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1580, Remove Dark Smash Explod]
type = RemoveExplod
trigger1 = NumExplod(1553) && AnimElem = 7
ID = 1553

[State 1580, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 7
value = 4, 2 + 10 * (var(40) = 2)
channel = 0

[State 1580, Dark Smash Sound Effect 2]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1550, 2
channel = 3

[State 1580, Dark Smash Sound Effect 3]
type = PlaySnd
trigger1 = AnimElemTime(7) = 2
value = 1300, 2
channel = 3

[State 1580, Dark Smash Visual Effect 2]
type = Explod
trigger1 = AnimElemTime(7) = 2
anim = 1555
ID = 1555
sprPriority = 3
bindtime = -1
removeTime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1580, Dark Smash Projectile Shield]
type = Helper
trigger1 = AnimElemTime(7) = 2
helperType = Normal
stateNo = 1502
ID = 1502
name = "Projectile Shield"
posType = P1
pos = 0, 0
keyctrl = 1
ownpal = 1
facing = 1
persistent = 0
ignorehitpause = 1

[State 1580, PosFreeze]
type = PosFreeze
trigger1 = AnimElemTime(7) < 1

[State 1580, VelSet]
type = VelSet
trigger1 = AnimElemTime(7) = 1
x = 7.82122905028
y = 3.75

[State 1580, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(7) > 1
y = 0.09765625

[State 1580, HitDef]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = AnimElemTime(7) >= 0 && !MoveContact && !MoveReversed
ID = 1580
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 126 < 7, 7, fvar(11) * 126)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -3.35195530726, -7.34375
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -7.34375
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 10)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 65), var(36) := -58
palFX.time = ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 0, 45)
palFX.mul = ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 256, 192), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 256, 192), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 256, 192)
palFX.sinAdd = ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), -255, 128), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), -255, 128), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), -255, 128), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 48, 4)
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1580, Shock Particles]
type = Helper
trigger1 = AnimElemTime(7) >= 0
trigger1 = !(EnemyNear, SelfAnimExist(7696)) && !(EnemyNear, SelfAnimExist(9010))
trigger1 = !NumHelper(8155)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8155
ID = 8155
name = "Shock Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1580, Shock Particle Timer Set]
type = Null
trigger1 = AnimElemTime(7) >= 0
trigger1 = !(EnemyNear, SelfAnimExist(7696)) && !(EnemyNear, SelfAnimExist(9010))
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8155)
trigger1 = Cond(NumHelper(8155), Helper(8155), Cond(1, var(44) := 45, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 1580, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1550)
value = 51500
ID = 1550
ignoreHitPause = 1
persistent = 0

[State 1580, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1551



;========================<GRAVITY SMASH>=============================
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
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1600, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1600, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1620, ifElse(var(10) = 1, 1610, 1600))

[State 1600, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 1600, 0
channel = 0

[State 1600, Gravity Smash Sound Effect 1]
type = PlaySnd
trigger1 = !Time
value = 1550, 1
channel = 1

[State 1600, Gravity Smash Visual Effect]
type = Explod
trigger1 = !Time
anim = 1603
ID = 1603
sprPriority = 3
bindtime = -1
removeTime = -1
posType = P1
pos = -30, -80
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1600, Gravity Smash Projectile Shield]
type = Helper
trigger1 = AnimElemTime(4) = 0
helperType = Normal
stateNo = 1602
ID = 1602
name = "Projectile Shield"
posType = P1
pos = 0, 0
keyctrl = 1
ownpal = 1
facing = 1
persistent = 0
ignorehitpause = 1

[State 1600, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(35) < 0 && !MoveContact && !MoveReversed
ID = 1600
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 7
getPower = ifElse(!var(13), 144, 72)  * !var(20), 36  * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -3.35195530726, -7.34375
ground.cornerPush.velOff = 0
guard.velocity = -7.65065355984
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -7.34375
air.cornerPush.velOff = 0
airGuard.velocity = -5, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 10)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 10), var(36) := -98
palFX.time = ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 0, 45)
palFX.mul = ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 256, 192), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 256, 192), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 256, 192)
palFX.sinAdd = ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), -255, 128), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), -255, 128), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), -255, 128), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 48, 4)
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1600, Shock Particles]
type = Helper
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(35) < 0
trigger1 = !(EnemyNear, SelfAnimExist(7696)) && !(EnemyNear, SelfAnimExist(9010))
trigger1 = !NumHelper(8155)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8155
ID = 8155
name = "Shock Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1600, Shock Particle Timer Set]
type = Null
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(35) < 0
trigger1 = !(EnemyNear, SelfAnimExist(7696)) && !(EnemyNear, SelfAnimExist(9010))
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8155)
trigger1 = Cond(NumHelper(8155), Helper(8155), Cond(1, var(44) := 45, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 1600, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1600)
value = 51500
ID = 1600
ignoreHitPause = 1
persistent = 0

[State 1600, ChangeAnim]
type = ChangeAnim
triggerAll = AnimElemTime(8) > 0 && AnimElemTime(35) < 0
trigger1 = !NumExplod(90000201) && !var(10)
trigger2 = !NumExplod(90000211) && var(10) = 1
trigger3 = !NumExplod(90000221) && var(10) = 2
value = ifElse(var(10) = 2, 1620, ifElse(var(10) = 1, 1610, 1600))
elem = 35
ignoreHitPause = 1
persistent = 0

[State 1600, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 35
value = 1600, 1
channel = 0

[State 1600, Gravity Smash Sound Effect 2]
type = PlaySnd
trigger1 = AnimElemTime(36) = 0
value = 1550, 2
channel = 1

[State 1600, Gravity Smash Sound Effect 3]
type = PlaySnd
trigger1 = AnimElemTime(36) = 1
value = 1300, 2
channel = 1

[State 1600, Gravity Smash RemoveExplod]
type = RemoveExplod
trigger1 = NumExplod(1603)
trigger1 = AnimElem = 35
ID = 1603

[State 1600, Projectile]
type = Helper
trigger1 = AnimElemTime(36) = 1
helperType = Normal
stateNo = 1605
ID = 1605
name = "Gravity Smash Projectile"
posType = P1
pos = 75, -75
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1600, Width]
type = Width
trigger1 = AnimElemTime(36) = 0
value = 55, 0

[State 1600, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=====================<AIRBORNE GRAVITY SMASH>==========================
[StateDef 1650]
type = A
physics = N
moveType = A
anim = 1650
ctrl = 0
sprPriority = 1
powerAdd = 72 * !var(20)

[State 1650, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1650, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1650, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1670, ifElse(var(10) = 1, 1660, 1650))

[State 1650, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 1600, 0
channel = 0

[State 1650, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1600, 1
channel = 0

[State 1650, Gravity Smash Sound Effect 1]
type = PlaySnd
trigger1 = !Time
value = 1550, 1
channel = 1

[State 1650, Gravity Smash Sound Effect 2]
type = PlaySnd
trigger1 = AnimElem = 8
value = 1550, 2
channel = 1

[State 1650, Gravity Smash Sound Effect 3]
type = PlaySnd
trigger1 = AnimElemTime(8) = 1
value = 1300, 2
channel = 1

[State 1650, Gravity Smash Visual Effect]
type = Explod
trigger1 = !Time
anim = 1603
ID = 1653
sprPriority = 3
bindtime = -1
removeTime = -1
posType = P1
pos = -5, -82
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1650, Remove Gravity Smash Explod]
type = RemoveExplod
trigger1 = NumExplod(1653)
trigger1 = AnimElemTime(7) = 0
ID = 1653

[State 1650, Gravity Smash Projectile Shield]
type = Helper
trigger1 = AnimElemTime(4) = 2
helperType = Normal
stateNo = 1602
ID = 1602
name = "Projectile Shield"
posType = P1
pos = 0, 0
keyctrl = 1
ownpal = 1
facing = 1
persistent = 0
ignorehitpause = 1

[State 1650, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElemTime(4) >= 2 && AnimElemTime(7) < 0 && !MoveContact && !MoveReversed
ID = 1650
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36  * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -3.35195530726, -7.34375
ground.cornerPush.velOff = 0
guard.velocity = -7.65065355984
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -7.34375
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 10)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 10), var(36) := -82
palFX.time = ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 0, 45)
palFX.mul = ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 256, 192), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 256, 192), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 256, 192)
palFX.sinAdd = ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), -255, 128), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), -255, 128), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), -255, 128), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 48, 4)
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1650, Shock Particles]
type = Helper
trigger1 = AnimElemTime(4) >= 2 && AnimElemTime(7) < 0
trigger1 = !(EnemyNear, SelfAnimExist(7696)) && !(EnemyNear, SelfAnimExist(9010))
trigger1 = !NumHelper(8155)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8155
ID = 8155
name = "Shock Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1650, Shock Particle Timer Set]
type = Null
trigger1 = AnimElemTime(4) >= 2 && AnimElemTime(7) < 0
trigger1 = !(EnemyNear, SelfAnimExist(7696)) && !(EnemyNear, SelfAnimExist(9010))
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8155)
trigger1 = Cond(NumHelper(8155), Helper(8155), Cond(1, var(44) := 45, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 1650, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1650)
value = 51500
ID = 1650
ignoreHitPause = 1
persistent = 0

[State 1650, PosFreeze]
type = PosFreeze
trigger1 = AnimElemTime(8) < 1

[State 1650, VelSet]
type = VelSet
trigger1 = AnimElemTime(8) = 1
x = 0
y = 0

[State 1650, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(8) > 1
y = 0.4638671875

[State 1650, Projectile]
type = Helper
trigger1 = AnimElemTime(8) = 1
helperType = Normal
stateNo = 1605
ID = 1655
name = "Gravity Smash Projectile"
posType = P1
pos = 0, -98
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1650, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1551



;========================<VANISHING RUSH>=============================
[StateDef 1700]
type = S
physics = N
moveType = A
anim = 1700
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1700, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1700, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H), 2, ifElse(Random < 500, 1, 0))

[State 1700, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1720, ifElse(var(10) = 1, 1710, 1700))

[State 1700, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 0
channel = 0

[State 1700, Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1700, 1
channel = 1

[State 1700, Vanishing Rush Visual Effect]
type = Explod
trigger1 = !Time
anim = 1705
ID = 1705
sprPriority = 0
bindtime = -1
removeTime = -1
posType = P1
pos = 0, 0
scale = 1, 1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1700, Vanishing Rush RemoveExplod]
type = RemoveExplod
trigger1 = NumExplod(1705)
trigger1 = AnimElem = 3
ID = 1705

[State 1700, Vanishing Rush Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8103
ID = 8100
name = "Vanishing Rush Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 1700, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 22.3463687151

[State 1700, VelSet]
type = VelAdd
trigger1 = AnimElemTime(4) > 0 && AnimElemTime(10) < 0
x = -0.17458100558

[State 1700, VelSet]
type = VelSet
trigger1 = AnimElem = 10
x = 0

[State 1700, Stopping Sound]
type = PlaySnd
trigger1 = AnimElem = 10
value = 101,0

[State 1700, Skid Dust]
type = Explod
trigger1 = AnimElem = 10
anim = 8104
sprPriority = 3
posType = P1
pos = 0,0
vel = 0,0
scale = 0.5,0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 1700, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(10) < 0
value = 0
ignoreHitPause = 1

[State 1700, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(10) < 0
value = SCA
time = 1

[State 1700, VarSet: MoveContact Tracker]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 1700, VarAdd: Add 1 On Contact]
type = VarAdd
trigger1 = MoveContact = 1
var(14) = 1

[State 1700, HitDef (First Hits)]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(9) < 0 && var(14) < 5
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = 2, 12
guard.pauseTime = 2, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 10
ground.slideTime = 10
guard.hitTime = 10
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -5.00836530482
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -10
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := ceil(P2Dist x - (2 * (Random % 12)))), var(36) := ((Enemy, const(size.mid.pos.y)) - (2 * (Random % 12)))
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1700, HitDef (Last Hit)]
type = HitDef
triggerAll = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(9) < 0 && (var(14) >= 5 && var(14) < 6)
trigger2 = AnimElem = 9 && var(14) < 6
ID = 1700
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 84, ifElse(var(10) = 1, 70, 56)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 84, ifElse(var(10) = 1, 70, 56)))), 7
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = 2, 24
guard.pauseTime = 2, 24
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -3.35195530726, -10
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -10
air.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := ceil(P2Dist x - (2 * (Random % 12)))), var(36) := ((Enemy, const(size.mid.pos.y)) - (2 * (Random % 12)))
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1700, Juggle Reset]
type = VarSet
trigger1 = var(10) = 2
trigger1 = MoveHit && !var(27) && NumTarget(1700)
var(15) = 0

[State 1700, Vanishing Rush Juggle Flag]
type = VarAdd
trigger1 = var(10) = 2
trigger1 = MoveHit && NumTarget(1700)
var(27) = 1
persistent = 0

[State 1700, Juggle Flag]
type = VarSet
trigger1 = var(10) = 2
trigger1 = var(27) = 2
var(16) = 1

[State 1700, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(10) >= 0
moveType = I

[State 1700, Special Turn]
type = ChangeState
trigger1 = AnimElem = 15 && (facing = Enemy, facing)
value = 1701

[State 1700, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Special Turn
[StateDef 1701]
type = S
anim = 1701
physics = N
moveType = I
velSet = 0, 0

[State 1701, Turn]
type = Turn
trigger1 = !Time

[State 1701, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<BEADS DESTRUCTION>=============================
[StateDef 1800]
type = S
physics = N
moveType = A
anim = 1800
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72  * !var(20)
faceP2 = 1

[State 1800, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1800, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H), 2, 0)

[State 1800, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1820, ifElse(var(10) = 1, 1810, 1800))

[State 1800, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 4, 0
channel = 0

[State 1800, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 12
value = 4, 2
channel = 0

[State 1800, Voice 3]
type = PlaySnd
trigger1 = AnimElem = 22 && var(10) = 2
value = 1800, 0
channel = 0

[State 1800, Woosh 1]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 9
trigger3 = AnimElem = 12
value = 1, 5
channel = 1

[State 1800, Woosh 2]
type = PlaySnd
trigger1 = AnimElem = 22 && var(10) = 2
value = 1, 2
channel = 1

[State 1800, Beads Destruction Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 10
trigger3 = AnimElem = 13
trigger4 = AnimElem = 23 && var(10) = 2
value = 1800, 1
channel = 3

[State 1800, Beads Destruction Visual Effect 1]
type = Explod
trigger1 = AnimElem = 5
anim = 1805
ID = 1805
sprPriority = 3
posType = P1
pos = 20, 10
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 1800, Beads Destruction Visual Effect 2]
type = Explod
trigger1 = AnimElem = 10
anim = 1806
ID = 1805
sprPriority = 3
posType = P1
pos = 20, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 1800, Beads Destruction Visual Effect 3]
type = Explod
trigger1 = AnimElem = 13
anim = 1807
ID = 1805
sprPriority = 3
posType = P1
pos = 35, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 1800, Beads Destruction Visual Effect 4]
type = Explod
trigger1 = AnimElem = 23
anim = 1806
ID = 1805
sprPriority = 3
posType = P1
pos = 45, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 1800, NotHitBy]
type = NotHitBy
trigger1 = !var(10)
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(7) < 0
value = SCA
time = 1

[State 1800, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = ifElse(var(10) = 2, 14.5251396648, ifElse(var(10) = 1, 12.2905027933, 11.1731843575))

[State 1800, VelSet]
type = VelAdd
trigger1 = AnimElemTime(4) > 0 && AnimElemTime(7) < 0
x = -0.34916201117

[State 1800, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = 0

[State 1800, PosAdd]
type = PosAdd
trigger1 = AnimElem = 8
trigger2 = AnimElem = 11
trigger3 = AnimElem = 20 && var(10) = 2
x = 11.1731843575

[State 1800, Spark XY]
type = Null
trigger1 = AnimElem = 5
trigger1 = var(35) := 85 || var(36) := -80
trigger2 = AnimElem = 10
trigger2 = var(35) := 20 || var(36) := -60
trigger3 = AnimElem = 13
trigger3 = var(35) := 25 || var(36) := -110
trigger4 = AnimElem = 23
trigger4 = var(35) := 50 || var(36) := -40

[State 1800, HitDef: First Hit (Light/Medium)]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 5
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * ifElse(var(10) = 2, 49, ifElse(var(10) = 1, 63, 56)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 49, ifElse(var(10) = 1, 63, 56)))), 7
getPower = ifElse(!var(13), 144, 72)  * !var(20), 36  * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 6, 12)
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse((AnimElem = 13), -1.11731843575, 0), ifElse((AnimElem = 13), ifElse(var(10) = 2, -7.5, -10), 0)
ground.cornerPush.velOff = 0
guard.velocity = ifElse((AnimElem = 13), -5.00836530482, 0)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.5
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = ifElse((AnimElem = 13), 1, 0)
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8018)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1800, HitDef: Second && Third Hit (Light/Medium)]
type = HitDef
triggerAll = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 10
trigger2 = AnimElem = 13
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = ifElse(!var(13), 144, 72)  * !var(20), 36  * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 6, 12)
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse((AnimElem = 13), -1.11731843575, 0), ifElse((AnimElem = 13), ifElse(var(10) = 2, -7.5, -10), 0)
ground.cornerPush.velOff = 0
guard.velocity = ifElse((AnimElem = 13), -5.00836530482, 0)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -7.5
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = ifElse((AnimElem = 13), 1, 0)
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8018)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1800, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(13) >= 0 && AnimElemTime(14) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = ifElse(var(10) = 2, 1820, ifElse(var(10) = 1, 1810, 1800))
elem = 14
ignoreHitPause = 1

[State 1800, HitDef (Heavy)]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20)) && var(10) = 2
trigger1 = AnimElem = 23
ID = 1800
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = ifElse(!var(13), 144, 72)  * !var(20), 36  * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -6.70391061453, -7.5
ground.cornerPush.velOff = 0
guard.velocity = -5.00836530482
guard.cornerPush.velOff = 0
air.velocity = -6.70391061453, -7.5
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8018)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10, -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1800, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(28) && NumTarget(1800)
var(15) = 0

[State 1800, Beads Destruction Juggle Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(1800)
var(28) = 1
persistent = 0

[State 1800, Juggle Flag]
type = VarSet
trigger1 = var(28) = 2
var(16) = 1

[State 1800, TargetDrop]
type = TargetDrop
trigger1 = NumTarget(1800) > 1
ID = 1800
keepOne = 1
excludeID = 1800
ignoreHitPause = 1

[State 1800, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1800)
trigger1 = !(Target(1800), Time)
value = 1815
ID = 1800
ignoreHitPause = 1

[State 1800, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(14) >= 0 && var(10) != 2
trigger2 = AnimElemTime(24) >= 0 && var(10) = 2
moveType = I

[State 1800, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<HIT BY HEAVY BEADS DESTRUCTION>=============================
;Being Launched
[StateDef 1815]
type = A
moveType = H
physics = N
velSet = 0, 0

[State 1815, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 5012

[State 1815, End]
type = ChangeState
trigger1 = HitShakeOver
value = 1816


;Heading Towards Wall
[StateDef 1816]
type = A
moveType = H
physics = N

[State 1816, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

[State 1816, Gravity]
type = VelAdd
trigger1 = 1
y = GetHitVar(yAccel)

[State 1816, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0,1
ignoreHitPause = 1

[State 1816, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 1816, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && SelfAnimExist(5900)
value = 5900

[State 1816, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && !SelfAnimExist(5900)
value = 5030

[State 1816, Bounce Off Wall]
type = ChangeState
trigger1 = BackEdgeBodyDist <= 10 || FrontEdgeBodyDist <= 10
value = 1817

[State 1816, End]
type = SelfState
trigger1 = vel y > 0 && pos y >= 0
value = 5100


;Impacting Wall
[StateDef 1817]
type = A
moveType = H
physics = N

[State 1817, Turn]
type = Turn
trigger1 = !Time
trigger1 = FrontEdgeDist < BackEdgeDist

[State 1817, PosSet]
type = PosSet
trigger1 = 1
x = -160 * Facing

[State 1817, PosFreeze]
type = PosFreeze
trigger1 = 1
x = 1
y = 1

[State 1817, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0, 1
ignoreHitPause = 1

[State 1817, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1
ignoreHitPause = 1

[State 1817, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && SelfAnimExist(5901)
value = 5901

[State 1817, ChangeAnim]
type = ChangeAnim
trigger1 = !SelfAnimExist(5901)
value = 5000

[State 1817, Impact Sound]
type = PlaySnd
trigger1 = !Time
value = F7, 0

[State 1817, Hitting the Wall FX]
type = Explod
trigger1 = !Time
anim = F72
pos = 0, floor(ScreenPos Y) - 50
posType = Back
sprPriority = 3

[State 1817, End]
type = ChangeState
trigger1 = Time >= 4
value = 1818


;Bouncing Off Wall
[Statedef 1818]
type = A
moveType = H
physics = N

[State 1818, Turn]
type = Turn
trigger1 = !Time && !SelfAnimExist(5902)

[State 1818, Gravity]
type = VelAdd
trigger1 = 1
y = 0.5126953125

[State 1818, VelSet]
type = VelSet
trigger1 = !Time
x = ifElse(SelfAnimExist(5902), 2.23463687151, -2.23463687151)
y = -9.0625

[State 1818, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && SelfAnimExist(5902)
value = 5902

[State 1818, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && !SelfAnimExist(5902)
value = ifElse(SelfAnimExist(5051), 5051, 5030)

[State 1818, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030 && !AnimTime
value = 5050

[State 1818, ChangeAnim]
type = ChangeAnim
trigger1 = vel y > -3 && Anim = 5051 && SelfAnimExist(5061)
value = 5061

[State 1818, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0, 0
ignoreHitPause = 1

[State 1818, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 1818, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = Vel Y > 0 && Pos Y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 1818, End]
type = SelfState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 5100



;========================<RUGAL EXECUTION>=============================
;Attempt
[StateDef 1900]
type = S
physics = N
moveType = A
anim = 1900
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 1900, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1900, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(((EnemyNear, GetHitVar(HitTime) < 20)), 2, ifElse((EnemyNear, GetHitVar(HitTime) < 18), 1, 0))

[State 1900, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1902, ifElse(var(10) = 1, 1901, 1900))

[State 1900, Voice]
type = PlaySnd
trigger1 = AnimElemTime(6) = 7
value = 4, 10
channel = 0

[State 1900, Dash Sound]
type = PlaySnd
trigger1 = AnimElemTime(6) = 8
value = 11, 0

[State 1900, Rugal Execution Dust Helper]
type = Helper
trigger1 = AnimElem = 7
helperType = Normal
stateNo = 8103
ID = 8100
name = "Rugal Execution Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 1900, Rugal Execution Visual Effect 1]
type = Explod
trigger1 = AnimElemTime(7) = 0
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

[State 1900, Rugal Execution Visual Effect 2]
type = Explod
trigger1 = AnimElemTime(7) = 6
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

[State 1900, PosAdd]
type = PosAdd
trigger1 = AnimElem = 7
x = 50.0558659218

[State 1900, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = ifElse(var(10) = 2, 11.1731843575, ifElse(var(10) = 1, 9.49720670391, 7.82122905028))

[State 1900, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = 0

[State 1900, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 7 && !var(37)
attr = S, ST
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
sparkXY = -10 + 0 * (var(35) := 72), var(36) := -60
numHits = 0
p1StateNo = 1910

[State 1900, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 1900, Voice (Missed)]
type = PlaySnd
trigger1 = AnimElem = 8
value = 800, 10
channel = 0

[State 1900, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1, 2
channel = 1

[State 1900, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Throw
[Statedef 1910]
type = S
physics = N
moveType = A
anim = 1910
ctrl = 0
velSet = 0,0
sprPriority = 0

[State 1910, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 1910, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 1915

[State 1910, Width]
type = Width
trigger1 = AnimElemTime(32) < 0
edge = 50, 0

[State 1910, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) < 0
pos = 47, -88

[State 1910, TargetBind 2]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
trigger2 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
trigger3 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
trigger4 = AnimElemTime(11) >= 0 && AnimElemTime(12) < 0
trigger5 = AnimElemTime(14) >= 0 && AnimElemTime(15) < 0
trigger6 = AnimElemTime(17) >= 0 && AnimElemTime(18) < 0
trigger7 = AnimElemTime(20) >= 0 && AnimElemTime(21) < 0
trigger8 = AnimElemTime(23) >= 0 && AnimElemTime(24) < 0
trigger9 = AnimElemTime(26) >= 0 && AnimElemTime(27) < 0
trigger10 = AnimElemTime(29) >= 0 && AnimElemTime(30) < 0
pos = 54, -45

[State 1910, TargetBind 3]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
trigger2 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
trigger3 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 0
trigger4 = AnimElemTime(12) >= 0 && AnimElemTime(13) < 0
trigger5 = AnimElemTime(10) >= 0 && AnimElemTime(11) < 0
trigger6 = AnimElemTime(18) >= 0 && AnimElemTime(19) < 0
trigger7 = AnimElemTime(21) >= 0 && AnimElemTime(22) < 0
trigger8 = AnimElemTime(24) >= 0 && AnimElemTime(25) < 0
trigger9 = AnimElemTime(27) >= 0 && AnimElemTime(28) < 0
trigger10 = AnimElemTime(30) >= 0 && AnimElemTime(31) < 0
pos = 54, -47

[State 1910, TargetBind 4]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
trigger2 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
trigger3 = AnimElemTime(10) >= 0 && AnimElemTime(11) < 0
trigger4 = AnimElemTime(13) >= 0 && AnimElemTime(14) < 0
trigger5 = AnimElemTime(16) >= 0 && AnimElemTime(17) < 0
trigger6 = AnimElemTime(19) >= 0 && AnimElemTime(20) < 0
trigger7 = AnimElemTime(22) >= 0 && AnimElemTime(23) < 0
trigger8 = AnimElemTime(25) >= 0 && AnimElemTime(26) < 0
trigger9 = AnimElemTime(28) >= 0 && AnimElemTime(29) < 0
trigger10 = AnimElemTime(31) >= 0 && AnimElemTime(32) < 0
pos = 54, -49

[State 1910, Rugal Execution Effect]
type = Explod
trigger1 = AnimElem = 3
anim = 1911
ID = 1911
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

[State 1910, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 32
value = floor(ifElse(140 * fvar(11) < 7, -7, -140 * fvar(11)))

[State 1910, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 32
value = 36

[State 1910, Power]
type = PowerAdd
trigger1 = NumTarget && AnimElem = 32
value = 72

[State 1910, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 32
value = 1

[State 1910, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElem = 32
var(13) = 1

[State 1910, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 32
var(15) = 1
ignoreHitPause = 1

[State 1910, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 32
value = 1916

[State 1910, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = NumTarget && AnimElem = 32
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1910, Flame Particle Timer Set]
type = Null
trigger1 = NumTarget && AnimElem = 32
trigger1 = NumHelper(8150)
trigger1 = Cond(NumHelper(8150), Helper(8150), Cond(1, var(44) := 30, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 1910, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 730, 1 + 10 * (var(40) = 2)
channel = 0

[State 1910, Sound Effect 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1910, 0
channel = 1

[State 1910, Sound Effect 2]
type = PlaySnd
trigger1 = AnimElemTime(31) = 2
value = 1910, 1
channel = 1

[State 1910, Hit Sound]
type = PlaySnd
trigger1 = AnimElemTime(32) = 0
value = 2, 1910
channel = 2

[State 1910, Voice 2]
type = PlaySnd
trigger1 = AnimElemTime(32) = 0
value = 4, 0 + 10 * (var(40) = 2)
channel = 0

[State 1910, Remove Rugal Execution Explod]
type = RemoveExplod
trigger1 = NumExplod(1911) && AnimElem = 32
ID = 1911

[State 1910, Explosion]
type = Explod
trigger1 = AnimElem = 32
anim = 8030
sprPriority = 4
scale = 0.5, 0.5
posType = P1
pos = 54, -138
facing = 1
vFacing = 1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
persistent = 0

[State 1910, EnvShake]
type = EnvShake
trigger1 = AnimElem = 32
time = 37
ampl = -4
freq = 120

[State 1910, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<RUGAL EXECUTION (TARGET)>==========
;Being Thrown
[StateDef 1915]
type = A
moveType = H
physics = N
velSet = 0, 0
sprPriority = 3

[State 1915, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1915

[State 1915, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 1915, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0, 0
ignoreHitPause = 1


;After Throw
[StateDef 1916]
type = A
physics = N
movetype = H
ctrl = 0
velSet = -4.46927374302, -6.5625
sprPriority = 0

[State 3316, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5050

[State 1916, PalFX]
type = PalFX
trigger1 = !Time
time = 30
mul = 128,128,128
sinAdd = 96,96,96,4

[State 1916, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,1
ignoreHitPause = 1

[State 1916, VelAdd]
type = VelAdd
Trigger1 = 1
y = 0.5126953125

[State 1916, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 1916, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 1916, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100



;========================<GOD LANE>=============================
[StateDef 2000]
type = S
physics = N
moveType = I
anim = 2000
ctrl = 0
velSet = 0,0
sprPriority = 1
faceP2 = 1

[State 2000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz" || command = "y" || command = "rlsy" || command = "x" || command = "rlsx"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225) || NumExplod(90000210) || NumExplod(90000215) || NumExplod(90000200) || NumExplod(90000205)), 1, 0)

[State 2000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2Dist x > 225), 1, 0)

[State 2000, Voice]
type = PlaySnd
trigger1 = !Time
value = 1200, 0 + 10 * (var(40) = 2)
channel = 0

[State 2000, Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 5
value = 2000, 0
channel = 1

[State 2000, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA, AA, AP, AT
time = 1

[State 2000, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(6) >= 0
value = 0

[State 2000, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = ifElse(var(10), 12.8491620112, 8.93854748603)

[State 2000, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(6) > 0
x = ifElse(vel x >= 0, -0.29296875, 0.29296875)

[State 2000, Turn]
type = Turn
trigger1 = AnimElemTime(6) >= 0 && (facing = Enemy, facing)

[State 2000, Movement AfterImage]
type = AfterImage
trigger1 = !Time
time = 2
timeGap = 1
frameGap = 10
length = 21
palBright = 0, 0, 0
palAdd = 0, 0, 0
palMul = 0.9, 0.9, 0.9
palContrast = 160, 160, 160
palPostBright = 0, 0, 0
trans = Add1

[State 2000, AfterImage Off]
type = AfterImage
trigger1 = Time = 41 && !var(10)
trigger2 = Time = 53 && var(10)
trigger3 = AnimElemTime(6) > 2 && vel x < 0 && BackEdgeBodyDist <= 0
time = 0
length = 1

[State 2000, Landing Sound]
type = PlaySnd
trigger1 = Time = 41 && !var(10)
trigger2 = Time = 53 && var(10)
trigger3 = AnimElemTime(6) > 2 && vel x < 0 && BackEdgeBodyDist <= 0
value = 52, 0

[State 2000, Landing Dust Explod]
type = Explod
trigger1 = Time = 41 && !var(10)
trigger2 = Time = 53 && var(10)
trigger3 = AnimElemTime(6) > 2 && vel x > 0 && Frontedgebodydist <= 0
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 2000, ChangeState]
type = ChangeState
trigger1 = Time = 41 && !var(10)
trigger2 = Time = 53 && var(10)
trigger3 = AnimElemTime(6) > 2 && vel x > 0 && Frontedgebodydist <= 0
value = 0
ctrl = 1



;========================<GOD LANE>=============================
[StateDef 2010]
type = S
physics = N
moveType = I
anim = 2000
ctrl = 0
velSet = 0,0
sprPriority = 1
faceP2 = 1

[State 2010, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "z" || command = "rlsz" || command = "y" || command = "rlsy" || command = "x" || command = "rlsx"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225) || NumExplod(90000210) || NumExplod(90000215) || NumExplod(90000200) || NumExplod(90000205)), 1, 0)

[State 2010, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2Dist x > 225), 1, 0)

[State 2010, Voice]
type = PlaySnd
trigger1 = !Time
value = 1200, 0 + 10 * (var(40) = 2)
channel = 0

[State 2010, Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 5
value = 2000, 0
channel = 1

[State 2010, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA, AA, AP, AT
time = 1

[State 2010, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(6) >= 0
value = 0

[State 2010, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = ifElse(var(10), -12.8491620112, -8.93854748603)

[State 2010, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(6) > 0
x = ifElse(vel x >= 0, -0.29296875, 0.29296875)

[State 2010, Turn]
type = Turn
trigger1 = AnimElemTime(6) >= 0 && (facing = Enemy, facing)

[State 2010, Movement AfterImage]
type = AfterImage
trigger1 = !Time
time = 2
timeGap = 1
frameGap = 10
length = 21
palBright = 0, 0, 0
palAdd = 0, 0, 0
palMul = 0.9, 0.9, 0.9
palContrast = 160, 160, 160
palPostBright = 0, 0, 0
trans = Add1

[State 2010, AfterImage Off]
type = AfterImage
trigger1 = Time = 41 && !var(10)
trigger2 = Time = 53 && var(10)
trigger3 = AnimElemTime(6) > 2 && vel x < 0 && BackEdgeBodyDist <= 0
time = 0
length = 1

[State 2010, Landing Sound]
type = PlaySnd
trigger1 = Time = 41 && !var(10)
trigger2 = Time = 53 && var(10)
trigger3 = AnimElemTime(6) > 2 && vel x < 0 && BackEdgeBodyDist <= 0
value = 52, 0

[State 2010, Landing Dust Explod]
type = Explod
trigger1 = Time = 41 && !var(10)
trigger2 = Time = 53 && var(10)
trigger3 = AnimElemTime(6) > 2 && vel x < 0 && BackEdgeBodyDist <= 0
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 2010, ChangeState]
type = ChangeState
trigger1 = Time = 41 && !var(10)
trigger2 = Time = 53 && var(10)
trigger3 = AnimElemTime(6) > 2 && vel x < 0 && BackEdgeBodyDist <= 0
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
value = 1100, 0 + 10 * (var(40) = 2)
channel = 0

[State 2900, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 5
channel = 1

[State 2900, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 40,0
channel = 4

[State 2900, Genocide Cutter Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1100, 1
channel = 3

[State 2900, Genocide Cutter Effect]
type = Explod
trigger1 = AnimElem = 3
anim = 1105
ID = 1105
sprPriority = 3
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
ignoreHitPause = 0

[State 2900, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 2900, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Genocide Cutter Dust"
posType = P1
ownPal = 1

[State 2900, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 0.83798882681
y = -8.75

[State 2900, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 0
y = 0.5859375

[State 2900, Ground Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getPower = 0,0
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
ground.velocity = -5.58659217877, -5.3125
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.3125
air.cornerPush.velOff = 0
yAccel = 0.5859375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8018)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 33), var(36) := -33
palFX.time = 37
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2900, Air Hit]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = AnimElem = 4 && !MoveContact && !MoveReversed
trigger2 = AnimElem = 5 && !MoveContact && !MoveReversed
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getpower = 0,0
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
ground.velocity = -5.58659217877, -5.3125
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.3125
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.5859375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8018)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 45), var(36) := -78
palFX.time = 37
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2900, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 2900, End]
type = ChangeState
trigger1 = AnimElemTime(4) > 0
trigger1 = pos y > -vel y
value = 2901


;Landing
[StateDef 2901]
type = S
anim = 47
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
value = 52,0
channel = 4

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
trigger1 = AnimElemTime(4) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2910, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, ifElse(Random < 500, 1, 2) + 10 * (var(40) = 2)
channel = 0

[State 2910, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 5
channel = 1

[State 2910, HitDef]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5 && !MoveContact && !MoveReversed
attr = C, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getPower = 0,0
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
ground.velocity = -5.58659217877, -5.3125
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.3125
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
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -2
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
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 2910
elem = 5
ignoreHitPause = 1

[State 2910, StateTypeSet: Idle]
type = StateTypeset
trigger1= AnimElemTime(6) >= 0
moveType = I

[State 2910, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1