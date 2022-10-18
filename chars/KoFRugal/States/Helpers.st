; _________________________________________________
;| Rugal Bernstein by KarmaCharmeleon		 |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================<HELPER STATES>========================================
;==============================================================================================

;====================<PARRY HELPER>=========================
[StateDef 765]
type = A
physics = N
moveType = I
anim = ifElse(Root, StateType = C, 766, ifElse(Root, StateType = A, 767, 765))
velSet = 0,0
ctrl = 0

[State 765, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 765, BindToRoot]
type = BindToRoot
trigger1 = 1
time = -1

[State 765, Change to Crouching]
type = ChangeAnim
triggerAll = !Time
trigger1 = !(Root, AILevel) && ifElse(Root, NumExplod(92828282) || Root, NumExplod(92468246), Root, command = "up", Root, command = "down")
trigger2 = Root, AILevel && (Root, StateType != A) && P2StateType = C
value = 766

[State 765, Change to Standing / Jumping]
type = ChangeAnim
triggerAll = !Time
trigger1 = !Root, NumExplod(94646464) && !Root, NumExplod(92468246)
trigger1 = !(Root, AILevel) && ifElse(Root, P2dist x >= 0, Root, command = "fwd", Root, command = "back")
trigger2 = Root, NumExplod(94646464) || Root, NumExplod(92468246)
trigger2 = !(Root, AILevel) && ifElse(Root, P2dist x >= 0, Root, command = "back", Root, command = "fwd")
trigger3 = Root, AILevel && Anim != 766
value = ifElse((Root, StateType = A), 767, 765)

[State 765, Change to Standing / Jumping]
type = ChangeAnim
trigger1 = Anim = 765 || Anim = 767
value = ifElse((Root, StateType = A), 767, 765)

[State 765, Disable]
type = VarSet
trigger1 = Time >= ifElse((Root, StateType = A), 7, 8)
trigger2 = Facing != (Root, Facing)
trigger3 = !(Root, ctrl)
trigger3 = (Root, StateNo != [760,762]) && (Root, StateNo != 5120)
var(0) = 1

[State 765, Disable]
type = VarSet
triggerAll = !(Root, AILevel)
triggerAll = !Root, NumExplod(92828282) && !Root, NumExplod(94646464) && !Root, NumExplod(92468246)
trigger1 = ifElse(Root, P2dist x >= 0, Root, command = "holdback", Root, command = "holdfwd")
trigger2 = Time < 4 && (ifElse(Root, P2dist x >= 0, Root, command = "holdfwd", Root, command = "holdback") + Root, command = "holddown") > 1
trigger3 = Time >= 4 && (ifElse(Root, P2dist x >= 0, Root, command = "holdfwd", Root, command = "holdback") || Root, command = "holddown")
trigger4 = Time >= 1 && (((Anim = 765 || Anim = 767) && ifElse(Root, P2dist x >= 0, Root, command = "fwd", Root, command = "back")) || (Anim = 766 && Root, command = "down"))
var(0) = 1

[State 765, Disable (Reverse Commands)]
type = VarSet
triggerAll = !(Root, AILevel)
triggerAll = Root, NumExplod(94646464) || Root, NumExplod(92468246)
trigger1 = ifElse(Root, P2dist x >= 0, Root, command = "holdfwd", Root, command = "holdback")
trigger2 = Time < 4 && (ifElse(Root, P2dist x >= 0, Root, command = "holdback", Root, command = "holdfwd") + ifElse(Root, NumExplod(92468246), Root, command = "holdup", Root, command = "holddown")) > 1
trigger3 = Time >= 4 && (ifElse(Root, P2dist x >= 0, Root, command = "holdback", Root, command = "holdfwd") || ifElse(Root, NumExplod(92468246), Root, command = "holdup", Root, command = "holddown"))
trigger4 = Time >= 1 && (((Anim = 765 || Anim = 767) && ifElse(Root, P2dist x >= 0, Root, command = "back", Root, command = "fwd")) || (Anim = 766 && ifElse(Root, NumExplod(92468246), Root, command = "up", Root, command = "down")))
var(0) = 1

[State 765, Disable (Reverse Up/Down only)]
type = VarSet
triggerAll = !(Root, AILevel)
triggerAll = Root, NumExplod(92828282) && !Root, NumExplod(94646464) && !Root, NumExplod(92468246)
trigger1 = ifElse(Root, P2dist x >= 0, Root, command = "holdback", Root, command = "holdfwd")
trigger2 = Time < 4 && (ifElse(Root, P2dist x >= 0, Root, command = "holdfwd", Root, command = "holdback") + Root, command = "holdup") > 1
trigger3 = Time >= 4 && (ifElse(Root, P2dist x >= 0, Root, command = "holdfwd", Root, command = "holdback") || Root, command = "holdup")
trigger4 = Time >= 1 && (((Anim = 765 || Anim = 767) && ifElse(Root, P2dist x >= 0, Root, command = "fwd", Root, command = "back")) || (Anim = 766 && Root, command = "up"))
var(0) = 1

[State 765, Disable]
type = ChangeAnim
trigger1 = var(0) = 1
value = 1

[State 765, Standing/Air]
type = ReversalDef
trigger1 = !var(0) && (Anim = 765 || Anim = 767)
trigger1 = (Root, StateNo != 5120) || !(Root, AnimTime)
reversal.attr = SCA,AA
p1StateNo = 766
pauseTime = 0,0
sparkNo = -1
numHits = 0

[State 765, Crouching]
type = ReversalDef
trigger1 = !var(0) && Anim = 766
reversal.attr = SC,AA
p1StateNo = 766
pauseTime = 0,0
sparkNo = -1
numHits = 0

[State 765, Disable]
type = ReversalDef
trigger1 = var(0) = 1
reversal.attr =
pauseTime = 0,0
sparkNo = -1
numHits = 0

[State 765, End]
type = DestroySelf
trigger1 = Time >= 18
trigger2 = (Root, MoveType != I)
trigger3 = !(Root, ctrl) && (Root, StateNo != [760,762]) && (Root, StateNo != 5120)
trigger4 = (Root, StateNo = [760,762]) && (Root, Time <= 1)


;Success
[StateDef 766]
moveType = I
ctrl = 0

[State 766, Disable]
type = VarSet
trigger1 = 1
var(0) = 1

[State 766, End]
type = DestroySelf
trigger1 = Root, StateNo = [760,762]
trigger2 = Time >= 2



;====================<REPPUKEN PROJECTILE>=========================
[StateDef 1005]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3

[State 1005, Projectile reflection compatibility detection]
type = VarSet
trigger1 = 1
sysvar(0) = 131072

[State 1005, Set reflected StateNo]
type = VarSet
trigger1 = 1
sysvar(1) = 1015

[State 1005, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 1007
ignoreHitPause = 1

[State 1005, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1005, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1005
value = 1005

[State 1005, Button Detect]
type = VarSet
trigger1 = !Time && !PrevStateNo
var(10) = Root, var(10)

[State 1005, VelSet]
type = VelSet
trigger1 = 1
x = ifElse(var(10) = 3, 7.82122905028, ifElse(var(10) = 2, 6.70391061453, ifElse(var(10) = 1, 5.58659217877, 4.46927374302)))

[State 1005, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1005, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1005, Projectile Flag Increment]
type = ParentVarAdd
trigger1 = !Time
var(39) = 1

[State 1005, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1005, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1005, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 || Root, var(20))
trigger1 = var(10) < 3
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 70, ifElse(var(10), 63, 56)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 70, ifElse(var(10), 63, 56)))), 7
getPower = ifElse(!(Root, var(13)), 144, 72) * !(Root, var(20)), 36 * !(Root, var(20))
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 0, ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -8.44086725359, 0
ground.cornerPush.velOff = 0
guard.velocity = -8.44086725359
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 22 + ifElse(Root, var(20), 6, 12)
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1005, EX HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && Root, var(15) < (1 + Root, var(41))
trigger1 = var(10) = 3
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 0, ifElse((Root, var(20)), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -5.58659217877, -5.78125
ground.cornerPush.velOff = 0
guard.velocity = -8.44086725359
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 22 + ifElse(Root, var(20), 6, 12)
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1006
ignoreHitPause = 1

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1007
ignoreHitPause = 1

[State 1005, Projectile Flag Off]
type = ParentVarAdd
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100
var(39) = -1

[State 1005, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100


;Hit Pause
[StateDef 1006]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1

[State 1006, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 1006, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 2
ignorehitPause = 1

[State 1006, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), -12
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), -12
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1006, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
trigger1 = !(HitDefAttr = SCA,AT)
var(15) = 1

[State 1006, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1006, ProjContact]
type = ParentVarSet
triggerAll = MoveContact && NumTarget
trigger1 = Root, StateNo = [1000,1030]
var(18) = 1

[State 1006, Turn]
type = Turn
trigger1 = MoveContact
trigger1 = Root, NumProjID(262144)
ignoreHitPause = 1
persistent = 0

[State 1006, ChangeState]
type = ChangeState
trigger1 = MoveContact
trigger1 = Root, NumProjID(262144)
value = sysvar(1)
ignoreHitPause = 1

[State 1006, EnvShake (Special)]
type = EnvShake
trigger1 = Time = 1 && PrevStateNo = 1015 && !MoveGuarded
time = 14
ampl = 4
freq = 120
ignoreHitPause = 1

[State 1006, End]
type = ChangeState
trigger1 = Time >= 0 && PrevStateNo != 1015
trigger2 = Time >= 1
value = 1007


;Disappear
[StateDef 1007]
type = A
physics = N
moveType = A
anim = 1007
ctrl = 0
velSet = 0,0
sprPriority = 3
moveHitPersist = 1

[State 1007, Projectile Flag Decrement]
type = ParentVarAdd
trigger1 = !Time
var(39) = -1

[State 1007, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 2,6
channel = 2
volume = -128
lowPriority = 1

[State 1007, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 1007, End]
type = ChangeState
trigger1 = !AnimTime
value = 1008


;Wait
[StateDef 1008]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velSet = 0, 0

[State 1008, End]
type = DestroySelf
trigger1 = !NumTarget
trigger2 = NumTarget
trigger2 = Target, Time <= 1 && !(Target, HitShakeOver)



;====================<REPPUKEN PROJECTILE (REFLECTED)>=========================
[StateDef 1015]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3

[State 1015, Turn]
type = Turn
trigger1 = !Time && PrevStateNo != 1015

[State 1015, Projectile reflection compatibility detection]
type = VarSet
trigger1 = 1
sysvar(0) = 131072

[State 1015, Set reflected StateNo]
type = VarSet
trigger1 = 1
sysvar(1) = 1005

[State 1015, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 1007
ignoreHitPause = 1

[State 1015, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1015, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1005
value = 1005

[State 1015, VelSet]
type = VelSet
trigger1 = 1
x = ifElse(var(10) = 3, 7.82122905028, ifElse(var(10) = 2, 6.70391061453, ifElse(var(10) = 1, 5.58659217877, 4.46927374302)))

[State 1015, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1015, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1015, Projectile Flag Decrement]
type = ParentVarAdd
trigger1 = !Time && PrevStateNo != 1015
var(39) = -1

[State 1015, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1015, Miss]
type = HitDef
trigger1 = 1
ID = sysvar(0)
affectTeam = F
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1015, HitDef]
type = HitDef
trigger1 = var(10) < 3
ID = sysvar(0)
affectTeam = F
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 70, ifElse(var(10), 63, 56)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 70, ifElse(var(10), 63, 56)))), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 0, ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -8.44086725359, 0
ground.cornerPush.velOff = 0
guard.velocity = -8.44086725359
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 22 + ifElse(Root, var(20), 6, 12)
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
sprPriority = 3

[State 1015, EX HitDef]
type = HitDef
trigger1 = var(10) = 3
ID = sysvar(0)
affectTeam = F
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 98 < 7, 7, fvar(11) * 98)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 0, ifElse((Root, var(20)), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -5.58659217877, -5.78125
ground.cornerPush.velOff = 0
guard.velocity = -8.44086725359
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 22 + ifElse(Root, var(20), 6, 12)
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
sprPriority = 3

[State 1015, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1006
ignoreHitPause = 1

[State 1015, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1007
ignoreHitPause = 1

[State 1015, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100



;====================<DARK BARRIER PROJECTILE>=========================
[StateDef 1205]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3

[State 1205, Projectile reflection compatibility detection]
type = VarSet
trigger1 = 1
sysvar(0) = 131072

[State 1205, Set reflected StateNo]
type = VarSet
trigger1 = 1
sysvar(1) = 1205

[State 1205, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 1207
ignoreHitPause = 1

[State 1205, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignoreHitPause = 1

[State 1205, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1205
value = 1205

[State 1205, Button Detect]
type = VarSet
trigger1 = !Time && !PrevStateNo
var(10) = Root, var(10)

[State 1205, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 1
pos = 65, -52

[State 1205, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1205, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1205, Projectile Flag Increment]
type = ParentVarAdd
trigger1 = !Time
var(39) = 1

[State 1205, Assert: No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 1205, Scale]
type = AngleDraw
trigger1 = Time < 8
scale = 0.125 + (0.125 * Time), 0.125 + (0.125 * Time)
ignoreHitPause = 1

[State 1205, Scale]
type = AngleDraw
trigger1 = Time >= 8
scale = 1, 1
ignoreHitPause = 1

[State 1205, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1205, Miss]
type = HitDef
trigger1 = 1
attr = S, SP
hitFlag =
sparkXY = -10,0

[State 1205, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 || Root, var(20))
trigger1 = IsHelper(1205)
attr = S, SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 77 < 7, 7, fvar(11) * 77)), 7
getPower = ifElse(!(Root, var(13)), 144, 72) * !(Root, var(20)), 36 * !(Root, var(20))
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 0, ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 10
ground.slideTime = 10
guard.hitTime = 18
guard.slidetime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -5.58659217877, -5.78125
ground.cornerPush.velOff = 0
guard.velocity = -7.65065355984
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 22 + ifElse(Root, var(20), 6, 12)
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1205, EX HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && Root, var(15) < 1
trigger1 = IsHelper(1235)
ID = 1235
attr = S, SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 91 < 7, 7, fvar(11) * 91)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 12
guard.pauseTime = 0, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 10
ground.slideTime = 10
guard.hitTime = 18
guard.slidetime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -5.58659217877, -5.78125
ground.cornerPush.velOff = 0
guard.velocity = -7.65065355984
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 34
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1205, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1206
ignoreHitPause = 1

[State 1205, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1207
ignoreHitPause = 1

[State 1205, ChangeState]
type = ChangeState
trigger1 = Time = 32 && !var(10)
trigger2 = Time = 56 && var(10) = 1
trigger3 = Time = 72 && var(10) = 2
trigger4 = var(11) = 1210
value = 1208
ignoreHitPause = 1

[State 1205, Projectile Flag Off]
type = ParentVarAdd
trigger1 = (Root, StateNo != 1200) && (Root, StateNo != 1230)
var(39) = -1

[State 1205, End]
type = DestroySelf
trigger1 = (Root, StateNo != 1200) && (Root, StateNo != 1230)


;Hit Pause
[StateDef 1206]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1

[State 1206, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 1206, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 2
ignorehitPause = 1

[State 1206, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = 1200, 2
channel = 3
ignorehitPause = 1

[State 1206, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1206, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1206, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1206, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
trigger1 = !(HitDefAttr = SCA,AT)
var(15) = 1

[State 1206, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1206, ProjContact]
type = ParentVarSet
triggerAll = MoveContact && NumTarget
trigger1 = Root, StateNo = [1200, 1230]
var(18) = 1

[State 1206, End]
type = ChangeState
trigger1 = Time >= 1
value = 1207


;Disappear
[StateDef 1207]
type = A
physics = N
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 3
moveHitPersist = 1

[State 1207, Juggle Reset]
type = ParentVarSet
trigger1 = MoveHit && !(Root, var(12)) && NumTarget(1235)
var(15) = 0

[State 1207, EX Dark Barrier Juggle Flag]
type = ParentVarAdd
trigger1 = MoveHit && NumTarget(1235)
var(12) = 1
persistent = 0

[State 1207, Juggle Flag]
type = ParentVarSet
trigger1 = root, var(12) = 2
var(16) = 1

[State 1207, Projectile Flag Decrement]
type = ParentVarAdd
trigger1 = !Time
var(39) = -1

[State 1207, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 2, 6
channel = 2
volume = -128
lowPriority = 1

[State 1207, Scale]
type = AngleDraw
trigger1 = Time < 8
scale = 1 - (0.125 * Time), 1 - (0.125 * Time)
ignoreHitPause = 1

[State 1207, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1207, Assert: No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 1207, End]
type = ChangeState
trigger1 = Time >= 8
value = 1008


;Wait
[StateDef 1208]
type = A
physics = N
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 3
moveHitPersist = 1

[State 1208, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1208, Assert: No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 1208, Scale]
type = AngleDraw
trigger1 = Time < 8
scale = 1 - (0.125 * Time), 1 - (0.125 * Time)
ignoreHitPause = 1

[State 1208, Projectile Flag Off]
type = ParentVarAdd
trigger1 = Time = 8
trigger2 = (Root, StateNo != 1200) && (Root, StateNo != 1230)
var(39) = -1

[State 1208, End]
type = DestroySelf
trigger1 = Time = 8
trigger2 = (Root, StateNo != 1200) && (Root, StateNo != 1230)


;====================<DARK BARRIER (PROJECTILE REFLECTOR)>=========================
[Statedef 1210]
type = S
movetype = A
physics = N
ctrl = 0
velSet = 0, 0
anim = 1210
sprPriority = 4

[State 1210, Turn]
type = Turn
trigger1 = Facing != Root, Facing

[State 1210, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 1
pos = 65, -52

;=======================================;
;PROJECTILE REFLECTION COMPATIBILITY    ;
;?????????????                   ;
;by Vans                                ;
;GUIDE:                                 ;
;FOR REFLECTOR / ??????????HELPER?	;
;sysvar(0) = 262144                  	;
;=======================================;
[State 1210, Compatibility]
type = VarSet
trigger1 = !Time && !PrevStateNo
sysvar(0) = 262144
;=======================================;

[State 1210, Reflector]
type = ReversalDef
trigger1 = IsHelper(1210)
reversal.attr = SCA, NP, SP
pauseTime = 0, 0
sparkNo = -1
sparkXY = 0,0
p1StateNo = 1211
p2StateNo = 1212
ID = 1305
numHits = 0

[State 1210, EX Reflector]
type = ReversalDef
trigger1 = IsHelper(1240)
reversal.attr = SCA, NP, SP, HP
pauseTime = 0, 0
sparkNo = -1
sparkXY = 0,0
p1StateNo = 1211
p2StateNo = 1212
ID = 1305
numHits = 0

[State 1210, HitBy (Normal)]
type = HitBy
trigger1 = IsHelper(1210)
value = SCA, NP, SP
ignoreHitPause = 1

[State 1210, HitBy (EX)]
type = HitBy
trigger1 = IsHelper(1240)
value = SCA, NP, SP, HP
ignoreHitPause = 1

[State 1210, HitOverride]
type = HitOverride
trigger1 = !Time
attr = SCA, AA, AP, AT
stateNo = 1211
time = -1
ignoreHitPause = 1

[State 1210, Button Detect]
type = VarSet
trigger1 = !Time && !PrevStateNo
var(10) = Root, var(10)

[State 1210, DestroySelf]
type = DestroySelf
trigger1 = Time = 32 && !var(10)
trigger2 = Time = 56 && var(10) = 1
trigger3 = Time = 72 && var(10) = 2
trigger4 = (Root, StateNo != 1200) && (Root, StateNo != 1230)
trigger5 = var(11) = 1205



;Successful Reflection
[Statedef 1211]
type = S
moveType = I
physics = N
ctrl = 0
velSet = 0, 0
anim = 1
sprPriority = 4

[State 1211, VarSet]
type = VarSet
trigger1 = NumTarget
var(0) = Target, ID
persistent = 0
ignoreHitPause = 1

[State 1211, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "var(0) = %d Proj = %d ID = %d";Buff = %d GNDTYPE = %d"
params = var(0),NumProjID(262144), GetHitVar(ChainID)
ignoreHitPause = 1

;=======================================;
;PROJECTILE REFLECTION COMPATIBILITY    ;
;?????????????                   ;
;by Vans                                ;
;GUIDE:                                 ;
;FOR PROJECTILE / ?????              	;
;sysvar(0) = 131072                     ;
;sysvar(1) = REFLECTED_BEHAVIOR_STATE   ;
;FOR REFLECTOR / ??????????HELPER?	;
;sysvar(0) = 262144                     ;
;sysvar(1) = SPECIAL                    ;
;=======================================;
[State 1211, VarSet]
type = VarSet
;RETURNING YOUR OWN PROJECTILE
;?????????????
trigger1 = GetHitVar(ChainID)&2**17
sysvar(1) = sysvar(0)

[State 1211, ChangeState]
type = ChangeState
trigger1 = PlayerIDExist(var(0))
trigger1 = (PlayerID(var(0)),sysvar(0)=131072) 
;RETURNING YOUR OWN PROJECTILE
;?????????????
trigger2 = GetHitVar(ChainID)&2**17
value = 1213
ctrl = 0
;=======================================;

[State 1211, Reflected Projectile Sound]
type = Playsnd
trigger1 = !Time
value = 1200, 2
channel = 3
persistent = 0

[State 1211, ChangeState]
type = ChangeState
trigger1 = !Time 
value = 1215

[State 1211, DestroySelf]
type = DestroySelf
trigger1 = Time = 30


;Reflecting A Helper projectile
[Statedef 1212]
physics = N
movetype = I
ctrl = 0

[State 1212, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "sysvar(0) = %d pao pao cafe = %d";Buff = %d GNDTYPE = %d"
params = sysvar(0),sysvar(0)&2**17
ignoreHitPause = 1

[State 1212, SelfState]
type = SelfState
trigger1 = sysvar(0)&2**17
value = sysvar(1)
ctrl = 0

[State 1212, DestroySelf]
type = DestroySelf 
trigger1 = IsHelper
trigger1 = Time = 5
ignoreHitPause = 1

[State 1212, SelfState]
type = SelfState
trigger1 = !IsHelper
value = 0
ctrl = 1

[State 1212, Anim]
type = ChangeAnim2
trigger1 = !Time
value = 1


;Special Reflection
[Statedef 1213]
type = S
movetype = A
physics = N
ctrl = 0
velSet = 0, 0
sprPriority = 5

;=======================================;
;PROJECTILE REFLECTION COMPATIBILITY    ;
;?????????????                   ;
;by Vans                                ;
;GUIDE:                                 ;
;FOR REFLECTOR / ??????????HELPER?	;
;sysvar(0) = 262144                  	;
;=======================================;
[State 1213, INFORMATION SHARING] 	;
type = Projectile 			;
trigger1 = sysvar(1)&2**18 		;
projID = sysvar(0)			;
projAnim = 1			;
projHitAnim = -1			;
projRemAnim = -1			;
projRemoveTime = 2			;
projScale = 0,0			;
projPriority = 0			;
velocity = 0,0			;
posType = P1			;
offSet = 0, 0			;
persistent = 0			;
ignoreHitPause = 1			;
;=======================================;

[State 1213, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 1

[State 1213, StateTypeSet]
type = StateTypeSet
trigger1 = Root, MoveType = H
trigger2 = cond(PlayerIDExist(var(0)), (PlayerID(var(0)), MoveType = I), 0)
movetype = I

[State 1213, Reflected Projectile Sound]
type = Playsnd
trigger1 = !Time
value = 1200, 2
channel = 3
persistent = 0

[State 1213, PosSet]
type = PosSet
trigger1 = !Time || Time
trigger1 = PlayerIDExist(var(0))
x = PlayerID(var(0)),Pos X
y = PlayerID(var(0)),Pos Y

[State 1213, ChangeState]
type = DestroySelf
triggerall = Time > 2
trigger1 = !PlayerIDExist(var(0))



;====================<REFLECTED PROJECTILE>=========================
[StateDef 1215]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3

[State 1215, Projectile reflection compatibility detection]
type = VarSet
trigger1 = 1
sysvar(0) = 131072

[State 1215, Set reflected StateNo]
type = VarSet
trigger1 = 1
sysvar(1) = 1225

[State 1215, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 1217
ignoreHitPause = 1

[State 1215, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1215, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1215
value = 1215

[State 1215, Button Detect]
type = VarSet
trigger1 = !Time && !PrevStateNo
var(10) = Root, var(10)

[State 1215, VelSet]
type = VelSet
trigger1 = 1
x = ifElse(var(10) = 2, 6.70391061453, ifElse(var(10) = 1, 5.58659217877, 4.46927374302))

[State 1215, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1215, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1215, Projectile Flag Increment]
type = ParentVarAdd
trigger1 = !Time
var(39) = 1

[State 1215, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1215, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1215, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 || Root, var(20))
trigger1 = var(10) < 3
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(IsHelper(1240), 84, 70) < 7, 7, fvar(11) * ifElse(IsHelper(1240), 84, 70))), 7
getPower = ifElse(!(Root, var(13)), 144, 72) * !(Root, var(20)), 36 * !(Root, var(20))
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 0, ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -8.44086725359, 0
ground.cornerPush.velOff = 0
guard.velocity = -8.44086725359
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 22 + ifElse(Root, var(20), 6, 12)
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1215, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1216
ignoreHitPause = 1

[State 1215, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1217
ignoreHitPause = 1

[State 1215, Projectile Flag Off]
type = ParentVarAdd
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100
var(39) = -1

[State 1215, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100


;Hit Pause
[StateDef 1216]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1

[State 1216, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 1216, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 2
ignorehitPause = 1

[State 1216, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1216, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1216, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1216, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
trigger1 = !(HitDefAttr = SCA,AT)
var(15) = 1

[State 1216, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1216, ProjContact]
type = ParentVarSet
triggerAll = MoveContact && NumTarget
trigger1 = Root, StateNo = [1200, 1230]
var(18) = 1

[State 1216, Turn]
type = Turn
trigger1 = MoveContact
trigger1 = Root, NumProjID(262144)
ignoreHitPause = 1
persistent = 0

[State 1216, ChangeState]
type = ChangeState
trigger1 = MoveContact
trigger1 = Root, NumProjID(262144)
value = sysvar(1)
ignoreHitPause = 1

[State 1216, EnvShake (Special)]
type = EnvShake
trigger1 = Time = 1 && PrevStateNo = 1225 && !MoveGuarded
time = 14
ampl = 4
freq = 120
ignoreHitPause = 1

[State 1216, End]
type = ChangeState
trigger1 = Time >= 0 && PrevStateNo != 1225
trigger2 = Time >= 1
value = 1217


;Disappear
[StateDef 1217]
type = A
physics = N
moveType = A
anim = 1217
ctrl = 0
velSet = 0,0
sprPriority = 3
moveHitPersist = 1

[State 1217, Projectile Flag Decrement]
type = ParentVarAdd
trigger1 = !Time
var(39) = -1

[State 1217, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 2,6
channel = 2
volume = -128
lowPriority = 1

[State 1217, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 1217, Assert: No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 1217, End]
type = ChangeState
trigger1 = !AnimTime
value = 1008



;====================<REFLECTED REFLECTED PROJECTILE (REFLECTED)>=========================
[StateDef 1225]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3

[State 1225, Turn]
type = Turn
trigger1 = !Time && PrevStateNo != 1225

[State 1225, Projectile reflection compatibility detection]
type = VarSet
trigger1 = 1
sysvar(0) = 131072

[State 1225, Set reflected StateNo]
type = VarSet
trigger1 = 1
sysvar(1) = 1215

[State 1225, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 1007
ignoreHitPause = 1

[State 1225, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1225, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1215
value = 1215

[State 1225, VelSet]
type = VelSet
trigger1 = 1
x = ifElse(var(10) = 2, 6.70391061453, ifElse(var(10) = 1, 5.58659217877, 4.46927374302))

[State 1225, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1225, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1225, Projectile Flag Decrement]
type = ParentVarAdd
trigger1 = !Time && PrevStateNo != 1225
var(39) = -1

[State 1225, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1225, Miss]
type = HitDef
trigger1 = 1
ID = sysvar(0)
affectTeam = F
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1225, HitDef]
type = HitDef
trigger1 = 1
ID = sysvar(0)
affectTeam = F
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(IsHelper(1240), 84, 70) < 7, 7, fvar(11) * ifElse(IsHelper(1240), 84, 70))), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 0, ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -9.44322023996, 0
ground.cornerPush.velOff = 0
guard.velocity = -9.44322023996
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 22 + ifElse(Root, var(20), 6, 12)
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
sprPriority = 3

[State 1225, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1216
ignoreHitPause = 1

[State 1225, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1217
ignoreHitPause = 1

[State 1225, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100



;====================<KAISER WAVE PROJECTILE>=========================
[StateDef 1305]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
hitCountPersist = 1

[State 1305, Projectile reflection compatibility detection]
type = VarSet
trigger1 = 1
sysvar(0) = 131072

[State 1305, Set reflected StateNo (Normal)]
type = VarSet
trigger1 = IsHelper(1305)
sysvar(1) = 1315

[State 1305, Set reflected StateNo (EX)]
type = VarSet
trigger1 = IsHelper(1335)
sysvar(1) = 1305

[State 1305, Button Detect]
type = VarSet
trigger1 = !Time && !PrevStateNo
var(11) = Root, var(11)

[State 1305, Projectile Health]
type = VarSet
trigger1 = !Time && !PrevStateNo
var(0) = ifElse(var(11) = 2, 3, ifElse(var(11) = 1, 2, 1))

[State 1305, Projectile Health Decrement]
type = VarAdd
trigger1 = !Time && PrevStateNo
var(0) = -1
ignoreHitPause = 1
persistent = 0

[State 1305, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateNo = ifElse(var(0) > 0, 1305, 1307)
ignoreHitPause = 1

[State 1305, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1305, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1305
value = 1305

[State 1305, Change in direction due to reflection]
type = VelSet
triggerAll = !Time && NumPartner
trigger1 = Partner, NumExplod(262141) && !Partner, NumExplod(262142) && !Partner, NumExplod(262143) && !Partner, NumExplod(262144)
trigger2 = Partner, NumExplod(262143) && !Partner, NumExplod(262141) && !Partner, NumExplod(262142) && !Partner, NumExplod(262144)
trigger3 = vel y && Partner, NumExplod(262144) && !Partner, NumExplod(262141) && !Partner, NumExplod(262142) && !Partner, NumExplod(262143)
y = ifElse(Partner, NumExplod(262141) || Partner, NumExplod(262144), -1, 1) * ifElse(Partner, NumExplod(262144), vel y, 3.125)

[State 1305, VelSet]
type = VelSet
trigger1 = 1
x = ifElse(Time < 2 && var(0) < 2, 1, ifElse(var(11) = 2, 7.82122905028, ifElse(var(11) = 1, 6.70391061453, 5.58659217877)))

[State 1305, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1305, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1305, Projectile Flag On]
type = ParentVarAdd
trigger1 = !Time && !PrevStateNo
var(39) = 1

[State 1305, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1305, Miss]
type = HitDef
trigger1 = 1
attr = S, SP
hitFlag =
sparkXY = -10,0

[State 1305, HitDef (Normal)]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < (1 + HitCount) || Root, var(20))
trigger1 = IsHelper(1305)
trigger1 = !(Root, var(40)) || ((Root, var(40)) && (Root, var(24)))
trigger1 = var(0) > 0
ID = 1305
attr = S, SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(11) = 2, ifElse((Root, var(40)), 70, 56), ifElse(var(11) = 1, 63, 91)) < 7, 7, fvar(11) * ifElse(var(11) = 2, ifElse((Root, var(40)), 70, 56), ifElse(var(11) = 1, 63, 91)))), 7
getPower = ifElse(!(Root, var(13)), 144, 72) * !(Root, var(20)), 36 * !(Root, var(20))
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 0, ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -5.58659217877, -5.78125
ground.cornerPush.velOff = 0
guard.velocity = -8.44086725359
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 34
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1305, HitDef (Normal)]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < (1 + HitCount) || Root, var(20))
trigger1 = IsHelper(1305)
trigger1 = ((Root, var(40)) && !(Root, var(24)))
trigger1 = var(0) > 0
ID = 1305
attr = S, SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(11) = 2, ifElse(var(0) >= 2, 42, 56), ifElse(var(11) = 1, 49, 77)) < 7, 7, fvar(11) * ifElse(var(11) = 2, ifElse(var(0) >= 2, 42, 56), ifElse(var(11) = 1, 49, 77)))), 7
getPower = ifElse(!(Root, var(13)), 144, 72) * !(Root, var(20)), 36 * !(Root, var(20))
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 0, ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -5.58659217877, -5.78125
ground.cornerPush.velOff = 0
guard.velocity = -8.44086725359
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 34
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1305, HitDef: No Charge (EX)]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < (1 + HitCount))
trigger1 = IsHelper(1335)
trigger1 = var(0) > 0 && var(11) = 0
ID = 1335
attr = S, SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 119 < 7, 7, fvar(11) * 119)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 12
guard.pauseTime = 0, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -5.58659217877, -5.78125
ground.cornerPush.velOff = 0
guard.velocity = -8.44086725359
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 34
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1305, HitDef: Charge 1 (EX)]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < (1 + HitCount))
trigger1 = IsHelper(1335)
trigger1 = var(0) > 0 && var(11) = 1
ID = 1345
attr = S, SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 77 < 7, 7, fvar(11) * 77)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 12
guard.pauseTime = 0, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -5.58659217877, -5.78125
ground.cornerPush.velOff = 0
guard.velocity = -8.44086725359
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 34
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1305, TargetState]
type = TargetState
trigger1 = var(0) < 2
trigger1 = MoveGuarded && NumTarget(1345)
value = 5905
ID = 1345
ignoreHitPause = 1
persistent = 0

[State 1305, HitDef: Charge 2 (EX)]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < (1 + HitCount))
trigger1 = IsHelper(1335)
trigger1 = var(0) > 0 && var(11) = 2
ID = 1355
attr = S, SP
hitFlag = MAF
guardFlag = 
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 12
guard.pauseTime = 0, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -5.58659217877, -5.78125
ground.cornerPush.velOff = 0
guard.velocity = -8.44086725359
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 34
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1305, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = ifElse(NumTarget, 1306, 1305)
ignoreHitPause = 1

[State 1305, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = ifElse(var(0) > 0, 1305, 1307)
ignoreHitPause = 1

[State 1305, End]
type = ChangeState
trigger1 = !var(0) && PrevStateNo && Time = 2
value = 1307
ignoreHitPause = 1

[State 1305, Projectile Flag Off]
type = ParentVarAdd
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100
var(39) = -1

[State 1035, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100


;Hit Pause
[StateDef 1306]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1
hitCountPersist = 1

[State 1306, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 1306, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, ifElse(NumTarget(1345) && var(0) < 2, 5905, 0), 6)
channel = 2
ignorehitPause = 1

[State 1306, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, ifElse(NumTarget(1345) && var(0) < 2, 8005, 8001), 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1306, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1306, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1306, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
trigger1 = !(HitDefAttr = SCA, AT)
var(15) = 1

[State 1306, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1306 ProjContact]
type = ParentVarSet
triggerAll = MoveContact && NumTarget
trigger1 = Root, StateNo = [1300, 1330]
var(18) = 1

[State 1306, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1306, End]
type = ChangeState
trigger1 = Time >= 3 && var(0) > 1
trigger2 = Time >= 0 && var(0) <= 1
value = ifElse(var(0) <= 1, 1307, 1305)


;Disappear
[StateDef 1307]
type = A
physics = N
moveType = A
anim = 1307
ctrl = 0
velSet = 0,0
sprPriority = 3
moveHitPersist = 1

[State 1307, Projectile Flag Off]
type = ParentVarAdd
trigger1 = !Time
var(39) = -1

[State 1307, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 2, 6
channel = 2
volume = -128
lowPriority = 1

[State 1307, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 1307, End]
type = ChangeState
trigger1 = !AnimTime
value = 1008



;====================<KAISER WAVE PROJECTILE (REFLECTED)>=========================
[StateDef 1315]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
hitCountPersist = 1

[State 1315, Turn]
type = Turn
trigger1 = !Time && PrevStateNo != [1315, 1316]

[State 1315, Projectile reflection compatibility detection]
type = VarSet
trigger1 = 1
sysvar(0) = 131072

[State 1315, Projectile Health Fix]
type = VarAdd
trigger1 = !Time && sysvar(1) != 1305
trigger2 = Time = 1 && PrevStateNo = 1315
trigger2 = Root, NumProjID(262144)
var(0) = ifElse(Root, NumProjID(262144), ifElse(var(11) = 2, 3, ifElse(var(11) = 1, 2, 1)), 1)
ignoreHitPause = 1

[State 1315, Projectile Flag Off]
type = ParentVarAdd
trigger1 = !Time && sysvar(1) != 1305
var(39) = -1

[State 1315, Set reflected StateNo]
type = VarSet
trigger1 = 1
sysvar(1) = 1305

[State 1315, Turn]
type = Turn
trigger1 = Time = 1 && PrevStateNo = 1315
trigger1 = Root, NumProjID(262144)
ignoreHitPause = 1
persistent = 0

[State 1315, ChangeState]
type = ChangeState
trigger1 = Time = 1 && PrevStateNo = 1315
trigger1 = Root, NumProjID(262144)
value = sysvar(1)
ignoreHitPause = 1

[State 1315, Projectile Health Decrement]
type = VarAdd
trigger1 = !Time && PrevStateNo
var(0) = -1
ignoreHitPause = 1
persistent = 0

[State 1315, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateNo = ifElse(var(0) > 0, 1315, 1307)
ignoreHitPause = 1

[State 1315, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignoreHitPause = 1

[State 1315, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1305
value = 1305

[State 1315, Change in direction due to reflection]
type = VelSet
triggerAll = !Time
trigger1 = Enemy, NumExplod(262141) && !Enemy, NumExplod(262142) && !Enemy, NumExplod(262143) && !Enemy, NumExplod(262144)
trigger2 = Enemy, NumExplod(262143) && !Enemy, NumExplod(262141) && !Enemy, NumExplod(262142) && !Enemy, NumExplod(262144)
trigger3 = vel y && Enemy, NumExplod(262144) && !Enemy, NumExplod(262141) && !Enemy, NumExplod(262142) && !Enemy, NumExplod(262143)
y = ifElse(Enemy, NumExplod(262141) || Enemy, NumExplod(262144), -1, 1) * ifElse(Enemy, NumExplod(262144), vel y, 3.125)

[State 1315, VelSet]
type = VelSet
trigger1 = 1
x = ifElse(Time < 2 && var(0) < 2, 1, ifElse(var(11) = 2, 7.82122905028, ifElse(var(11) = 1, 6.70391061453, 5.58659217877)))

[State 1315, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1315, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1315, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1315, Miss]
type = HitDef
trigger1 = 1
ID = sysvar(0)
affectTeam = F
attr = S, SP
hitFlag =
sparkXY = -10, 0

[State 1315, HitDef]
type = HitDef
trigger1 = var(0) > 0
ID = sysvar(0)
affectTeam = F
attr = S, SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(11) = 2, 56, ifElse(var(11) = 1, 63, 91)) < 7, 7, fvar(11) * ifElse(var(11) = 2, 56, ifElse(var(11) = 1, 63, 91)))), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 0, ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -5.58659217877, -5.78125
ground.cornerPush.velOff = 0
guard.velocity = -8.44086725359
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 34
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
sprPriority = 3

[State 1315, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = ifElse(NumTarget, 1316, 1315)
ignoreHitPause = 1

[State 1315, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = ifElse(var(0) > 0, 1315, 1307)
ignoreHitPause = 1

[State 1315, End]
type = ChangeState
trigger1 = !var(0) && PrevStateNo && Time = 2
value = 1307
ignoreHitPause = 1

[State 1315, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100


;Hit Pause
[StateDef 1316]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1
hitCountPersist = 1

[State 1316, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 1316, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 2
ignorehitPause = 1

[State 1316, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1316, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1316, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1316, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
trigger1 = !(HitDefAttr = SCA,AT)
var(15) = 1

[State 1316, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1316, ProjContact]
type = ParentVarSet
triggerAll = MoveContact && NumTarget
trigger1 = Root, StateNo = [1300, 1330]
var(18) = 1

[State 1316, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1316, EnvShake]
type = EnvShake
trigger1 = MoveHit && NumTarget
time = 14
ampl = 4
freq = 120
ignoreHitPause = 1

[State 1316, End]
type = ChangeState
trigger1 = Time >= 3 && var(0) > 1
trigger2 = Time >= 0 && var(0) <= 1
value = ifElse(var(0) <= 1, 1307, 1315)



;====================<DARK SMASH PROJECTILE SHIELD>=========================
[Statedef 1502]
type = A
movetype = A
physics = N
ctrl = 0
velSet = 0, 0
sprPriority = 4

[State 1502, Turn]
type = Turn
trigger1 = Facing != Root, Facing

[State 1502, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 1
pos = 0, 0

[State 1502, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 1502
ignoreHitPause = 1

[State 1502, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NP, SP
time = -1
ignoreHitPause = 1

[State 1502, ChangeAnim]
type = ChangeAnim
triggerAll = (Root, StateNo = 1500) || (Root, StateNo = 1530)
trigger1 = Anim != 1502
value = 1502

[State 1502, ChangeAnim]
type = ChangeAnim
triggerAll = (Root, StateNo = 1550) || (Root, StateNo = 1580)
trigger1 = Anim != 1552
value = 1552

[State 1502, Miss]
type = HitDef
trigger1 = 1
attr = S, SP
hitFlag =
sparkXY = -10,0

[State 1502, End]
type = DestroySelf
trigger1 = Root, StateNo != 1500 && Root, StateNo != 1530 && Root, StateNo != 1550 && Root, StateNo != 1580
trigger2 = ((Root, StateNo = 1500) || (Root, StateNo = 1530)) && (Root, AnimElemTime(13) >= 0) && (Root, var(10) = 0)
trigger3 = (Root, StateNo = 1500) && (Root, AnimElemTime(15) >= 0) && (Root, var(10) = 1)
trigger4 = (Root, StateNo = 1500) && (Root, AnimElemTime(16) >= 0) && (Root, var(10) = 2)
trigger5 = Root, MoveType = H



;====================<GRAVITY SMASH PROJECTILE SHIELD>=========================
[Statedef 1602]
type = A
movetype = A
physics = N
ctrl = 0
velSet = 0, 0
sprPriority = 4

[State 1602, Turn]
type = Turn
trigger1 = Facing != Root, Facing

[State 1602, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 1
pos = 0, 0

[State 1602, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 1602
ignoreHitPause = 1

[State 1602, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NP, SP
time = -1
ignoreHitPause = 1

[State 1602, ChangeAnim]
type = ChangeAnim
triggerAll = Root, StateNo = 1600
trigger1 = Anim != 1602
value = 1602

[State 1602, ChangeAnim]
type = ChangeAnim
triggerAll = Root, StateNo = 1650
trigger1 = Anim != 1652
value = 1652

[State 1602, Miss]
type = HitDef
trigger1 = 1
attr = S, SP
hitFlag =
sparkXY = -10,0

[State 1602, End]
type = DestroySelf
trigger1 = Root, StateNo != 1600 && Root, StateNo != 1650
trigger2 = (Root, StateNo = 1600) && (Root, AnimElemTime(35) >= 0)
trigger3 = (Root, StateNo = 1650) && (Root, AnimElemTime(7) >= 0)
trigger4 = Root, MoveType = H



;====================<GRAVITY SMASH PROJECTILE>=========================
[StateDef 1605]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3

[State 1605, Projectile reflection compatibility detection]
type = VarSet
trigger1 = 1
sysvar(0) = 131072

[State 1605, Set reflected StateNo]
type = VarSet
trigger1 = 1
sysvar(1) = 1615

[State 1605, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 1607
ignoreHitPause = 1

[State 1605, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1605, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1605
value = 1605

[State 1605, Button Detect]
type = VarSet
trigger1 = !Time && !PrevStateNo
var(10) = Root, var(10)

[State 1605, VelSet]
type = VelSet
trigger1 = IsHelper(1605)
x = ifElse(var(10) = 2, 3.35195530726, ifElse(var(10) = 1, 2.79329608939, 2.23463687151))

[State 1605, VelSet]
type = VelSet
trigger1 = IsHelper(1655)
x = ifElse(var(10) = 2, 5.58659217877, ifElse(var(10) = 1, 4.46927374302, 3.35195530726))
y = ifElse(var(10) = 2, 5, ifElse(var(10) = 1, 4.375, 3.75))

[State 1605, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1605, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1605, Projectile Flag Increment]
type = ParentVarAdd
trigger1 = !Time
var(39) = 1

[State 1605, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1605, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1605, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 || Root, var(20))
ID = 1605
attr = S, SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 84, ifElse(var(10), 77, 70)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 84, ifElse(var(10), 77, 70)))), 7
getPower = ifElse(!(Root, var(13)), 144, 72) * !(Root, var(20)), 36 * !(Root, var(20))
givePower = 36, 36
pauseTime = 0, 12
guard.pauseTime = 0, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
airGuard.ctrlTime = 18
ground.velocity = -3.35195530726, -7.34375
ground.cornerPush.velOff = 0
guard.velocity = -7.65065355984
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -7.34375
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 34
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 0, 50)
palFX.mul = ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 256, 192), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 256, 192), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 256, 192)
palFX.sinAdd = ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), -255, 128), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), -255, 128), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), -255, 128), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 48, 4)
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1605, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(1605)
value = 51605
ID = 1605
ignoreHitPause = 1
persistent = 0

[State 1605, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1606
ignoreHitPause = 1

[State 1605, ChangeState]
type = ChangeState
trigger1 = MoveReversed
trigger2 = Pos y >= 0
value = 1607
ignoreHitPause = 1

[State 1605, Projectile Flag Off]
type = ParentVarAdd
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100
var(39) = -1

[State 1605, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100


;Hit Pause
[StateDef 1606]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1

[State 1606, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 1606, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 10)
channel = 2
ignorehitPause = 1

[State 1606, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1606, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), -24
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1606, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1606, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
trigger1 = !(HitDefAttr = SCA,AT)
var(15) = 1

[State 1606, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1606, ProjContact]
type = ParentVarSet
triggerAll = MoveContact && NumTarget
trigger1 = Root, StateNo = 1600
var(18) = 1

[State 1606, Shock Particles]
type = Helper
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

[State 1606, Shock Particle Timer Set]
type = Null
trigger1 = !(EnemyNear, SelfAnimExist(7696)) && !(EnemyNear, SelfAnimExist(9010))
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8155)
trigger1 = Cond(NumHelper(8155), Helper(8155), Cond(1, var(44) := 50, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 1606, Turn]
type = Turn
trigger1 = MoveContact
trigger1 = Root, NumProjID(262144)
ignoreHitPause = 1
persistent = 0

[State 1606, ChangeState]
type = ChangeState
trigger1 = MoveContact
trigger1 = Root, NumProjID(262144)
value = sysvar(1)
ignoreHitPause = 1

[State 1606, EnvShake (Special)]
type = EnvShake
trigger1 = Time = 1 && PrevStateNo = 1615 && !MoveGuarded
time = 14
ampl = 4
freq = 120
ignoreHitPause = 1

[State 1006, End]
type = ChangeState
trigger1 = Time >= 0 && PrevStateNo != 1615
trigger2 = Time >= 1
value = 1607


;Disappear
[StateDef 1607]
type = A
physics = N
moveType = A
anim = 1607
ctrl = 0
velSet = 0, 0
sprPriority = 3
moveHitPersist = 1

[State 1607, Projectile Flag Decrement]
type = ParentVarAdd
trigger1 = !Time
var(39) = -1

[State 1607, PosSet]
type = PosSet
trigger1 = Pos Y > 0
y = 0

[State 1607, Landing Dust Explod]
type = Explod
trigger1 = !Time && Pos Y >= 0
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1607, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = ifElse(Pos Y >= 0, 1650, 2), ifElse(Pos Y >= 0, 0, 10)
channel = 2
volume = -128
lowPriority = 1

[State 1607, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 1607, End]
type = ChangeState
trigger1 = !AnimTime
value = 1008



;====================<GAVITY SMASH PROJECTILE (REFLECTED)>=========================
[StateDef 1615]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3

[State 1615, Turn]
type = Turn
trigger1 = !Time && PrevStateNo != 1015

[State 1615, Projectile reflection compatibility detection]
type = VarSet
trigger1 = 1
sysvar(0) = 131072

[State 1615, Set reflected StateNo]
type = VarSet
trigger1 = 1
sysvar(1) = 1605

[State 1615, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 1607
ignoreHitPause = 1

[State 1615, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1615, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1605
value = 1605

[State 1615, VelSet]
type = VelSet
trigger1 = IsHelper(1605)
x = ifElse(var(10) = 2, 3.35195530726, ifElse(var(10) = 1, 2.79329608939, 2.23463687151))

[State 1615, VelSet]
type = VelSet
trigger1 = IsHelper(1655)
x = ifElse(var(10) = 2, 5.58659217877, ifElse(var(10) = 1, 4.46927374302, 3.35195530726))
y = ifElse(var(10) = 2, -5, ifElse(var(10) = 1, -4.375, -3.75))

[State 1615, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1615, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1615, Projectile Flag Decrement]
type = ParentVarAdd
trigger1 = !Time && PrevStateNo != 1015
var(39) = -1

[State 1615, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1615, Miss]
type = HitDef
trigger1 = 1
ID = sysvar(0)
affectTeam = F
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1615, HitDef]
type = HitDef
trigger1 = var(10) < 3
ID = sysvar(0)
affectTeam = F
attr = S, SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 70, ifElse(var(10), 63, 56)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 70, ifElse(var(10), 63, 56)))), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 12
guard.pauseTime = 0, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
airGuard.ctrlTime = 18
ground.velocity = -3.35195530726, -7.34375
ground.cornerPush.velOff = 0
guard.velocity = -7.65065355984
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -7.34375
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 34
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 0, 50)
palFX.mul = ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 256, 192), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 256, 192), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 256, 192)
palFX.sinAdd = ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), -255, 128), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), -255, 128), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), -255, 128), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 48, 4)
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1615, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(sysvar(0))
value = 51605
ID = sysvar(0)
ignoreHitPause = 1
persistent = 0

[State 1615, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1606
ignoreHitPause = 1

[State 1615, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1607
ignoreHitPause = 1

[State 1615, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100



;====================<GRAVITY SMASH (TARGET)>=========================
;Hit shake
[StateDef 51605]
type = S
moveType = H
physics = N
velset = 0,0

[State 51605, ChangeAnim]
type = ChangeAnim
trigger1 = !SelfAnimExist(7696) && !SelfAnimExist(9010)
trigger1 = !Time
trigger1 = GetHitVar(AnimType) != [3,5]
value = ifElse((GetHitVar(GroundType) = 1), 5000, 5010) + GetHitVar(AnimType)

[State 51605, ChangeAnim]
type = ChangeAnim
trigger1 = !SelfAnimExist(7696) && !SelfAnimExist(9010)
trigger1 = !Time
trigger1 = GetHitVar(AnimType) = [3,5]
value = 5030

[State 51605, ChangeAnim]
type = ChangeAnim
trigger1 = !SelfAnimExist(7696) && !SelfAnimExist(9010)
trigger1 = !Time
trigger1 = (GetHitVar(AnimType) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(AnimType)))
value = 5047 + GetHitVar(AnimType)

[State 51605, ChangeAnim]
type = ChangeAnim
trigger1 = SelfAnimExist(7696) || SelfAnimExist(9010)
trigger1 = !Time
value = ifElse(SelfAnimExist(7696), 7696, 9010)

[State 51605, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 7696 && Anim != 9010
trigger1 = Time > 0
value = Anim

[State 51605, StateTypeSet]
type = StateTypeSet
trigger1 = !Time
trigger1 = GetHitVar(yVel) != 0 || GetHitVar(fall)
trigger2 = pos y != 0
StateType = A

[State 51605, SelfState]
type = SelfState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yVel) = 0 && !GetHitVar(fall)
value = 5001

[State 51605, ChangeState]
type = ChangeState
trigger1 = SelfAnimExist(7696) || SelfAnimExist(9010)
trigger1 = HitShakeOver
value = 51606

[State 51605, SelfState]
type = SelfState
trigger1 = HitShakeOver
value = 5030

[State 51605, OffSet]
type = OffSet
trigger1 = Anim = 7696 || Anim = 9010
x = ifElse(Time > 22, 4, ifElse(Time > 18, 6, 8)) * ifElse(Time % 2 = 0, 1, -1)


;Air get-hit (knocked away)
[StateDef 51606]
type = A
moveType = H
physics = N
ctrl = 0

[State 51606, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != [5000, 5199]
trigger1 = (GetHitVar(AnimType) = [4, 5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
trigger1 = Time > 10
value = 5047 + GetHitVar(AnimType)

[State 51606, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != [5000, 5199]
trigger1 = SelfAnimExist(5030)
trigger1 = Time > 10
value = 5030

[State 51606, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = GetHitVar(yAccel)

[State 51606, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

[State 51606, SelfState]
type = SelfState
triggerAll = !HitFall
trigger1 = HitOver
trigger2 = vel y > 0
trigger2 = pos y >= const(movement.air.getHit.groundLevel)
value = 5040

[State 51606, SelfState]
type = SelfState
triggerAll = HitFall
trigger1 = HitOver
trigger2 = vel y > 0
trigger2 = pos y >= const(movement.air.getHit.groundLevel)
value = 5050

[State 51606, SelfState]
type = SelfState
trigger1 = vel y > 0
value = 5035

[State 51606, OffSet]
type = OffSet
trigger1 = Anim = 7696 || Anim = 9010
trigger1 = Time <= 12
x = 2 * ifElse(Time % 2 = 0, 1, -1)



;=====================<GIGANTIC PRESSURE SKULL>=========================
[StateDef 3113]
type = A
physics = N
moveType = I
ctrl = 0
anim = 1
sprPriority = 3

[State 3113, BindToRoot]
type = BindToRoot
trigger1 = !Time
time = 1
pos = 75, 0

[State 3113, Explod]
type = Explod
trigger1 = !Time
ID = 3113
anim = 3113
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1
ignoreHitPause = 0

[State 3113, Scale Explod]
type = ModifyExplod
trigger1 = Time >= 34
ID = 3113
scale = 0.5, 0.5 + (0.1875 * (Time - 34))
trans = AddAlpha
alpha = 256 - (16 * (Time - 34)), 256

[State 3113, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 54
ID = 3113

[State 3113, End]
type = DestroySelf
trigger1 = Time = 54



;=====================<MAX GIGANTIC PRESSURE SKULL>=========================
[StateDef 3168]
type = A
physics = N
moveType = I
ctrl = 0
anim = 1
sprPriority = 3

[State 3168, BindToRoot]
type = BindToRoot
trigger1 = !Time
time = 1
pos = 75, 0

[State 3168, Explod]
type = Explod
trigger1 = !Time
ID = 3168
anim = 3168
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.5, 0.5
ownPal = 1
ignoreHitPause = 0

[State 3168, Scale Explod]
type = ModifyExplod
trigger1 = Time >= 34
ID = 3168
scale = 0.5, 0.5 + (0.1875 * (Time - 34))
trans = AddAlpha
alpha = 256 - (16 * (Time - 34)), 256

[State 3168, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 54
ID = 3168

[State 3168, End]
type = DestroySelf
trigger1 = Time = 54



;=====================<RUGAL EXECUTION FLAMES>=========================
[StateDef 3403]
type = A
physics = N
moveType = I
ctrl = 0
anim = 3403
sprPriority = 3

[State 3403, BindToRoot]
type = BindToRoot
trigger1 = Anim = 3403
time = 1
pos = 0, 0

[State 3403, ChangeAnim]
type = ChangeAnim
triggerAll = Anim = 3403
trigger1 = (Root, StateNo != 3400) && (Root, StateNo != 3450)
trigger2 = ((Root, StateNo = 3400) || (Root, StateNo = 3450)) && (Root, AnimElem = 12)
value = 3404

[State 3403, End]
type = DestroySelf
trigger1 = Anim = 3404 && !AnimTime



;====================<KAISER REPPUKEN PROJECTILE>=========================
[StateDef 3505]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
hitCountPersist = 1

[State 3505, Projectile reflection compatibility detection]
type = VarSet
trigger1 = 1
sysvar(0) = 131072

[State 3505, Set reflected StateNo]
type = VarSet
trigger1 = 1
sysvar(1) = 3505

[State 3505, Projectile Health]
type = VarSet
trigger1 = !Time && !PrevStateNo
var(0) = 3

[State 3505, Projectile Health Decrement]
type = VarAdd
trigger1 = !Time && PrevStateNo
var(0) = -1
ignoreHitPause = 1
persistent = 0

[State 3505, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateNo = ifElse(var(0) > 0, 3505, 3507)
ignoreHitPause = 1

[State 3505, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 3505, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3505
value = 3505

[State 3505, VelSet]
type = VelSet
trigger1 = !Time
x = abs((((Root, P2BodyDist X) - 60) / 2))

[State 3505, VelSet]
type = VelSet
trigger1 = Time < 2 && var(0) < 2
x = 1

[State 3505, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 3505, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 3505, Projectile Flag On]
type = ParentVarAdd
trigger1 = !Time && !PrevStateNo
var(39) = 1

[State 3505, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 3505, Miss]
type = HitDef
trigger1 = 1
attr = S, HP
hitFlag =
sparkXY = -10,0

[State 3505, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < (1 + (Root, var(13))))
trigger1 = var(0) > 0
ID = 3505
attr = S, HP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 12
guard.pauseTime = 0, 12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -5.58659217877, -5.78125
ground.cornerPush.velOff = 0
guard.velocity = -8.44086725359
guard.cornerPush.velOff = 0
air.velocity = -5.58659217877, -5.78125
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 34
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 3505, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = ifElse(NumTarget, 3506, 3505)
ignoreHitPause = 1

[State 3505, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = ifElse(var(0) > 0, 3505, 3507)
ignoreHitPause = 1

[State 3505, End]
type = ChangeState
trigger1 = !var(0) && PrevStateNo && Time = 2
value = 3507
ignoreHitPause = 1

[State 3505, Projectile Flag Off]
type = ParentVarAdd
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100
var(39) = -1

[State 3505, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100


;Hit Pause
[StateDef 3506]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1
hitCountPersist = 1

[State 3506, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 3506, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 2
ignorehitPause = 1

[State 3506, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3506, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3506, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 3506, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
trigger1 = !(HitDefAttr = SCA, AT)
var(15) = 1

[State 3506, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 3506 ProjContact]
type = ParentVarSet
triggerAll = MoveContact && NumTarget
trigger1 = Root, StateNo = 3510
var(18) = 1

[State 3506, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 3506, End]
type = ChangeState
trigger1 = Time >= 3 && var(0) > 1
trigger2 = Time >= 0 && var(0) <= 1
value = ifElse(var(0) <= 1, 3507, 3505)


;Disappear
[StateDef 3507]
type = A
physics = N
moveType = A
anim = 3507
ctrl = 0
velSet = 0,0
sprPriority = 3
moveHitPersist = 1

[State 3507, Projectile Flag Off]
type = ParentVarAdd
trigger1 = !Time
var(39) = -1

[State 3507, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 2, 6
channel = 2
volume = -128
lowPriority = 1

[State 3507, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 3507, End]
type = ChangeState
trigger1 = !AnimTime
value = 1008



;====================<KAISER PHOENIX FIRST PROJECTILE>=========================
[StateDef 3605]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
hitCountPersist = 1

[State 3605, Projectile reflection compatibility detection]
type = VarSet
trigger1 = 1
sysvar(0) = 131072

[State 3605, Set reflected StateNo]
type = VarSet
trigger1 = 1
sysvar(1) = 3605

[State 3605, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateNo = 3607
ignoreHitPause = 1

[State 3605, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 3605, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3605
value = 3605

[State 3605, VelSet]
type = VelSet
trigger1 = !Time
x = abs(((Root, P2BodyDist X) - 80) / 2)

[State 3605, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 3605, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 3605, Projectile Flag On]
type = ParentVarAdd
trigger1 = !Time && !PrevStateNo
var(39) = 1

[State 3605, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 3605, Miss]
type = HitDef
trigger1 = 1
attr = S, HP
hitFlag =
sparkXY = -10,0

[State 3605, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 + (Root, var(13)))
ID = 3605
attr = S, HP
hitFlag = MAFD
guardFlag = U
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 6
guard.pauseTime = 0, 6
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
airGuard.ctrlTime = 18
ground.velocity = -1.11731843575, -11.25 - (0.9375 * GameWidth / GameHeight)
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -1.11731843575, -8.75 - (0.9375 * GameWidth / GameHeight)
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.78125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 34
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 3605, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 3606
ignoreHitPause = 1

[State 3605, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 3607
ignoreHitPause = 1

[State 3605, Projectile Flag Off]
type = ParentVarAdd
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100
var(39) = -1

[State 3605, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100


;Hit Pause
[StateDef 3606]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1
hitCountPersist = 1

[State 3606, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 3606, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 2
ignorehitPause = 1

[State 3606, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3606, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3606, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 3606, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
trigger1 = !(HitDefAttr = SCA, AT)
var(15) = 1

[State 3606, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 3606 ProjContact]
type = ParentVarSet
triggerAll = MoveContact && NumTarget
trigger1 = Root, StateNo = 3600
var(18) = 1

[State 3606, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 3606, End]
type = ChangeState
trigger1 = Time >= 0
value = 3607


;Disappear
[StateDef 3607]
type = A
physics = N
moveType = A
anim = 1307
ctrl = 0
velSet = 0, 0
sprPriority = 3
moveHitPersist = 1

[State 3607, Projectile Flag Off]
type = ParentVarAdd
trigger1 = !Time
var(39) = -1

[State 3607, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 2, 6
channel = 2
volume = -128
lowPriority = 1

[State 3607, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 3607, End]
type = ChangeState
trigger1 = !AnimTime
value = 1008



;====================<KAISER PHOENIX SECOND PROJECTILE>=========================
[StateDef 3610]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
hitCountPersist = 1

[State 3610, Projectile reflection compatibility detection]
type = VarSet
trigger1 = 1
sysvar(0) = 131072

[State 3610, Set reflected StateNo]
type = VarSet
trigger1 = 1
sysvar(1) = 3610

[State 3610, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 3612
ignoreHitPause = 1

[State 3610, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 3610, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3610
value = 3610

[State 3610, VelSet]
type = VelSet
trigger1 = !Time
x = abs(((Root, P2BodyDist X) - 80) / 2)

[State 3610, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 3610, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 3610, Projectile Flag Increment]
type = ParentVarAdd
trigger1 = !Time
var(39) = 1

[State 3610, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 3610, Miss]
type = HitDef
trigger1 = 1
attr = S, HP
hitFlag =
sparkXY = -10, 0

[State 3610, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 + (Root, var(13)))
ID = 3610
attr = S, HP
hitFlag = MAFD
guardFlag = U
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 6
guard.pauseTime = 0, 6
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
airGuard.ctrlTime = 18
ground.velocity = -1.11731843575, -11.25 - (0.9375 * GameWidth / GameHeight)
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -1.11731843575, -8.75 - (0.9375 * GameWidth / GameHeight)
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.78125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 34
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 0, 50)
palFX.mul = ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 256, 192), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 256, 192), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 256, 192)
palFX.sinAdd = ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), -255, 128), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), -255, 128), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), -255, 128), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 48, 4)
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 3610, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(3610)
value = 53605
ID = 3610
ignoreHitPause = 1
persistent = 0

[State 3610, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 3611
ignoreHitPause = 1

[State 3610, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 3612
ignoreHitPause = 1

[State 3610, Projectile Flag Off]
type = ParentVarAdd
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100
var(39) = -1

[State 3610, End]
type = ChangeState
trigger1 = Pos y >=0
value = 3612

[State 3610, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100


;Hit Pause
[StateDef 3611]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1
hitCountPersist = 1

[State 3611, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 3611, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 10)
channel = 2
ignorehitPause = 1

[State 3611, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3611, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), -24
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3611, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 3611, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
trigger1 = !(HitDefAttr = SCA,AT)
var(15) = 1

[State 3611, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 3611, ProjContact]
type = ParentVarSet
triggerAll = MoveContact && NumTarget
trigger1 = Root, StateNo = 3600
var(18) = 1

[State 3611, Shock Particles]
type = Helper
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

[State 3611, Shock Particle Timer Set]
type = Null
trigger1 = !(EnemyNear, SelfAnimExist(7696)) && !(EnemyNear, SelfAnimExist(9010))
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8155)
trigger1 = Cond(NumHelper(8155), Helper(8155), Cond(1, var(44) := 50, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 3611, End]
type = ChangeState
trigger1 = Time >= 0
value = 3612


;Disappear
[StateDef 3612]
type = A
physics = N
moveType = A
anim = 1607
ctrl = 0
velSet = 0, 0
sprPriority = 3
moveHitPersist = 1

[State 3612, Projectile Flag Decrement]
type = ParentVarAdd
trigger1 = !Time
var(39) = -1

[State 3612, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 2, 10
channel = 2
volume = -128
lowPriority = 1

[State 3612, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 3612, End]
type = ChangeState
trigger1 = !AnimTime
value = 1008



;====================<GRAVITY PHOENIX(TARGET)>=========================
;Hit shake
[StateDef 53605]
type = S
moveType = H
physics = N
velset = 0,0

[State 53605, ChangeAnim]
type = ChangeAnim
trigger1 = !SelfAnimExist(7696) && !SelfAnimExist(9010)
trigger1 = !Time
trigger1 = GetHitVar(AnimType) != [3,5]
value = ifElse((GetHitVar(GroundType) = 1), 5000, 5010) + GetHitVar(AnimType)

[State 53605, ChangeAnim]
type = ChangeAnim
trigger1 = !SelfAnimExist(7696) && !SelfAnimExist(9010)
trigger1 = !Time
trigger1 = GetHitVar(AnimType) = [3,5]
value = 5030

[State 53605, ChangeAnim]
type = ChangeAnim
trigger1 = !SelfAnimExist(7696) && !SelfAnimExist(9010)
trigger1 = !Time
trigger1 = (GetHitVar(AnimType) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(AnimType)))
value = 5047 + GetHitVar(AnimType)

[State 51605, ChangeAnim]
type = ChangeAnim
trigger1 = SelfAnimExist(7696) || SelfAnimExist(9010)
trigger1 = !Time
value = ifElse(SelfAnimExist(7696), 7696, 9010)

[State 53605, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 7696 && Anim != 9010
trigger1 = Time > 0
value = Anim

[State 53605, StateTypeSet]
type = StateTypeSet
trigger1 = !Time
trigger1 = GetHitVar(yVel) != 0 || GetHitVar(fall)
trigger2 = pos y != 0
StateType = A

[State 53605, SelfState]
type = SelfState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yVel) = 0 && !GetHitVar(fall)
value = 5001

[State 53605, ChangeState]
type = ChangeState
trigger1 = SelfAnimExist(7696) || SelfAnimExist(9010)
trigger1 = HitShakeOver
value = 51606

[State 53605, SelfState]
type = SelfState
trigger1 = HitShakeOver
value = 5030

[State 53605, OffSet]
type = OffSet
trigger1 = Anim = 7696 || Anim = 9010
x = ifElse(Time > 18, 4, ifElse(Time > 12, 6, 8)) * ifElse(Time % 2 = 0, 1, -1)


;Air get-hit (knocked away)
[StateDef 53606]
type = A
moveType = H
physics = N
ctrl = 0

[State 53606, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != [5000, 5199]
trigger1 = (GetHitVar(AnimType) = [4, 5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
trigger1 = Time > 10
value = 5047 + GetHitVar(AnimType)

[State 53606, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != [5000, 5199]
trigger1 = SelfAnimExist(5030)
trigger1 = Time > 10
value = 5030

[State 53606, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = GetHitVar(yAccel)

[State 53606, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

[State 53606, SelfState]
type = SelfState
triggerAll = !HitFall
trigger1 = HitOver
trigger2 = vel y > 0
trigger2 = pos y >= const(movement.air.getHit.groundLevel)
value = 5040

[State 53606, SelfState]
type = SelfState
triggerAll = HitFall
trigger1 = HitOver
trigger2 = vel y > 0
trigger2 = pos y >= const(movement.air.getHit.groundLevel)
value = 5050

[State 53606, SelfState]
type = SelfState
trigger1 = vel y > 0
value = 5035

[State 53606, OffSet]
type = OffSet
trigger1 = Anim = 7696 || Anim = 9010
trigger1 = Time <= 6
x = 2 * ifElse(Time % 2 = 0, 1, -1)



;====================<KAISER PHOENIX THIRD PROJECTILE>=========================
[StateDef 3615]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
hitCountPersist = 1

[State 3615, Projectile reflection compatibility detection]
type = VarSet
trigger1 = 1
sysvar(0) = 131072

[State 3615, Set reflected StateNo]
type = VarSet
trigger1 = 1
sysvar(1) = 3615

[State 3615, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateNo = 3617
ignoreHitPause = 1

[State 3615, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 3615, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3615
value = 3615

[State 3615, VelSet]
type = VelSet
trigger1 = !Time
x = abs(((Root, P2BodyDist X) - 80) / 2)

[State 3615, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 3615, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 3615, Projectile Flag On]
type = ParentVarAdd
trigger1 = !Time && !PrevStateNo
var(39) = 1

[State 3615, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 3615, Miss]
type = HitDef
trigger1 = 1
attr = S, HP
hitFlag =
sparkXY = -10,0

[State 3615, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 + (Root, var(13)))
ID = 3615
attr = S, HP
hitFlag = MAFD
guardFlag = U
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 6
guard.pauseTime = 0, 6
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
airGuard.ctrlTime = 18
ground.velocity = -1.11731843575, -11.25 - (0.9375 * GameWidth / GameHeight)
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -1.11731843575, -8.75 - (0.9375 * GameWidth / GameHeight)
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.78125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 34
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 3615, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 3616
ignoreHitPause = 1

[State 3615, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 3617
ignoreHitPause = 1

[State 3615, Projectile Flag Off]
type = ParentVarAdd
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100
var(39) = -1

[State 3615, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100


;Hit Pause
[StateDef 3616]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1
hitCountPersist = 1

[State 3616, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 3616, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 2
ignorehitPause = 1

[State 3616, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3616, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3616, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 3616, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
trigger1 = !(HitDefAttr = SCA, AT)
var(15) = 1

[State 3616, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 3616 ProjContact]
type = ParentVarSet
triggerAll = MoveContact && NumTarget
trigger1 = Root, StateNo = 3600
var(18) = 1

[State 3616, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 3616, End]
type = ChangeState
trigger1 = Time >= 0
value = 3617


;Disappear
[StateDef 3617]
type = A
physics = N
moveType = A
anim = 3617
ctrl = 0
velSet = 0, 0
sprPriority = 3
moveHitPersist = 1

[State 3617, Projectile Flag Off]
type = ParentVarAdd
trigger1 = !Time
var(39) = -1

[State 3617, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 2, 6
channel = 2
volume = -128
lowPriority = 1

[State 3617, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 3617, End]
type = ChangeState
trigger1 = !AnimTime
value = 1008



;====================<FINAL KAISER PHOENIX PROJECTILE>=========================
[StateDef 3620]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
hitCountPersist = 1

[State 3620, Projectile reflection compatibility detection]
type = VarSet
trigger1 = 1
sysvar(0) = 131072

[State 3620, Set reflected StateNo]
type = VarSet
trigger1 = 1
sysvar(1) = 3620

[State 3620, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateNo = 3622
ignoreHitPause = 1

[State 3620, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 3620, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3620
value = 3620

[State 3620, VelSet]
type = VelSet
trigger1 = !Time
x = abs(((Root, P2BodyDist X) - 80) / 2)

[State 3620, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 3620, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 3620, Projectile Flag On]
type = ParentVarAdd
trigger1 = !Time && !PrevStateNo
var(39) = 1

[State 3620, Electric Particles]
type = Explod
trigger1 = 1
vel = -0.5 - (Random / 1000.0), 0
accel = 0, 0.075
anim = 8155
sprPriority = 3
posType = P1
pos = -25, 0
random = 70, 30
facing = -1 + (Random < 500) * 2
vFacing = -1 + (Random < 500) * 2
scale = 0.5, 0.5
ownPal = 1
ignoreHitPause = 1

[State 3620, Electric Particles]
type = Explod
trigger1 = 1
vel = -0.5 - (Random / 1000.0), 0
accel = 0, 0.075
anim = 8155
sprPriority = 3
posType = P1
pos = -25, 0
random = 70, 30
facing = -1 + (Random < 500) * 2
vFacing = -1 + (Random < 500) * 2
scale = 0.5, 0.5
ownPal = 1
ignoreHitPause = 1

[State 3620, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 3620, Miss]
type = HitDef
trigger1 = 1
attr = S, HP
hitFlag =
sparkXY = -10, 0

[State 3620, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 + (Root, var(13)))
ID = 3620
attr = S, HP
hitFlag = MAFD
guardFlag = U
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 105 < 7, 7, fvar(11) * 105)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 12
guard.pauseTime = 0, 12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
airGuard.ctrlTime = 18
ground.velocity = -1.11731843575, -11.25 - (0.9375 * GameWidth / GameHeight)
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -1.11731843575, -8.75 - (0.9375 * GameWidth / GameHeight)
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.78125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 34
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 0, 50)
palFX.mul = ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 256, 192), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 256, 192), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 256, 192)
palFX.sinAdd = ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), -255, 128), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), -255, 128), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), -255, 128), ifElse(EnemyNear, SelfAnimExist(7696) || EnemyNear, SelfAnimExist(9010), 48, 4)
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 3620, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 3621
ignoreHitPause = 1

[State 3620, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 3622
ignoreHitPause = 1

[State 3620, Projectile Flag Off]
type = ParentVarAdd
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100
var(39) = -1

[State 3620, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100


;Hit Pause
[StateDef 3621]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1
hitCountPersist = 1

[State 3621, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 3621, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 2
ignorehitPause = 1

[State 3621, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3621, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3621, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 3621, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
trigger1 = !(HitDefAttr = SCA, AT)
var(15) = 1

[State 3621, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 3621 ProjContact]
type = ParentVarSet
triggerAll = MoveContact && NumTarget
trigger1 = Root, StateNo = 3601
var(18) = 1

[State 3621, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 3621, Shock Particles]
type = Helper
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

[State 3621, Shock Particle Timer Set]
type = Null
trigger1 = !(EnemyNear, SelfAnimExist(7696)) && !(EnemyNear, SelfAnimExist(9010))
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = NumHelper(8155)
trigger1 = Cond(NumHelper(8155), Helper(8155), Cond(1, var(44) := 50, 0), 0)
ignoreHitPause = 1
persistent = 0

[State 3621, End]
type = ChangeState
trigger1 = Time >= 0
value = 3622


;Disappear
[StateDef 3622]
type = A
physics = N
moveType = A
anim = 1307
ctrl = 0
velSet = 0, 0
sprPriority = 3
moveHitPersist = 1

[State 3622, Projectile Flag Off]
type = ParentVarAdd
trigger1 = !Time
var(39) = -1

[State 3622, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 2, 6
channel = 2
volume = -128
lowPriority = 1

[State 3622, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 3622, End]
type = ChangeState
trigger1 = !AnimTime
value = 1008



;=====================<G. END SKULL>=========================
[StateDef 3713]
type = A
physics = N
moveType = I
ctrl = 0
anim = 1
sprPriority = 3

[State 3168, BindToRoot]
type = BindToRoot
trigger1 = !Time
time = 1
pos = 22, 0

[State 3713, Explod]
type = Explod
trigger1 = !Time
ID = 3713
anim = 3713
bindTime = -1
sprPriority = 3
posType = P1
scale = 0.75, 0.75
ownPal = 1
ignoreHitPause = 0

[State 3713, Scale Explod]
type = ModifyExplod
trigger1 = Time >= 34
ID = 3713
scale = 0.75, 0.75 + (0.1875 * (Time - 34))
trans = AddAlpha
alpha = 96 - (16 * (Time - 34)), 256

[State 3713, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 40
ID = 3713

[State 3713, End]
type = DestroySelf
trigger1 = Time = 40



;========================<SPARKS>=============================
;Guard Spark (Normal)
[StateDef 8000]
type = A
physics = N
moveType = I
anim = 8000
velset = 0,0
sprPriority = 5

[State 8000, Assert: No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8000, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.125 + (0.046875 * Time), 0.125 + (0.046875 * Time)
ignoreHitPause = 1

[State 8000, Transparency]
type = Trans
trigger1 = Time < 4
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8000, Transparency]
type = Trans
trigger1 = Time >= 4
trans = AddAlpha
alpha = 256 - 64 * (Time - 4), 256
ignoreHitPause = 1

[State 8000, End]
type = DestroySelf
trigger1 = Time >= 8


;Guard Spark (Special)
[StateDef 8001]
type = A
physics = N
moveType = I
anim = 8001
velSet = 0,0
sprPriority = 5

[State 8001, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8001, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.25 + (0.03125 * Time), 0.25 + (0.03125 * Time)
ignoreHitPause = 1

[State 8001, Transparency]
type = Trans
trigger1 = time < 4
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8001, Transparency]
type = Trans
trigger1 = Time >= 4
trans = AddAlpha
alpha = 256 - 64 * (Time - 4), 256
ignoreHitPause = 1

[State 8001, End]
type = DestroySelf
trigger1 = Time >= 8


;Guard Spark (Guard Crush)
[StateDef 8005]
type = A
physics = N
moveType = I
anim = 8005
velSet = 0, 0
sprPriority = 5

[State 8005, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8005, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.25 + (0.0078125  * Time), 0.25 + (0.0078125  * Time)
ignoreHitPause = 1

[State 8005, Transparency]
type = Trans
trigger1 = Time < 4
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8005, Transparency]
type = Trans
trigger1 = Time >= 4
trans = AddAlpha
alpha = 256 - 8 * (Time - 4), 256
ignoreHitPause = 1

[State 8005, End]
type = DestroySelf
trigger1 = Time >= 36



;Weak Hit Spark
[StateDef 8010]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8010, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8010, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8010, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8010, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = (0.3 - (Time * 0.03)) * 0.65, (0.3 - (Time * 0.03)) * 0.65
ignoreHitPause = 1

[State 8010, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8010, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8010, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8010, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = (0.15 + (0.009375 * Time)) * 0.65, (0.15 + (0.009375 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time),256

[State 8010, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8010, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.15 + (0.009375 * Time)) * 0.65, (0.15 + (0.009375 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8010, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8010, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = (0.3 - (0.0375 * Time)) * 0.65, (0.3 - (0.0375 * Time)) * 0.65
trans = AddAlpha
alpha = 128 - (16 * Time), 256

[State 8010, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8010, End]
type = DestroySelf
trigger1 = Time >= 16


;Medium Hit Spark
[StateDef 8011]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8011, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8011, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8011, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8011, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = (0.35 - (Time * 0.035)) * 0.65, (0.35 - (Time * 0.035)) * 0.65
ignoreHitPause = 1

[State 8011, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8011, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8011, Center]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removetime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8011, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = (0.175 + (0.0109375 * Time)) * 0.65, (0.175 + (0.0109375 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8011, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8011, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.175 + (0.0109375 * Time)) * 0.65, (0.175 + (0.0109375 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8011, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8011, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = (0.35 - (0.04375 * Time)) * 0.65, (0.35 - (0.04375 * Time)) * 0.65
trans = AddAlpha
alpha = 128 - (16 * Time), 256

[State 8011, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8011, End]
type = DestroySelf
trigger1 = Time >= 16


;Strong Hit Spark
[StateDef 8012]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8012, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8012, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8012, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8012, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = (0.4 - (Time * 0.04)) * 0.65, (0.4 - (Time * 0.04)) * 0.65
ignoreHitPause = 1

[State 8012, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8012, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8012, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8012, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = (0.2 + (0.0125 * Time)) * 0.65, (0.2 + (0.0125 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8012, Streaks Explod]
type = Explod
trigger1 = !time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8012, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.2 + (0.0125 * Time)) * 0.65, (0.2 + (0.0125 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8012, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8012, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = (0.4 - (0.05 * Time)) * 0.65, (0.4 - (0.05 * Time)) * 0.65
trans = AddAlpha
alpha = 128 - (16 * Time), 256

[State 8012, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8012, End]
type = DestroySelf
trigger1 = Time >= 16


;Special Move Hit Spark
[StateDef 8013]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8013, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8013, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8013, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8013, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = (0.45 - (Time * 0.045)) * 0.65, (0.45 - (Time * 0.045)) * 0.65
ignoreHitPause = 1

[State 8012, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8013, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8013, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = (0.225 + (0.0140625 * Time)) * 0.65, (0.225 + (0.0140625 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8013, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.225 + (0.0140625 * Time)) * 0.65, (0.225 + (0.0140625 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8013, P2 Back Explod]
type = Explod
trigger1 = !Time
anim = 8013
ID = 3
posType = P1
facing = -1
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = -3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale P2 Back Explod]
type = ModifyExplod
trigger1= NumExplod(3)
ID = 3
scale = (0.4) * 0.65, (0.4) * 0.65
trans = AddAlpha
alpha = 256 - (32 * Time), 256

[State 8013, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority=3
removeTime=8
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = (0.45 - (0.05625 * Time)) * 0.65, (0.45 - (0.05625 * Time)) * 0.65
trans = AddAlpha
alpha = 192 - (24 * Time), 256

[State 8013, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8013, End]
type = DestroySelf
trigger1 = Time >= 16


;Super Hit Spark
[StateDef 8014]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8014, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8014, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8014, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8014, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = (0.5 - (Time * 0.05)) * 0.65, (0.5 - (Time * 0.05)) * 0.65
ignoreHitPause = 1

[State 8014, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8014, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8014, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = (0.25 + (0.015625 * Time)) * 0.65, (0.25 + (0.015625 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8014, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.25 + (0.015625 * Time)) * 0.65, (0.25 + (0.015625 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8014, P2 Back Explod]
type = Explod
trigger1 = !Time
anim = 8013
ID = 3
posType = P1
facing = ifElse((Parent, StateNo = [3000,3999]), -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = -3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale P2 Back Explod]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = (0.5) * 0.65, (0.5) * 0.65
trans = AddAlpha
alpha = 256 - (32 * Time), 256

[State 8014, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = (0.5 - (0.0625 * Time)) * 0.65, (0.5 - (0.0625 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (32 * Time),256

[State 8014, Remove Explods]
type = RemoveExplod
trigger1 = time >= 16

[State 8014, End]
type = DestroySelf
trigger1 = Time >= 16


;Weak Slash Spark
[StateDef 8015]
type = A
physics = N
moveType = I
anim = 8015
velSet = 0,0
sprPriority = 5

[State 8015, Rotating Spark]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 18015
ID = 18015
name = "Slash Spark (Rotation)"
postype = P1
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 8015, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8015, AngleSet]
type = AngleSet
trigger1 = !Time
value = 15 * (Random % 24)

[State 8015, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = ((0.3 + (Time * 0.15)) / 4) * 0.65, ((1 - (Time * 0.1)) / 4) * 0.65
ignoreHitPause = 1

[State 8015, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8015, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8015, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8015, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.15 + (0.009375 * Time)) * 0.65, (0.15 + (0.009375 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8015, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8015, End]
type = DestroySelf
trigger1 = Time >= 16


;Medium Slash Spark
[StateDef 8016]
type = A
physics = N
moveType = I
anim = 8015
velSet = 0,0
sprPriority = 5

[State 8016, Rotating Spark]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 18015
ID = 18016
name = "Slash Spark (Rotation)"
postype = P1
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 8016, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8016, AngleSet]
type = AngleSet
trigger1 = !Time
value = 15 * (Random % 24)

[State 8016, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = ((0.35 + (Time * 0.15)) / 3.5) * 0.65, ((1 - (Time * 0.1)) / 3.5) * 0.65
ignoreHitPause = 1

[State 8016, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8016, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8016, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8016, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.175 + (0.0109375 * Time)) * 0.65, (0.175 + (0.0109375 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8016, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8016, End]
type = DestroySelf
trigger1 = Time >= 16


;Strong Hit Spark
[StateDef 8017]
type = A
physics = N
moveType = I
anim = 8015
velSet = 0,0
sprPriority = 5

[State 8017, Rotating Spark]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 18015
ID = 18017
name = "Slash Spark (Rotation)"
postype = P1
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 8017, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8017, AngleSet]
type = AngleSet
trigger1 = !Time
value = 15 * (Random % 24)

[State 8017, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = ((0.4 + (Time * 0.15)) / 3) * 0.65, ((1 - (Time * 0.1)) / 3) * 0.65
ignoreHitPause = 1

[State 8017, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8017, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8017, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8017, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.2 + (0.0125 * Time)) * 0.65, (0.2 + (0.0125 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8017, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8017, End]
type = DestroySelf
trigger1 = Time >= 16


;Special Move Slash Spark
[StateDef 8018]
type = A
physics = N
moveType = I
anim = 8015
velSet = 0,0
sprPriority = 5

[State 8018, Rotating Spark]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 18015
ID = 18018
name = "Slash Spark (Rotation)"
postype = P1
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 8018, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8018, AngleSet]
type = AngleSet
trigger1 = !Time
value = 15 * (Random % 24)

[State 8018, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = ((0.45 + (Time * 0.15)) / 2.5) * 0.65, ((1 - (Time * 0.1)) / 2.5) * 0.65
ignoreHitPause = 1

[State 8018, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8018, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8018, Circle]
type = Explod
trigger1 = !Time
anim = 8018
ID = 8018
posType = p1
removeTime = 10
sprPriority = 5
pauseMoveTime = -1
superMoveTime = -1

[State 8018, Circle Scale]
type = ModifyExplod
trigger1 = NumExplod(8018)
ID = 8018
scale = (0.25 + (0.025 * Time)) * 0.65, (0.25 + (0.025 * Time)) * 0.65
trans = AddAlpha
alpha = ceil(256 - 25.6 * Time), 256

[State 8018, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8018, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.225 + (0.0140625 * Time)) * 0.65, (0.225 + (0.0140625 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8018, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8018, End]
type = DestroySelf
trigger1 = Time >= 16


;Super Slash Spark
[StateDef 8019]
type = A
physics = N
moveType = I
anim = 8015
velSet = 0,0
sprPriority = 5

[State 8019, Rotating Spark]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 18015
ID = 18019
name = "Slash Spark (Rotation)"
postype = P1
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 8019, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8019, AngleSet]
type = AngleSet
trigger1 = !Time
value = 15 * (Random % 24)

[State 8019, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = ((0.5 + (Time * 0.15)) / 2) * 0.65, ((1 - (Time * 0.1)) / 2) * 0.65
ignoreHitPause = 1

[State 8019, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8019, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8019, Circle]
type = Explod
trigger1 = !Time
anim = 8018
ID = 8018
posType = P1
removeTime = 10
sprPriority = 5
pauseMoveTime = -1
superMoveTime = -1

[State 8019, Circle Scale]
type = ModifyExplod
trigger1 = NumExplod(8018)
ID = 8018
scale = (0.3 + (0.03 * Time)) * 0.65, (0.3 + (0.03 * Time)) * 0.65
trans = AddAlpha
alpha = ceil(256 - 25.6 * Time), 256

[State 8019, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8019, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.25 + (0.015625 * Time)) * 0.65, (0.25 + (0.015625 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8019, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8019, End]
type = DestroySelf
trigger1 = Time >= 16


;Slash Rotating Spark
[StateDef 18015]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 18015, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 18015, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 18015, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 18015, Scale Amount]
type = Null
trigger1 = IsHelper(18015)
trigger1 = fvar(0) := ((0.15 - (Time * 0.015)) * 0.65)
trigger2 = IsHelper(18016)
trigger2 = fvar(0) := ((0.175 - (Time * 0.0175)) * 0.65)
trigger3 = IsHelper(18017)
trigger3 = fvar(0) := ((0.2 - (Time * 0.02)) * 0.65)
trigger4 = IsHelper(18018)
trigger4 = fvar(0) := ((0.225 - (Time * 0.0225)) * 0.65)
trigger5 = IsHelper(18019)
trigger5 = fvar(0) := ((0.25 - (Time * 0.025)) * 0.65)

[State 18015, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = fvar(0), fvar(0)
ignoreHitPause = 1

[State 18015, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 18015, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 18015, End]
type = DestroySelf
trigger1 = Time >= 10


;Reversal Spark
[StateDef 8020]
type = A
physics = N
moveType = I
anim = 8020
velSet = 0,0
sprPriority = 5

[State 8020, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8020, Scale]
type = AngleDraw
trigger1 = 1
scale = (0.25 + (0.09375 * Time)) * 0.65, (0.25 + (0.09375 * Time)) * 0.65
ignoreHitPause = 1

[State 8020, Transparency]
type = Trans
trigger1 = Time < 4
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8020, Transparency]
type = Trans
trigger1 = Time >= 4
trans = AddAlpha
alpha = 256 - 64 * (Time - 4), 256
ignoreHitPause = 1

[State 8020, End]
type = DestroySelf
trigger1 = Time >= 8



;======================<JUMP DUST>===========================
[StateDef 8100]
type = S
anim = 1
velSet = 0,0

[State 8100, Bind]
type = BindToRoot
trigger1 = Time

[State 8100, Floor Dust]
type = Explod
trigger1 = !Time
anim = 8100
sprPriority = 3
posType = P1
pos = 0, ceil(pos y)
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownpal = 1

[State 8100, Player Dust]
type = Explod
trigger1 = !Time || Time = 2 || Time = 6
anim = 8101
sprPriority = 3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownpal = 1

[State 8100, End]
type = DestroySelf
trigger1 = Time >= 7



;======================<DASH DUST>===========================
[StateDef 8103]
type = A
anim = 1
velSet = 0,0
sprPriority = 5

[State 8103, posSet]
type = PosSet
trigger1 = !Time = 0
y = 0

[State 8103, Dash Dust]
type = Explod
trigger1 = Time = 0 || Time = 3 || Time = 6
anim = 8103
ID = ifElse((Time = 6), 3, ifElse((Time = 3), 2, 1))
posType = P1
pos = 0,-4
random = 8,8
vel = -3 - (Random / 1000.0), -2 - (Random / 2000.0)
facing = ifElse(Random < 500,-1,1)
vFacing = ifElse(Random < 500,-1,1)
removeTime = 16
sprPriority = 3
pauseMoveTime = -1
superMoveTime = -1

[State 8103, Scale Explod 1]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.1 + (0.025 * Time), 0.1 + (0.025 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8103, Scale Explod 2]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.1 + (0.025 * (Time - 3)), 0.1 + (0.025 * (Time - 3))
trans = AddAlpha
alpha = 256 - (16 * (Time - 3)), 256

[State 8103, Scale Explod 3]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 0.1 + (0.025 * (Time - 6)), 0.1 + (0.025 * (Time - 6))
trans = AddAlpha
alpha = 256 - (16 * (Time - 6)), 256

[State 8103, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 22

[State 8103, End]
type = DestroySelf
trigger1 = !NumExplod



;======================<IMPACT DUST>===========================
[StateDef 8110]
type = A
anim = 1
velSet = 0,0
sprPriority = 5

[State 8110, Impact Dust Explod 1]
type = Explod
trigger1 = !Time
anim = 8110
ID = ifElse(Time = 8, 3, ifElse(Time = 4, 2, 1))
posType = P1
removeTime = 8
sprPriority = -4
pauseMoveTime = -1
superMoveTime = -1

[State 8110, Impact Dust Explod 2]
type = Explod
trigger1 = !Time
anim = 8120
ID = 2
posType = P1
removeTime = 8
sprPriority = -4
pauseMoveTime = -1
superMoveTime = -1

[State 8110, Scale]
type = ModifyExplod
trigger1 = 1
scale = 0.25 + (0.03125 * Time) * 0.5, 0.25 + (0.03125 * Time) * 0.5
trans = AddAlpha
alpha = ifElse(Time < 4, 256, 256 - (64 * (Time - 4))), 256

[State 8110, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 8

[State 8110, End]
type = DestroySelf
trigger1 = !NumExplod


;======================<WALL IMPACT DUST>===========================
[StateDef 8111]
type = A
anim = 1
velSet = 0,0
sprPriority = 5

[State 8111, Impact Dust Explod 1]
type = Explod
trigger1 = !Time
anim = 8111
ID = ifElse(Time = 8, 3, ifElse(Time = 4, 2, 1))
posType = P1
removeTime = 8
sprPriority = -4
pauseMoveTime = -1
superMoveTime = -1

[State 8111, Impact Dust Explod 2]
type = Explod
trigger1 = !Time
anim = 8121
ID = 2
posType = P1
removeTime = 8
sprPriority = -4
pauseMoveTime = -1
superMoveTime = -1

[State 8111, Scale]
type = ModifyExplod
trigger1 = 1
scale = 0.25 + (0.03125 * Time), 0.25 + (0.03125 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 256, 256 - (64 * (Time - 4))), 256

[State 8111, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 8

[State 8111, End]
type = DestroySelf
trigger1 = !NumExplod



;========================<FLAMES>=============================
[StateDef 8150]
type = A
velSet = 0,0
anim = 1

[State 8150, Timer]
type = VarSet
trigger1 = Parent, var(44) != 0
var(44) = Parent, var(44)

[State 8150, Parent Timer Reset]
type = ParentVarSet
trigger1 = Parent, var(44) != 0
var(44) = 0

[State 8150, Player]
type = VarSet
trigger1 = !Time
var(0) = Parent, var(43)

[State 8150, PosSet]
type = PosSet
trigger1 = PlayerIDexist(var(0))
x = ceil(PlayerID(var(0)), pos x)
y = ceil(PlayerID(var(0)), pos y) + (PlayerID(var(0)), const(size.mid.pos.y))

[State 8150, PosSet (Laying Down)]
type = PosSet
trigger1 = PlayerIDexist(var(0))
trigger1 = PlayerID(var(0)), StateType = L
x = ceil(PlayerID(var(0)), pos x)
y = ceil(PlayerID(var(0)), pos y) - 20

[State 8150, Facing]
type = Turn
trigger1 = PlayerIDexist(var(0))
trigger1 = Facing != (PlayerID(var(0)), Facing)

[State 8150, End]
type = DestroySelf
trigger1 = Time >= 600
trigger2 = !PlayerIDexist(var(0))
trigger3 = RoundState < 3 || (Root, StateNo = [1500,1599])
trigger3 = !var(44)

[State 8150, End]
type = DestroySelf
triggerAll = PlayerIDexist(var(0))
trigger1 = PlayerID(var(0)), ctrl
trigger2 = PlayerID(var(0)), Movetype != H || PlayerID(var(0)), StateNo = 5300
trigger3 = RoundState >= 3 && (Root, StateNo != [1500,1599])
trigger3 = PlayerID(var(0)), StateType = L && (PlayerID(var(0)), StateNo != [5080,5081])

[State 8150, Timer Decrement]
type = VarAdd
trigger1 = 1
var(44) = -1

[State 8150, Flame Explod 1]
type = Explod
trigger1 = PlayerIDexist(var(0))
anim = 8150
sprPriority = 1
posType = P1
random = 40,40
vel = (Random / 2000.0), -0.5 - (Random / 2000.0)
facing = ifElse(Random < 500, -1, 1)
vfacing = ifElse(Random < 500, -1, 1)
scale = 0.5,0.5
ownpal = 1

[State 8150, Flames Explod 2]
type = Explod
trigger1 = PlayerIDexist(var(0))
anim = 8150
sprPriority = 1
posType = P1
random = 60,60
vel = (Random / 2000.0), -0.5 - (Random / 2000.0)
facing = ifElse(Random < 500, -1, 1)
vfacing = ifElse(Random < 500, -1, 1)
scale = 0.5,0.5
ownpal = 1



;========================<SHOCK>=============================
[StateDef 8155]
type = A
velSet = 0,0
anim = 1

[State 8155, Player]
type = VarSet
trigger1 = !Time
var(0) = Parent, var(43)

[State 8155, PosSet]
type = PosSet
trigger1 = PlayerIDexist(var(0))
x = ceil(PlayerID(var(0)), pos x)
y = ceil(PlayerID(var(0)), pos y) + (PlayerID(var(0)), const(size.mid.pos.y))

[State 8155, PosSet (Laying Down)]
type = PosSet
triggerAll = PlayerIDexist(var(0))
trigger1 = PlayerID(var(0)), StateType = L
x = ceil(PlayerID(var(0)), pos x)
y = ceil(PlayerID(var(0)), pos y) - 20

[State 8155, PosSet (Elec-Trigger, axis at feet)]
type = PosSet
triggerAll = PlayerIDexist(var(0))
trigger1 = PlayerID(var(0)), StateNo = 3215 || PlayerID(var(0)), StateNo = 3265
trigger1 = PlayerID(var(0)), AnimElemTime(6) < 0
x = ceil(PlayerID(var(0)), pos x) + 10
y = ceil(PlayerID(var(0)), pos y) + (PlayerID(var(0)), const(size.mid.pos.y))

[State 8155, PosSet (Benimaru Collider/Elec-Trigger, axis at head)]
type = PosSet
triggerAll = PlayerIDexist(var(0))
trigger1 = PlayerID(var(0)), StateNo = 1515 || PlayerID(var(0)), StateNo = 1545
trigger2 = PlayerID(var(0)), StateNo = 3215 || PlayerID(var(0)), StateNo = 3265
trigger2 = (PlayerID(var(0)), AnimElemTime(2) >= 0 && PlayerID(var(0)), AnimElemTime(3) < 0) || PlayerID(var(0)), AnimElemTime(6) >= 0
x = ceil(PlayerID(var(0)), pos x)
y = ceil(PlayerID(var(0)), pos y) + 20

[State 8155, Facing]
type = Turn
trigger1 = PlayerIDexist(var(0))
trigger1 = Facing != (PlayerID(var(0)), Facing)

[State 8155, End]
type = DestroySelf
trigger1 = Time >= 600
trigger2 = !PlayerIDexist(var(0))
trigger3 = RoundState < 3
trigger3 = !var(44)

[State 8155, End]
type = DestroySelf
triggerAll = PlayerIDexist(var(0))
trigger1 = PlayerID(var(0)), ctrl
trigger2 = PlayerID(var(0)), MoveType != H || PlayerID(var(0)), StateNo = 5300
trigger3 = RoundState >= 3
trigger3 = PlayerID(var(0)), StateType = L && (PlayerID(var(0)), StateNo != [5080,5081])
trigger4 = PlayerID(var(0)), StateNo = 5110

[State 8155, Timer Decrement]
type = VarAdd
trigger1 = 1
var(44) = -1

[State 8155, Spark Explod]
type = Explod
trigger1 = PlayerIDexist(var(0))
anim = 8155
sprPriority = 3
posType = P1
random = 40,40
facing = ifElse(Random < 500, -1, 1)
vfacing = ifElse(Random < 500, -1, 1)
;bindtime = -1
scale = 0.25, 0.25
ownPal = 1



;========================<RECOVER FX>=============================
[StateDef 8200]
type = A
velSet = 0,0
anim = 8200
sprPriority = 5

[State 8200, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8200, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.25 + (0.017 * Time), 0.25 + (0.017 * Time)
ignoreHitPause = 1

[State 8200, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = ceil(256 - 17.1 * Time), 256
ignoreHitPause = 1

[State 8200, End]
type = DestroySelf
trigger1 = Time >= 15



;========================<COUNTER FX>=============================
[StateDef 8290]
type = A
physics = N
velSet = 0,0
anim = 1

[State 8290, "Counter!" Text Explod]
type = Explod
trigger1 = !NumExplod(8290)
anim = 8290
ID = 8290
sprPriority = 64
posType = P1
facing = Facing
removeTime = 32
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 8290, Scale]
type = ModifyExplod
trigger1 = Time < 8
ID = 8290
scale = 0.5, .5
trans = AddAlpha
alpha = 256,0

[State 8290, Scale]
type = ModifyExplod
trigger1 = Time >= 8
ID = 8290
scale = 0.5 + 0.0625 * (Time - 8), 0.5 + 0.0625 * (Time - 8)
trans = AddAlpha
alpha = 256 - 32 * (Time - 8), 32 * (Time - 8)

[State 8290, Safety]
type = RemoveExplod
trigger1 = Time >= 16

[State 8290, End]
type = DestroySelf
trigger1 = Time >= 16



;==================<POWER CHARGE FX>==================
;Aura and Dust
[StateDef 8330]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velset = 0,0

[State 8330, BindToRoot]
type = BindToRoot
trigger1 = (Root, StateNo = 730)
pos = 8, 0

[State 8330, Charging Sound]
type = PlaySnd
trigger1 = !Time
value = 730,0
channel = 0

[State 8330, Power Charge Aura]
type = Explod
trigger1 = !NumExplod(8330)
ID = 8330
anim = 8330
sprPriority = 3
posType = P1
bindTime = -1
removeTime = -1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 8330, Power Charge Dust]
type = Explod
trigger1 = !(Time % 6)
anim = 8105
sprPriority = -3
posType = P1
pos = 0, -ceil(pos y)
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 8330, Modify Aura 1]
type = ModifyExplod
trigger1 = Numexplod(8330) && Root, Power < 3000
ID = 8330
scale = 0.5, 0.1 + 0.4 * (Root, Power / 3000.0)

[State 8330, Modify Aura 2]
type = ModifyExplod
trigger1 = NumExplod(8330) && Root, Power >= 3000
ID = 8330
scale = 0.5, 0.5

[State 8330, StopSnd]
type = StopSnd
trigger1 = Root, StateNo != 730
channel = 0

[State 8330, RemoveExplod]
type = RemoveExplod
trigger1 = Root, StateNo != 730

[State 8330, End]
type = DestroySelf
trigger1 = Root, StateNo != 730


;Particles
[StateDef 8331]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velSet = 0,0

[State 8331, BindToRoot]
type = BindToRoot
trigger1 = !(Time % 8)
pos = ceil(-151 + (Random / 3.125)), ceil(98 - (Random / 3.125))

[State 8331, Particle]
type = Explod
trigger1 = (Time % 8) = 1
anim = 8331
sprPriority = ifElse(Random < 750, 5, -1)
posType = P1
vel = ((RootDist x + 8) / 32.0), ((RootDist y - 70) / 32.0)
scale = ifElse(Random < 500, 0.5, -0.5), ifElse(Random < 500, 0.5, -0.5)
pauseMoveTime = -1
superMoveTime = -1
ownpal = 1

[State 8331, RemoveExplod]
type = RemoveExplod
trigger1 = Root, StateNo != 730

[State 8331, End]
type = DestroySelf
trigger1 = Root, StateNo != 730



;==================<ZERO COUNTER FX>==================
[StateDef 8350]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velSet = 0,0

[State 8350, bgPalFX]
type = bgPalFX
trigger1 = 1
time = 1
color = 16 * Time
mul = 16 * Time, 16 * Time, 16 * Time

[State 8350, Circle Explod]
type = Explod
trigger1 = !Time
anim = 8350
ID = 1
sprPriority = 3
posType = P1
removeTime = 16
superMoveTime = -1
ownPal = 1

[State 8350, Scale]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = (0.0625 * Time), (0.0625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8350, Lightning Explod]
type = Explod
trigger1 = !Time
anim = 8351
ID = 2
sprPriority = -2
posType = P1
pos = 0, -ceil(pos y)
superMoveTime = -1
ownPal = 1

[State 8350, End]
type = DestroySelf
trigger1 = Time >= 16



;========================<CUSTOM COMBO>=============================
[StateDef 8400]
type = A
physics = N
moveType = I
anim = 8400
ctrl = 0
velSet = 0,0
sprPriority = 5

[State 8400, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8400, BGpalFX]
type = BGpalFX
trigger1 = Time < 25
time = 1
mul = 128,128,128

[State 8400, Rotate]
type = AngleSet
trigger1 = !Time
value = 6 * (Random % 60)

[State 8400, Rotate]
type = AngleAdd
trigger1 = 1
value = -6

[State 8400, Scale]
type = AngleDraw
trigger1 = Time < 8
scale = (0.0625 * Time), (0.0625 * Time)
ignoreHitPause = 1

[State 8400, Scale]
type = AngleDraw
trigger1 = Time >= 8
scale = 0.5, 0.5
ignoreHitPause = 1

[State 8400, Transparency]
type = Trans
trigger1 = Time < 16
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8400, Transparency]
type = Trans
trigger1 = Time >= 16
trans = AddAlpha
alpha = ceil(256 - 25.6 * (Time - 16)), 256
ignoreHitPause = 1

[State 8400, Lines Explod]
type = Explod
trigger1 = !Time
anim = 8401
ID = 1
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 16
superMoveTime = -1

[State 8400, Scale Lines Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 2 - (0.125 * Time), 2 - (0.125 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 64 * Time, 256), 256

[State 8400, Circle Explod]
type = Explod
trigger1 = Time = 16
anim = 8402
ID = 2
sprPriority = 5
posType = P1
removeTime = 32
superMoveTime = -1

[State 8400, Scale Circle Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.1 * (Time - 16)), (0.1 * (Time - 16))
trans = AddAlpha
alpha = ceil(256 - 25.6 * (Time - 16)), 256

[State 8400, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 26

[State 8400, End]
type = DestroySelf
trigger1 = Time >= 26



;========================<SUPER PAUSE FX>=============================
;Level 1 Super FX
[StateDef 8500]
type = A
velSet = 0,0
anim = 8500
sprPriority = 5

[State 8500, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8500, BGpalFX]
type = BGpalFX
trigger1 = Time < 39
time = 1
color = 0
mul = 0,0,256

[State 8500, Rotate]
type = AngleSet
trigger1 = !Time
value = 6 * (Random % 60)

[State 8500, Rotate]
type = AngleAdd
trigger1 = 1
value = -6

[State 8500, Scale]
type = AngleDraw
trigger1 = Time < 16
scale = (0.03125 * Time), (0.03125 * Time)
ignoreHitPause = 1

[State 8500, Scale]
type = AngleDraw
trigger1 = Time >= 16
scale = 0.5,0.5
ignoreHitPause = 1

[State 8500, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8500, Lines Explod]
type = Explod
trigger1 = Time = 0 || Time = 8 || Time = 16 || Time = 24
anim = 8501
ID = ifElse(Time = 24, 4, ifElse(Time = 16, 3, ifElse(Time = 8, 2, 1)))
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 16
superMoveTime = -1

[State 8500, Scale Lines Explod 1]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 1 - (0.0625 * Time), 1 - (0.0625 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 64 * Time, 256), 256

[State 8500, Scale Lines Explod 2]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 1 - (0.0625 * (Time - 8)), 1 - (0.0625 * (Time - 8))
trans = AddAlpha
alpha = ifElse((Time - 8) < 4, 64 * (Time - 8), 256), 256

[State 8500, Scale Lines Explod 3]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 1 - (0.0625 * (Time - 16)), 1 - (0.0625 * (Time - 16))
trans = AddAlpha
alpha = ifElse((Time - 16) < 4, 64 * (Time - 16), 256), 256

[State 8500, Scale Lines Explod 3]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 1 - (0.0625 * (Time - 24)), 1 - (0.0625 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8500, Circle Explod]
type = Explod
trigger1 = Time = 24
anim = 8502
ID = 10
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 32
superMoveTime = -1

[State 8500, Scale Circle Explod]
type = ModifyExplod
trigger1 = NumExplod(10)
ID = 10
scale = 2 - (0.125 * (Time - 24)), 2 - (0.125 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8500, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 40

[State 8500, End]
type = DestroySelf
trigger1 = Time >= 40


;Level 2 Super FX
[StateDef 8510]
type = A
velSet = 0,0
anim = 8510
sprPriority = 5

[State 8510, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8510, BGpalFX]
type = BGpalFX
trigger1 = Time < 39
time = 1
color = 0
mul = 192,0,256

[State 8510, Rotate]
type = AngleSet
trigger1 = !Time
value =6 * (Random % 60)

[State 8510, Rotate]
type = AngleAdd
trigger1 = 1
value = -6

[State 8510, Scale]
type = AngleDraw
trigger1 = Time < 16
scale = (0.03125 * Time), (0.03125 * Time)
ignoreHitPause = 1

[State 8510, Scale]
type = AngleDraw
trigger1 = Time >= 16
scale = 0.5, 0.5
ignoreHitPause = 1

[State 8510, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8510, Lines Explod]
type = Explod
trigger1 = Time = 0 || Time = 8 || Time = 16 || Time = 24
anim = 8511
ID = ifElse(Time = 24, 4, ifElse(Time = 16, 3, ifElse(Time = 8, 2, 1)))
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 16
superMoveTime = -1

[State 8510, Scale Lines Explod 1]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 1 - (0.0625 * Time), 1 - (0.0625 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 64 * Time, 256), 256

[State 8510, Scale Lines Explod 2]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 1 - (0.0625 * (Time - 8)), 1 - (0.0625 * (Time - 8))
trans = AddAlpha
alpha = ifElse((Time - 8) < 4, 64 * (Time - 8), 256), 256

[State 8510, Scale Lines Explod 3]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 1 - (0.0625 * (Time - 16)), 1 - (0.0625 * (Time - 16))
trans = AddAlpha
alpha = ifElse((Time - 16) < 4, 64 * (Time - 16), 256), 256

[State 8510, Scale Lines Explod 4]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 1 -(0.0625 * (Time - 24)), 1 - (0.0625 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8510, Circle Explod]
type = Explod
trigger1 = Time = 24
anim = 8512
ID = 10
sprPriority = 5
posType = P1
facing = ifElse(Random < 500,-1,1)
vFacing = ifElse(Random < 500,-1,1)
removeTime = 32
superMoveTime = -1

[State 8510, Scale]
type = ModifyExplod
trigger1 = NumExplod(10)
ID = 10
scale = 2 - (0.125 * (Time - 24)), 2 - (0.125 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24)<4, 64 * (Time - 24), 256), 256

[State 8510, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 40

[State 8510, End]
type = DestroySelf
trigger1 = Time >= 40


;Level 3 Super FX
[StateDef 8520]
type = A
velset = 0,0
anim = 8520
sprPriority = 5

[State 8520, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8520, Assert: NoBarDisplay, NoBG, NoFG]
type = AssertSpecial
trigger1 = Time < 40
flag = NoBarDisplay
flag2 = NoBG
flag3 = NoFG

[State 8520, Rotate]
type = AngleSet
trigger1 = !Time
value = 6 * (Random % 60)

[State 8520, Rotate]
type = AngleAdd
trigger1 = 1
value = -6

[State 8520, Scale]
type = AngleDraw
trigger1 = Time < 16
scale = (0.03125 * Time), (0.03125 * Time)
ignoreHitPause = 1

[State 8520, Scale]
type = AngleDraw
trigger1 = Time >= 16
scale = 0.5, 0.5
ignoreHitPause = 1

[State 8520, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8520, Portrait 1]
type = Explod
trigger1 = !Time
anim = 8525 + Root, var(40)
ID = 20
sprPriority = -16
posType = Back
removeTime = 40
superMoveTime = -1

[State 8520, Portrait 2]
type = Explod
trigger1 = !Time
anim = 8525 + Root, var(40)
ID = 21
sprPriority = -16
posType = Back
removeTime = 40
superMoveTime = -1

[State 8520, Scale Portrait 1a]
type = ModifyExplod
trigger1 = NumExplod(20) && Time < 16
ID = 20
posType = Back
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 121)
scale = 1 - (0.03125 * Time), 1 - (0.03125 * Time)
trans = AddAlpha
alpha = (8 * Time), 256

[State 8520, Scale Portrait 2a]
type = ModifyExplod
trigger1 = NumExplod(21) && Time < 16
ID = 21
posType = Back
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 121)
scale = 2 - (0.09375 * Time), 2 - (0.09375 * Time)
trans = AddAlpha
alpha = (8 * Time), 256

[State 8520, Scale Portrait 1b]
type = ModifyExplod
trigger1 = NumExplod(20) && (Time = [16,32])
ID = 20
posType = Back
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 121)
scale = 0.5, 0.5
trans = AddAlpha
alpha = 256, 256

[State 8520, Scale Portrait 2b]
type = ModifyExplod
trigger1 = NumExplod(21) && (Time = [16,32])
ID = 21
scale = 0,0

[State 8520, Scale Portrait 1c]
type = ModifyExplod
trigger1 = NumExplod(20) && Time >= 32
ID = 20
posType = Back
pos = 160 + (8 * (Time - 32)), floor((1.3333333 * GameHeight / GameWidth) * 121)
scale = 0.5, 0.5
trans = AddAlpha
alpha = 128 - 16 * (Time - 32), 256

[State 8520, Scale Portrait 2c]
type = ModifyExplod
trigger1 = NumExplod(21) && Time >= 32
ID = 21
posType = Back
pos = 160 - (8 * (Time - 32)), floor((1.3333333 * GameHeight / GameWidth) * 121)
scale = 0.5, 0.5
trans = AddAlpha
alpha = 128 - 16 * (Time - 32), 256

[State 8520, Lines Explod]
type = Explod
trigger1 = Time = 0 || Time = 8 || Time = 16 || Time = 24
anim = 8521
ID = ifElse(Time = 24, 4, ifElse(Time = 16, 3, ifElse(Time = 8, 2, 1)))
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 16
superMoveTime = -1

[State 8520, Scale Lines Explod 1]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 1 - (0.0625 * Time), 1 - (0.0625 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 64 * Time, 256), 256

[State 8520, Scale Lines Explod 2]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 1-(0.0625 * (Time - 8)), 1 - (0.0625 * (Time - 8))
trans = AddAlpha
alpha = ifElse((Time - 8) < 4, 64 * (Time - 8), 256), 256

[State 8520, Scale Lines Explod 3]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 1 - (0.0625 * (Time - 16)), 1 - (0.0625 * (Time - 16))
trans = AddAlpha
alpha = ifElse((Time - 16) < 4, 64 * (Time - 16), 256), 256

[State 8520, Scale Lines Explod 4]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 1 - (0.0625 * (Time - 24)), 1 - (0.0625 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8520, Circle Explod]
type = Explod
trigger1 = Time = 24
anim = 8522
ID = 10
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1 ,1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 32
superMoveTime = -1

[State 8520, Scale Circle Explod]
type = ModifyExplod
trigger1 = NumExplod(10)
ID = 10
scale = 2 - (0.125 * (Time - 24)), 2 - (0.125 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8520, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 40

[State 8520, End]
type = DestroySelf
trigger1 = Time >= 40



;========================<SUPER FINISH>=============================
[StateDef 8600]
type = A
velSet = 0,0
anim = 1

[State 8600, Super Finish Sound]
type = PlaySnd
trigger1 = !Time
value = 8600,0
channel = 1

[State 8600, SndPan]
type = SndPan
trigger1 = Time <= 80
channel = 1
absPan = ceil(sin(GameTime / 20.0 * pi) * 160)

[State 8600, BG PalFX]
type = BGpalFX
trigger1 = Time < 16
time = 1
mul = 0, 0, 0

[State 8600, BG PalFX]
type = BGpalFX
trigger1 = Time = [16,24)
time = 1
mul = 32 * (Time - 16), 32 * (Time - 16), 32 * (Time - 16)

[State 8600, Move Name: Custom Combo]
type = VarSet
trigger1= !Time && Root, var(23) = 900
var(0) = 1

[State 8600, Move Name: Genocide Heaven]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3000, 3099])
var(0) = 2

[State 8600, Move Name: Gigantic Pressure]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3100, 3199])
var(0) = 3

[State 8600, Move Name: Dead End Screamer]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3200, 3299])
var(0) = 4

[State 8600, Move Name: Destruction Omega]
type = VarSet
trigger1= !Time && (Root, var(23) = [3300, 3399])
var(0) = 5

[State 8600, Move Name: Rugal Execution]
type = VarSet
trigger1= !Time && (Root, var(23) = [3400, 3499])
var(0) = 6

[State 8600, Move Name: Kaiser Reppuken]
type = VarSet
trigger1= !Time && (Root, var(23) = [3500, 3599])
var(0) = 7

[State 8600, Move Name: Kaiser Phoenix]
type = VarSet
trigger1= !Time && (Root, var(23) = [3600, 3699])
var(0) = 8

[State 8600, Move Name: G-End]
type = VarSet
trigger1= !Time && (Root, var(23) = [3700, 3799])
var(0) = 9

[State 8600, Super Finish Explod]
type = Explod
trigger1 = !Time
anim = 8600
ID = 8600
ontop = 1
postype = Left
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * GameHeight / GameWidth)
bindTime = -1
removeTime = 32
pauseMoveTime = -1
superMoveTime = -1

[State 8600, Super Finish Explod Fade]
type = ModifyExplod
trigger1 = NumExplod(8600)
ID = 8600
trans = AddAlpha
alpha = ifElse(Time < 16, 256, 256 - 32 * (Time - 16)), 256

[State 8600, Text 1]
type = Explod
trigger1 = !Time && var(0)
anim = 8610 + var(0)
ID = 10
onTop = 1
posType = Left
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * GameHeight / GameWidth)
bindTime = -1
removeTime = 32
pauseMoveTime = -1
superMoveTime = -1

[State 8600, Text 2]
type = Explod
trigger1 = !Time && var(0)
anim = 8610 + var(0)
ID = 11
onTop = 1
posType = left
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * GameHeight / GameWidth)
bindTime = -1
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8600, Text 1 Fade]
type = ModifyExplod
trigger1 = NumExplod(10)
ID = 10
trans = AddAlpha
alpha = ifElse(Time < 16, 256, 256 - 32 * (Time - 16)), ifElse(Time < 16, 0, 32 * (Time - 16))

[State 8600, Text 2 Fade]
type = ModifyExplod
trigger1 = NumExplod(11)
ID = 11
scale = 0.5 + (0.0625 * Time), 0.5 + (0.0625 * Time)
trans = AddAlpha
alpha = 256 - (32 * Time), 32 * Time

[State 8600, Circle Explod]
type = Explod
trigger1 = !Time
anim = 8601
ID = 8601
under = 1
posType = Left
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
bindTime = -1
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8600, Circle Fade]
type = ModifyExplod
trigger1 = NumExplod(8601)
ID = 8601
scale = (0.25 * time) * (1.3333333 * GameHeight / GameWidth), (0.25 * time) * (1.3333333 * GameHeight / GameWidth)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8600, Assert: NoFG]
type = AssertSpecial
trigger1 = Time < 16
flag = NoFG

[State 8600, Assert: NoBarDisplay]
type = AssertSpecial
trigger1 = Time < 24
flag = NoBarDisplay

[State 8600, RemoveExplod]
type = RemoveExplod
trigger1 = Time >= 24
trigger2 = RoundState < 3

[State 8600, End]
type = DestroySelf
trigger1 = RoundState < 3



;========================<CAMERA CONTROL>=============================
[StateDef 8999]
type = S
velSet = 0,0
anim = 1

[State 8999, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 1,1
ignoreHitPause = 1

[State 8999, End]
type = DestroySelf
trigger1 = RoundState = 2



;========================<RODEM HELPER (INTRO)>=======================
[Statedef 10190]
type = A
physics = N
ctrl = 0
anim = 10190
sprpriority = 2
velset = 0, 0

[State 10190, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(root, StateNo = 190, 10190, ifElse(root, StateNo = 191, 10191, 10192))

[State 10190, VelAdd]
type = VelSet
trigger1 = Anim = 10190 && AnimElem = 46
trigger2 = Anim = 10191 && AnimElem = 41
trigger3 = Anim = 10192 && AnimElem = 42
x = -2.5

[State 10190, Voice]
type = PlaySnd
trigger1 = Anim = 10192 && AnimElem = 8
value = 10192, 0
channel = 1

[State 10190, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100



;========================<STATUE HELPER (INTRO)>=======================
[Statedef 10194]
type = A
physics = N
ctrl = 0
anim = 10194
sprpriority = 2
velset = 0, 0

[State 10194, Hitting the Floor Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 101, 0
channel = 1

[State 10194, Hitting the Floor Sound]
type = PlaySnd
trigger1 = AnimElem = 8
value = F7, 0
channel = 1

[State 10194, End]
type = DestroySelf
trigger1 = Time = 287



;====================<PROJECTILE SHIELD>=========================
[Statedef 11194]
type = S
movetype = A
physics = N
ctrl = 0
velSet = 0, 0
anim = 11194
sprPriority = 4

[State 11194, Turn]
type = Turn
trigger1 = Facing != Root, Facing

[State 11194, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 1
pos = 0, 0

[State 11194, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 11194
ignoreHitPause = 1

[State 11194, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NP, SP
time = -1
ignoreHitPause = 1

[State 11194, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 11194
value = 11194

[State 11194, Miss]
type = HitDef
trigger1 = 1
attr = S, SP
hitFlag =
sparkXY = -10,0

[State 11194, End]
type = DestroySelf
trigger1 = Root, StateNo != 194
trigger2 = Root, MoveType = H



;========================<GOUKI HELPER (INTRO)>=======================
[Statedef 10197]
type = A
physics = N
ctrl = 0
anim = 10197
sprpriority = -1
velset = 0, 0

[State 10197, Special Anim v/s Gouki]
type = ChangeAnim
triggerAll = !Time
trigger1 = Enemy, Name = "Akuma" || Enemy, Name = "cvsgouki" || Enemy, Name = "Gouki" || Enemy, Name = "Shin Akuma" || Enemy, Name = "Shin Gouki" || Enemy, Name = "ShinAkuma" || Enemy, Name = "ShinGouki" || Enemy, Name = "Pocket Shin Gouki"
value = 20197

[State 10197, SprPriority]
type = SprPriority
trigger1 = AnimElemTime(5) = 0
value = 3

[State 10197, VelAdd]
type = VelSet
trigger1 = AnimElemTime(10) = 1
x = -40

[State 10197, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100



;========================<EYE HELPER (INTRO)>=======================
[Statedef 10198]
type = A
physics = N
ctrl = 0
anim = 10198
sprpriority = 3
velset = 0, 0

[State 10198, VelSet]
type = BindToRoot
trigger1 = IsHelper(10198)
trigger1 = (Root, StateNo = 198) && (Root, AnimElemTime(8) < 0)
time = 1
pos = 0, 0

[State 10198, VelSet]
type = BindToRoot
trigger1 = IsHelper(10198)
trigger1 = (Root, StateNo = 198) && (Root, AnimElemTime(7) >= 0) && (Root, AnimElemTime(8) < 0)
time = 1
pos = 2, -1

[State 10198, VelSet]
type = BindToRoot
trigger1 = IsHelper(10198)
trigger1 = (Root, StateNo = 198) && (Root, AnimElemTime(8) >= 0) && (Root, AnimElemTime(10) < 0)
time = 1
pos = 3, -3

[State 10198, VelSet]
type = BindToRoot
trigger1 = IsHelper(10198)
trigger1 = (Root, StateNo = 198) && (Root, AnimElemTime(10) >= 0)
time = 1
pos = 2, -1

[State 10198, End]
type = DestroySelf
trigger1 = !AnimTime



;========================<EXPLODSIVE BUFFERING HELPER>=============================
[StateDef 90000005]
type = A
physics = N
moveType = I
anim = 1
velSet = 0,0
ctrl = 0

[State 90000005, Turn]
type = Turn
trigger1 = (Root, NumExplod(94646464) || Root, NumExplod(92468246)) && !var(0)
trigger2 = !Root, NumExplod(94646464) && !Root, NumExplod(92468246) && var(0)
ignoreHitPause = 1

[State 90000005, Reverse Left/Right]
type = VarSet
trigger1 = (Root, NumExplod(94646464) || Root, NumExplod(92468246)) && !var(0)
var(0) = 1
ignoreHitPause = 1

[State 90000005, Reset Turn Variable]
type = VarSet
trigger1 = !Root, NumExplod(94646464) && !Root, NumExplod(92468246) && var(0)
var(0) = 0
ignoreHitPause = 1

[State 90000005, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "by JustMorphPointman"
ignoreHitPause = 1