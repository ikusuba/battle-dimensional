; ________________________________________________
;| Haohmaru by KarmaCharmeleon		|
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
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



;====================<SENPUU RETSU ZAN PROJECTILE>=========================
[StateDef 1005]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3

[State 1005, PRCD]
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
x = 3.35195530726

[State 1005, VelSet]
type = VelSet
trigger1 = Root, var(40) = 1
y = ifElse(var(10) = 2, -3.75, ifElse(var(10) = 1, -2.5, -1.25))

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
sparkXY = -10, 0

[State 1005, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 || Root, var(20))
attr = S, SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil((ceil(ifElse(fvar(11) * (ifElse(var(10) = 2, 84, ifElse(var(10), 77, 70)) - 14 * (Root, var(40))) < 7, 7, fvar(11) * (ifElse(var(10) = 2, 84, ifElse(var(10), 77, 70)) - 14 * (Root, var(40)))))) * ifElse(root, var(41), 1.25, 1)), ceil(7 * ifElse(root, var(41), 1.25, 1))
getPower = ifElse(!(Root, var(13)), 144, 72) * !(Root, var(20)), 36 * !(Root, var(20))
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 8, 16)
guard.pauseTime = 0, ifElse((Root, var(20)), 8, 16)
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -1.11731843575, ifElse(var(10) = 2, -10.78125, ifElse(var(10) = 1, -10, -8.75))
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -1.11731843575, -10.78125
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.439453125
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
palFX.sinAdd= -255,-255,-255,48
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
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), -32
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
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), -32
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
trigger1 = Root, StateNo = [1000, 1030]
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
ctrl = 0
velSet = 0,0
sprPriority = 3
moveHitPersist = 1

[State 1007, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && MoveHit = 1
value = 1007

[State 1007, PosSet]
type = PosSet
trigger1 = !Time && MoveHit = 1
y = 0

[State 1007, Projectile Flag Decrement]
type = ParentVarAdd
trigger1 = !Time
var(39) = -1

[State 1007, PlaySnd]
type = PlaySnd
trigger1 = !Time && MoveHit = 1
value = 2,6
channel = 2
volume = -128
lowPriority = 1

[State 1007, Senpuu Retsu Zan Sound Effect]
type = PlaySnd
trigger1 = !Time && MoveHit = 1
value = 1006, 0
channel = 1

[State 1007, Transparency]
type = Trans
trigger1 = Anim = 1007
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1007, Transparency]
type = Trans
trigger1 = Anim = 1005
trans = AddAlpha
alpha = 256 - (32 * Time), 256
ignoreHitPause = 1

[State 1007, End]
type = ChangeState
trigger1 = Time >= 8 && Anim = 1005
trigger2 = !AnimTime && Anim = 1007
value = 1008


;Wait
[StateDef 1008]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velSet = 0,0

[State 1008, End]
type = DestroySelf
trigger1 = !NumTarget
trigger2 = NumTarget
trigger2 = Target, Time <= 1 && !(Target, HitShakeOver)



;====================<SENPUU RETSU ZAN PROJECTILE (REFLECTED)>=========================
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
x = 3.35195530726

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
damage = (ceil(ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 84, ifElse(var(10), 77, 70)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 84, ifElse(var(10), 77, 70))))) * ifElse(root, var(41), 1.25, 1)), ceil(7 * ifElse(root, var(41), 1.25, 1))
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 8, 16)
guard.pauseTime = 0, ifElse((Root, var(20)), 8, 16)
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
ground.velocity = -1.11731843575, ifElse(var(10) = 2, -10.78125, ifElse(var(10) = 1, -10, -8.75))
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -1.11731843575, ifElse(var(10) = 2, -10.78125, ifElse(var(10) = 1, -10, -8.75))
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.439453125
fall = 1
air.fall = 1
fall.recover = 0
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



;====================<EX SENPUU RETSU ZAN PROJECTILE>=========================
[StateDef 1035]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
hitCountPersist = 1

[State 1035, PRCD]
type = VarSet
trigger1 = 1
sysvar(0) = 131072

[State 1035, Set reflected StateNo]
type = VarSet
trigger1 = 1
sysvar(1) = 1035

[State 1035, Projectile Health]
type = VarSet
trigger1 = !Time && !PrevStateNo
var(0) = 3

[State 1035, Projectile Health Decrement]
type = VarAdd
trigger1 = !Time && PrevStateNo
var(0) = -1
ignoreHitPause = 1
persistent = 0

[State 1035, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = ifElse(var(0) > 0, 1035, 1037)
ignoreHitPause = 1

[State 1035, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1035, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1005
value = 1005

[State 1035, VelSet]
type = VelSet
trigger1 = Time > 1 && !PrevStateNo
trigger2 = PrevStateNo
x = ifElse(Time < 2 && var(0) < 5, 1, 4.46927374302)

[State 1035, VelSet]
type = VelSet
trigger1 = Root, var(40) = 1
y = ifElse(Time < 2 && var(0) < 5, -1, -1.25)

[State 1035, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1035, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1035, Projectile Flag Increment]
type = ParentVarAdd
trigger1 = !Time
var(39) = 1

[State 1035, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1035, Miss]
type = HitDef
trigger1 = 1
attr = S, SP
hitFlag =
sparkXY = -10, 0

[State 1035, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && Root, var(15) < (1 + HitCount)
trigger1 = var(0) > 0
ID = 1035
attr = S, SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * (ifElse(var(0) > 1, 28, 56) - 7 * (Root, var(40))) < 7, 7, fvar(11) * (ifElse(var(0) > 1, 28, 56) - 7 * (Root, var(40))))), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 16
guard.pauseTime = 0, 16
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -1.11731843575, -10.78125
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -1.11731843575, -10.78125
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.439453125
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 34
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1035, End]
type = ChangeState
trigger1 = MoveContact
value = ifElse(NumTarget, 1036, 1035)
ignoreHitPause = 1

[State 1035, End]
type = ChangeState
trigger1 = MoveReversed
value = ifElse(var(0) > 0, 1035, 1037)
ignoreHitPause = 1

[State 1035, End]
type = ChangeState
trigger1 = !var(0) && PrevStateNo && Time = 2
value = 1037
ignoreHitPause = 1

[State 1035, Projectile Flag Off]
type = ParentVarAdd
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100
var(39) = -1

[State 1035, End]
type = DestroySelf
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100


;Hit Pause
[StateDef 1036]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1
hitCountPersist = 1

[State 1036, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 1036, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 2
ignorehitPause = 1

[State 1036, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), -32
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1036, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), -32
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1036, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1036, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
trigger1 = !(HitDefAttr = SCA,AT)
var(15) = 1

[State 1036, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1036, ProjContact]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
trigger1 = Root, StateNo = 1030
var(18) = 1

[State 1036, End]
type = ChangeState
trigger1 = Time >= 4 && var(0) > 1
trigger2 = Time >= 0 && var(0) <= 1
value = ifElse(var(0) <= 1, 1037, 1035)


;Disappear
[StateDef 1037]
type = A
physics = N
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 3
moveHitPersist = 1

[State 1037, Juggle Reset]
type = ParentVarSet
trigger1 = root, var(40) = 1
trigger1 = MoveHit && !(Root, var(11)) && NumTarget(1035)
var(15) = 0

[State 1037, EX Senpuu Retsu Zan Juggle Flag]
type = ParentVarAdd
trigger1 = root, var(40) = 1
trigger1 = MoveHit && NumTarget(1035)
var(11) = 1
persistent = 0

[State 1037, Juggle Flag]
type = ParentVarSet
trigger1 = root, var(40) = 1
trigger1 = root, var(11) = 2
var(16) = 1

[State 1037, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && MoveHit = 1
value = 1007

[State 1037, PosSet]
type = PosSet
trigger1 = !Time && MoveHit = 1
y = 0

[State 1037, Projectile Flag Decrement]
type = ParentVarSet
trigger1 = !Time
var(39) = -1

[State 1037, PlaySnd]
type = PlaySnd
trigger1 = !Time && MoveHit = 1
value = 2,6
channel = 2
volume = -128
lowPriority = 1

[State 1037, Senpuu Retsu Zan Sound Effect]
type = PlaySnd
trigger1 = !Time && MoveHit = 1
value = 1006, 0
channel = 1

[State 1037, Transparency]
type = Trans
trigger1 = Anim = 1007
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1037, Transparency]
type = Trans
trigger1 = Anim = 1005
trans = AddAlpha
alpha = 256 - (32 * Time), 256
ignoreHitPause = 1

[State 1037, End]
type = ChangeState
trigger1 = Time >= 8 && Anim = 1005
trigger2 = !AnimTime && Anim = 1007
value = 1008



;====================<PROJECTILE REFLECTOR>=========================
[Statedef 1305]
type = S
movetype = A
physics = N
ctrl = 0
velSet = 0, 0
anim = 1305
sprPriority = 4

[State 1305, Turn]
type = Turn
trigger1 = Facing != Root, Facing

[State 1305, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 1
pos = 0, 0

;=======================================;
;PROJECTILE REFLECTION COMPATIBILITY    ;
;?????????????                   ;
;by Vans                                ;
;GUIDE:                                 ;
;FOR REFLECTOR / ??????????HELPER?	;
;sysvar(0) = 262144                  	;
;=======================================;
[State 1305, Compatibility]
type = VarSet
trigger1 = !Time && !PrevStateNo
sysvar(0) = 262144
;=======================================;

[State 1305, Reflector]
type = ReversalDef
trigger1 = IsHelper(1305)
reversal.attr = SCA, NP, SP
pauseTime = 0,0
sparkNo = -1
sparkXY = 0,0
p1StateNo = 1306
p2StateNo = 1307
ID = 1305
numHits = 0

[State 1305, EX Reflector]
type = ReversalDef
trigger1 = !IsHelper(1305)
reversal.attr = SCA, NP, SP, HP
pauseTime = 0,0
sparkNo = -1
sparkXY = 0,0
p1StateNo = 1306
p2StateNo = 1307
ID = 1305
numHits = 0

[State 1305, HitBy (Normal)]
type = HitBy
trigger1 = IsHelper(1305)
value = SCA, NP, SP
ignoreHitPause = 1

[State 1305, HitBy (EX)]
type = HitBy
trigger1 = !IsHelper(1305)
value = SCA, NP, SP, HP
ignoreHitPause = 1

[State 1305, HitOverride]
type = HitOverride
trigger1 = !Time
attr = SCA, AA, AP, AT
stateNo = 1306
time = -1
ignoreHitPause = 1

[State 1305, DestroySelf]
type = DestroySelf
trigger1 = (Root, StateNo = 1300 || Root, StateNo = 1330) && Root, AnimElemTime(9) >= 0
trigger2 = Root, StateNo != 1300 && Root, StateNo != 1330


;Successful Reflection
[Statedef 1306]
type = S
moveType = I
physics = N
ctrl = 0
velSet = 0, 0
anim = 1
sprPriority = 4

[State 1306, VarSet]
type = VarSet
trigger1 = NumTarget
var(0) = Target, ID
persistent = 0
ignoreHitPause = 1

[State 1306, DisplayToClipboard]
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
[State 1306, VarSet]
type = VarSet
;RETURNING YOUR OWN PROJECTILE
;?????????????
trigger1 = GetHitVar(ChainID)&2**17
sysvar(1) = sysvar(0)

[State 1306, ChangeState]
type = ChangeState
trigger1 = PlayerIDExist(var(0))
trigger1 = (PlayerID(var(0)),sysvar(0)=131072) 
;RETURNING YOUR OWN PROJECTILE
;?????????????
trigger2 = GetHitVar(ChainID)&2**17
value = 1310
ctrl = 0
;=======================================;

[State 1306, ChangeState]
type = ChangeState
trigger1 = !Time 
value = 1315

[State 1306, DestroySelf]
type = DestroySelf
trigger1 = Time = 30


;Reflecting A Helper projectile
[Statedef 1307]
physics = N
movetype = I
ctrl = 0

[State 1307, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "sysvar(0) = %d pao pao cafe = %d";Buff = %d GNDTYPE = %d"
params = sysvar(0),sysvar(0)&2**17
ignoreHitPause = 1

[State 1307, SelfState]
type = SelfState
trigger1 = sysvar(0)&2**17
value = sysvar(1)
ctrl = 0

[State 1307, DestroySelf]
type = DestroySelf 
trigger1 = IsHelper
trigger1 = Time = 5
ignoreHitPause = 1

[State 1307, SelfState]
type = SelfState
trigger1 = !IsHelper
value = 0
ctrl = 1

[State 1307, Anim]
type = ChangeAnim2
trigger1 = !Time
value = 1


;Special Reflection
[Statedef 1310]
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
[State 1310, INFORMATION SHARING] 	;
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

[State 1310, ChangeAnim]
type = ChangeAnim
trigger1 = !time
value = 1

[State 1310, StateTypeSet]
type = StateTypeSet
trigger1 = root, MoveType = H
trigger2 = cond(PlayerIDExist(var(0)), (PlayerID(var(0)), MoveType = I), 0)
movetype = I

[State 1310, PosSet]
type = PosSet
trigger1 = !Time || Time
trigger1 = PlayerIDExist(var(0))
x = PlayerID(var(0)),Pos X
y = PlayerID(var(0)),Pos Y

[State 1310, ChangeState]
type = DestroySelf
triggerall = Time > 2
trigger1 = !PlayerIDExist(var(0))



;====================<REFLECTED PROJECTILE>=========================
[StateDef 1315]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
hitCountPersist = 1

[State 1315, PRCD]
type = VarSet
trigger1 = 1
sysvar(0) = 131072

[State 1315, Set reflected StateNo]
type = VarSet
trigger1 = 1
sysvar(1) = 1025

[State 1315, Projectile Health]
type = VarSet
triggerAll = IsHelper(1335)
trigger1 = !Time && PrevStateNo = 1305
var(0) = 2

[State 1315, Projectile Health Decrement]
type = VarAdd
triggerAll = IsHelper(1335)
trigger1 = !Time && PrevStateNo = 1316
var(0) = -1
ignoreHitPause = 1
persistent = 0

[State 1315, HitOverride]
type = HitOverride
trigger1 = IsHelper(1305)
attr = SCA, AA, AP, AT
time = -1
stateno = 1317
ignoreHitPause = 1

[State 1315, HitOverride]
type = HitOverride
trigger1 = IsHelper(1335)
attr = SCA, AA, AP, AT
time = -1
stateno = ifElse(var(0) > 0, 1315, 1317)
ignoreHitPause = 1

[State 1315, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignoreHitPause = 1

[State 1315, Button Detect]
type = VarSet
trigger1= !Time && !PrevStateNo
var(10) = Root, var(10)

[State 1315, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1315 && Anim != 1316
value = 1315

[State 1315, BindToRose]
type = BindToParent
trigger1 = !Time && PrevStateNo != 1316
pos = 85, -55
ignorehitpause = 1

[State 1315, VelSet]
type = VelSet
trigger1 = IsHelper(1305)
x = 4.46927374302

[State 1315, VelSet]
type = VelSet
trigger1 = IsHelper(1335)
x = ifElse(Time < 2 && var(0) < 2, 1, 6.70391061453)

[State 1315, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1315, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1315, Projectile Flag On]
type = ParentVarAdd
trigger1 = !Time
var(39) = 1

[State 1315, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1315, Miss]
type = HitDef
trigger1 = 1
attr = S, SP
hitFlag =
sparkXY = -10,0

[State 1315, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 || Root, var(20))
trigger1 = IsHelper(1305)
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 84, ifElse(var(10), 77, 70)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 84, ifElse(var(10), 77, 70)))), 7
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
ground.velocity = -11.0509440309, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
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

[State 1315, EX HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < (1 + HitCount))
trigger1 = IsHelper(1335)
trigger1 = var(0) > 0
attr = S, SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(IsHelper(3065), 28, 56) < 7, 7, fvar(11) * ifElse(IsHelper(3065), 28, 56))), 7
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
ground.velocity = -11.0509440309, 0
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
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

[State 1315, ChangeState]
type = ChangeState
triggerAll = IsHelper(1305)
trigger1 = MoveContact
value = 1316
ignoreHitPause = 1

[State 1315, ChangeState]
type = ChangeState
triggerAll = IsHelper(1305)
trigger1 = MoveReversed
value = 1317
ignoreHitPause = 1

[State 1315, ChangeState]
type = ChangeState
triggerAll = IsHelper(1335)
trigger1 = MoveContact
value = ifElse(NumTarget, 1316, 1315)
ignoreHitPause = 1

[State 1315, ChangeState]
type = ChangeState
triggerAll = IsHelper(1335)
trigger1 = MoveReversed
value = ifElse(var(0) > 0, 1315, 1317)
ignoreHitPause = 1

[State 1315, End]
type = ChangeState
triggerAll = IsHelper(1335)
trigger1 = !var(0) && PrevStateNo && Time = 2
value = 1317
ignoreHitPause = 1

[State 1315, Projectile Flag Off]
type = ParentVarAdd
trigger1 = IsHelper(1335)
trigger1 = !var(10)
var(39) = -1

[State 1315, Projectile Flag Off]
type = ParentVarAdd
trigger1 = FrontEdgeDist < -100 || BackEdgeDist < -100
var(39) = -1

[State 1315, End]
type = DestroySelf
trigger1 = IsHelper(1335)
trigger1 = !var(10)

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

[State 1316, Turn]
type = Turn
trigger1 = MoveContact
trigger1 = Root, NumProjID(262144)
ignoreHitPause = 1
persistent = 0

[State 1316, ChangeState]
type = ChangeState
trigger1 = MoveContact
trigger1 = Root, NumProjID(262144)
value = sysvar(1)
ignoreHitPause = 1

[State 1316, EnvShake]
type = EnvShake
trigger1 = Time = 1 && PrevStateNo = 1325 && !MoveGuarded
time = 14
ampl = 4
freq = 120
ignoreHitPause = 1

[State 1316, End]
type = ChangeState
triggerAll = IsHelper(1305)
trigger1 = Time >= 0 && PrevStateNo != 1325
trigger2 = Time >= 1
value = 1317

[State 1316, End]
type = ChangeState
triggerAll = IsHelper(1335)
trigger1 = Time >= 3 && var(0) > 1
trigger2 = Time >= 0 && var(0) <= 1
value = ifElse(var(0) <= 1, 1317, 1315)


;Disappear
[StateDef 1317]
type = A
physics = N
moveType = A
anim = 1317
ctrl = 0
velSet = 0,0
sprPriority = 3
moveHitPersist = 1

[State 1317, Projectile Flag Off]
type = ParentVarAdd
trigger1 = !Time
var(39) = -1

[State 1317, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 2,6
channel = 2
volume = -128
lowPriority = 1

[State 1317, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 1317, End]
type = ChangeState
trigger1 = !AnimTime
value = 1008



;====================<SENPUU HA PROJECTILE>=========================
[StateDef 1405]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 4
hitCountPersist = 1

[State 1405, PRCD]
type = VarSet
trigger1 = 1
sysvar(0) = 131072

[State 1405, Set reflected StateNo]
type = VarSet
trigger1 = 1
sysvar(1) = 1405

[State 1405, Projectile Health]
type = VarSet
trigger1 = !Time && !PrevStateNo
var(0) = 3

[State 1405, Projectile Health Decrement]
type = VarAdd
trigger1 = !Time && PrevStateNo
var(0) = -1
ignoreHitPause = 1
persistent = 0

[State 1405, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateNo = ifElse(var(0) > 0, 1405, 1407)
ignoreHitPause = 1

[State 1405, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1405, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1405
value = 1405

[State 1405, Button Detect]
type = VarSet
trigger1 = !Time && !PrevStateNo
var(10) = Root, var(10)

[State 1405, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1405, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1405, Projectile Flag On]
type = ParentVarAdd
trigger1 = !Time
var(39) = 1

[State 1405, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1405, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1405, HitDef (Normal)]
type = HitDef
trigger1 = !(Root, var(16)) && Root, var(15) < (1 + HitCount)
trigger1 = IsHelper(1405)
trigger1 = var(0) > 0
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(0) > 1, 28, ifElse(var(10) = 2, 56, ifElse(var(10) = 1, 42, 28))) < 7, 7, fvar(11) * ifElse(var(0) > 1, 28, ifElse(var(10) = 2, 56, ifElse(var(10) = 1, 42, 28))))), 7
getPower = ifElse(!(Root, var(13)), 144, 72) * !(Root, var(20)), 36 * !(Root, var(20))
givePower = 36, 36
pauseTime = 0, 12
guard.pauseTime = 0, 12
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
ground.velocity = ifElse(var(0) > 1, -11.0335195531, -3.35195530726), ifElse(var(0) > 1, 0, -7.34375)
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -7.34375
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = ifElse(var(0) > 1, 0, 1)
air.fall = 1
fall.recover = 0
fall.recoverTime = 34
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1405, HitDef (EX)]
type = HitDef
trigger1 = !(Root, var(16)) && Root, var(15) < (1 + HitCount)
trigger1 = IsHelper(1435)
trigger1 = var(0) > 0
ID = 1435
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(0) > 1, 28, ifElse(var(10) = 2, 56, ifElse(var(10) = 1, 42, 28))) < 7, 7, fvar(11) * ifElse(var(0) > 1, 28, ifElse(var(10) = 2, 56, ifElse(var(10) = 1, 42, 28))))), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 12
guard.pauseTime = 0, 12
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
ground.velocity = -4.68937069644
ground.cornerPush.velOff = 0
guard.velocity = -4.68937069644
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -7.34375
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1405, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = ifElse(NumTarget, 1406, 1405)
ignoreHitPause = 1

[State 1405, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = ifElse(var(0) > 0, 1405, 1407)
ignoreHitPause = 1

[State 1035, End]
type = ChangeState
trigger1 = !var(0) && PrevStateNo && Time = 2
value = 1407
ignoreHitPause = 1

[State 1405, Projectile Flag Off]
type = ParentVarAdd
trigger1 = !AnimTime
var(39) = -1

[State 1405, End]
type = DestroySelf
trigger1 = !AnimTime


;Hit Pause
[StateDef 1406]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1
hitCountPersist = 1

[State 1406, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 1406, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 2
ignorehitPause = 1

[State 1406, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 35, ceil(P2Dist x), 35)), -25
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1406, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 35, ceil(P2Dist x), 35)), -25
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1406, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1406, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
trigger1 = !(HitDefAttr = SCA,AT)
var(15) = 1

[State 1406, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1406, ProjContact]
type = ParentVarSet
triggerAll = MoveContact && NumTarget
trigger1 = Root, StateNo = [1400, 1430]
var(18) = 1

[State 1406, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1406, End]
type = ChangeState
trigger1 = Time >= 3 && var(0) > 1
trigger2 = Time >= 0 && var(0) <= 1
value = ifElse(var(0) <= 1, 1407, 1405)


;Disappear
[StateDef 1407]
type = A
physics = N
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 3
moveHitPersist = 1

[State 1407, Projectile Flag Decrement]
type = ParentVarSet
trigger1 = !Time
var(39) = -1

[State 1407, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 2,6
channel = 2
volume = -128
lowPriority = 1

[State 1407, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256 - (32 * Time), 256
ignoreHitPause = 1

[State 1407, End]
type = ChangeState
trigger1 = !AnimTime
value = 1008



;====================<TENHA HASHIN KEN PROJECTILE>=========================
[StateDef 3405]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
hitCountPersist = 1

[State 3405, PRCD]
type = VarSet
trigger1 = 1
sysvar(0) = 131072

[State 3405, Set reflected StateNo]
type = VarSet
trigger1 = 1
sysvar(1) = 3405

[State 3405, Projectile Health]
type = VarSet
trigger1 = !Time && !PrevStateNo
var(0) = 5

[State 3405, Projectile Health Decrement]
type = VarAdd
trigger1 = !Time && PrevStateNo
var(0) = -1
ignoreHitPause = 1
persistent = 0

[State 3405, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = ifElse(var(0) > 0, 3405, 3407)
ignoreHitPause = 1

[State 3405, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 3405, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3405
value = 3405

[State 3405, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 3405, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 3405, Projectile Flag Increment]
type = ParentVarAdd
trigger1 = !Time
var(39) = 1

[State 3405, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 3405, Miss]
type = HitDef
trigger1 = 1
attr = S, SP
hitFlag =
sparkXY = -10, 0

[State 3405, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && Root, var(15) < (2 + HitCount)
trigger1 = var(0) > 0
ID = 3405
attr = S, SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * (ifElse(var(0) > 1, 35, 70)) < 7, 7, fvar(11) * (ifElse(var(0) > 1, 35, 70)))), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, 6
guard.pauseTime = 0, 6
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = Low
air.type = Low
ground.hitTime = 12
ground.slideTime = 12
guard.hitTime = 12
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = 0, -15
ground.cornerPush.velOff = 0
guard.velocity = -11.0509440309
guard.cornerPush.velOff = 0
air.velocity = 0, -15
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.5126953125
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3
kill = (ifElse(var(0) > 1, 0, 1))

[State 3405, End]
type = ChangeState
trigger1 = MoveContact
value = ifElse(NumTarget, 3406, 3405)
ignoreHitPause = 1

[State 3405, End]
type = ChangeState
trigger1 = MoveReversed
value = ifElse(var(0) > 0, 3405, 3407)
ignoreHitPause = 1

[State 1035, End]
type = ChangeState
trigger1 = !var(0) && PrevStateNo && Time = 2
value = 3407
ignoreHitPause = 1

[State 3405, Projectile Flag Off]
type = ParentVarAdd
trigger1 = !AnimTime
var(39) = -1

[State 3405, End]
type = DestroySelf
trigger1 = !AnimTime


;Hit Pause
[StateDef 3406]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1
hitCountPersist = 1

[State 3406, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 3406, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 2
ignorehitPause = 1

[State 3406, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), -150
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3406, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), -150
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3406, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 3406, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
trigger1 = !(HitDefAttr = SCA,AT)
var(15) = 1

[State 3406, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 3406, ProjContact]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
trigger1 = Root, StateNo = 3410
var(18) = 1

[State 3406, End]
type = ChangeState
trigger1 = Time >= 4 && var(0) > 1
trigger2 = Time >= 0 && var(0) <= 1
value = ifElse(var(0) <= 1, 3407, 3405)


;Disappear
[StateDef 3407]
type = A
physics = N
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 3
moveHitPersist = 1

[State 3407, Juggle Reset]
type = ParentVarSet
trigger1 = MoveHit && !(Root, var(27)) && NumTarget(3405)
var(15) = 0

[State 3407, EX Senpuu Retsu Zan Juggle Flag]
type = ParentVarAdd
trigger1 = MoveHit && NumTarget(3405)
var(27) = 1
persistent = 0

[State 3407, Juggle Flag]
type = ParentVarSet
trigger1 = root, var(27) = 2
var(16) = 1

[State 3407, Projectile Flag Decrement]
type = ParentVarAdd
trigger1 = !Time
var(39) = -1

[State 3407, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 2, 6
channel = 2
volume = -128
lowPriority = 1

[State 3407, Senpuu Retsu Zan Sound Effect]
type = PlaySnd
trigger1 = !Time
value = 1006, 0
channel = 1

[State 3407, Transparency]
type = Trans
trigger1 = Anim = 3405
trans = AddAlpha
alpha = 256 - (32 * Time), 256
ignoreHitPause = 1

[State 3407, End]
type = ChangeState
trigger1 = Time >= 8
value = 1008



;========================<RAGE BAR>=============================
;Rage Meter
[StateDef 4000]
type = A
physics = N
velSet = 0, 0
anim = 1

[State 4000, Explod]
type = Explod
trigger1 = (root, var(55) = 0)
trigger1 = !NumExplod(4000) && TeamSide = 1
anim = 4000
ID = 4000
posType = Left
pos = (floor((1.3333333 * GameHeight / GameWidth) * 125) + (Root, var(51))), (floor((1.3333333 * GameHeight / GameWidth) * 223) - (Root, var(52)))
scale = 1 * (1.3333333 * GameHeight / GameWidth), 1 * (1.3333333 * GameHeight / GameWidth)
bindTime = -1
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
onTop = 1

[State 4000, Explod]
type = Explod
trigger1 = (root, var(55) = 0)
trigger1 = !NumExplod(4001) && TeamSide = 1
anim = 4001
ID = 4001
posType = Left
pos = (floor((1.3333333 * GameHeight / GameWidth) * 125) + (Root, var(51))), (floor((1.3333333 * GameHeight / GameWidth) * 223) - (Root, var(52)))
scale = 1 * (1.3333333 * GameHeight / GameWidth), 1 * (1.3333333 * GameHeight / GameWidth)
bindtime = -1
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
onTop = 1

[State 4000, Explod]
type = Explod
trigger1 = (root, var(55) = 0)
trigger1 = !NumExplod(4000) && TeamSide = 2
anim = 4005
ID = 4000
posType = Right
pos = (floor((1.3333333 * GameHeight / GameWidth) * -125) - (Root, var(51))), (floor((1.3333333 * GameHeight / GameWidth) * 223) - (Root, var(52)))
scale = 1 * (1.3333333 * GameHeight / GameWidth), 1 * (1.3333333 * GameHeight / GameWidth)
bindTime = -1
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
onTop = 1

[State 4000, Explod]
type = Explod
trigger1 = (root, var(55) = 0)
trigger1 = !NumExplod(4001) && TeamSide = 2
anim = 4006
ID = 4001
posType = Right
pos = (floor((1.3333333 * GameHeight / GameWidth) * -125) - (Root, var(51))), (floor((1.3333333 * GameHeight / GameWidth) * 223) - (Root, var(52)))
scale = 1 * (1.3333333 * GameHeight / GameWidth), 1 * (1.3333333 * GameHeight / GameWidth)
bindtime = -1
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
onTop = 1

[State 4000, Rage Explosion Meter (Left)]
type = Explod
trigger1 = (root, var(55) = 1)
trigger1 = !NumExplod(4950) && TeamSide = 1
anim = 4950
ID = 4950
posType = Left
pos = (floor((1.3333333 * GameHeight / GameWidth) * 125) + (Root, var(51))), (floor((1.3333333 * GameHeight / GameWidth) * 223) - (Root, var(52)))
scale = 1 * (1.3333333 * GameHeight / GameWidth), 1 * (1.3333333 * GameHeight / GameWidth)
bindTime = -1
removeTime = -1
pauseMoveTime = -2
superMoveTime = -2
onTop = 1

[State 4000, Rage Explosion Meter (Right)]
type = Explod
trigger1 = (root, var(55) = 1)
trigger1 = !NumExplod(4950) && TeamSide = 2
anim = 4955
ID = 4950
posType = Right
pos = (floor((1.3333333 * GameHeight / GameWidth) * -125) - (Root, var(51))), (floor((1.3333333 * GameHeight / GameWidth) * 223) - (Root, var(52)))
scale = 1 * (1.3333333 * GameHeight / GameWidth), 1 * (1.3333333 * GameHeight / GameWidth)
bindTime = -1
removeTime = -1
pauseMoveTime = -2
superMoveTime = -2
onTop = 1

[State 4000, Rage Meter Gain/Drain]
type = ModifyExplod
trigger1 = NumExplod(4001)
ID = 4001
scale = ((root, var(45)) / 480.0) * (1.3333333 * GameHeight / GameWidth), 1

[State 4000, RemoveExplod]
type = RemoveExplod
trigger1 = (root, var(55) = 1) && NumExplod(4000)
ID = 4000

[State 4000, RemoveExplod]
type = RemoveExplod
trigger1 = (root, var(55) = 1) && NumExplod(4001)
ID = 4001

[State 4000, Rage Explosion Meter Drain]
type = ModifyExplod
trigger1 = NumExplod(4950)
ID = 4950
scale = ((root, var(45)) / 480.0) * (1.3333333 * GameHeight / GameWidth), 1

[State 4000, DestroySelf]
type = DestroySelf
trigger1 = (root, var(55) = 1) && (Root, var(45) <= 0)


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


;======================<BLOOD>===========================
;Weak Blood
[Statedef 8050]
type = A
anim = 1
velset = 0, 0

[State 8050, Explod]
type = Explod
trigger1 = !Time
anim = 8050
ID = 8050
posType = P1
vel = -3 + (Random / 166.7), -7.5 - (Random / 400.0)
accel = 0, 0.5
facing = IfElse(Random < 500, -1, 1)
vFacing = IfElse(Random < 500, -1, 1)
trans = AddAlpha
alpha = 256, 128
sprPriority = 5
scale = 0.5, 0.5
ownPal = 1

[State 8050, Explod]
type = Explod
trigger1 = !Time
anim = 8050
ID = 8050
postype = p1
vel = -3 + (random / 166.7), -7.5 -(random / 400.0)
accel = 0, 0.5
facing = IfElse(Random < 500, -1, 1)
vFacing = IfElse(Random < 500, -1, 1)
trans = AddAlpha
alpha = 256, 128
sprPriority = 5
scale = 0.5, 0.5
ownPal = 1

[State 8050, Explod]
type = Explod
trigger1 = !Time
anim = 8050
ID = 8050
posType = P1
vel = -3 + (random / 166.7), -7.5 -(random / 400.0)
accel = 0, 0.5
facing = IfElse(Random < 500, -1, 1)
vFacing = IfElse(Random < 500, -1, 1)
trans = AddAlpha
alpha = 256, 128
sprPriority = 5
scale = 0.5, 0.5
ownPal = 1

[State 8050, DestroySelf]
type = DestroySelf
trigger1 = 1



;Medium Blood
[Statedef 8051]
type = A
anim = 1
velSet = 0, 0

[State 8051, Explod]
type = Explod
trigger1 = !Time
anim = 8051
ID = 8050
posType = P1
vel = -10 + (Random / 50.0), -5 - (Random / 200.0)
accel = 0, 0.5
facing = IfElse(Random < 500, -1, 1)
vfacing = IfElse(Random < 500, -1, 1)
trans = AddAlpha
alpha = 256, 128
sprPriority = 5
scale = 0.5, 0.5
ownpal = 1

[State 8051, Explod]
type = Explod
trigger1 = !Time
anim = 8050
ID = 8050
posType = P1
vel = -4 + (Random / 125.0), -7.5 - (Random / 400.0)
accel = 0, 0.5
facing = IfElse(Random < 500, -1, 1)
vFacing = IfElse(Random < 500, -1, 1)
trans = AddAlpha
alpha = 256, 128
sprPriority = 5
scale = 0.5, 0.5
ownPal = 1

[State 8051, Explod]
type = Explod
trigger1 = !Time
anim = 8050
ID = 8050
posType = P1
vel = -4 + (Random / 125.0), -7.5 - (Random / 400.0)
accel = 0, 0.5
facing = IfElse(Random < 500, -1, 1)
vFacing = IfElse(Random < 500, -1, 1)
trans = AddAlpha
alpha = 256, 128
sprPriority = 5
scale = 0.5, 0.5
ownPal = 1

[State 8051, Explod]
type = Explod
trigger1 = !Time
anim = 8050
ID = 8050
posType = P1
vel = -4 + (Random / 125.0), -7.5 - (Random / 400.0)
accel = 0, 0.5
facing = IfElse(Random < 500, -1, 1)
vFacing = IfElse(Random < 500, -1, 1)
trans = AddAlpha
alpha = 256, 128
sprPriority = 5
scale = 0.5, 0.5
ownPal = 1

[State 8051, DestroySelf]
type = DestroySelf
trigger1 = 1



;Strong Blood
[Statedef 8052]
type = A
anim = 1
velSet = 0, 0

[State 8052, Explod]
type = Explod
trigger1 = !Time
anim = 8052
ID = 8050
posType = P1
vel = -(Random / 333.3), -2.5 - (Random / 400.0)
accel = 0, 0.25
trans = AddAlpha
alpha = 256, 128
sprPriority = 5
scale = 0.5, 0.5
ownPal = 1

[State 8052, Explod]
type = Explod
trigger1 = !Time
anim = 8051
ID = 8050
posType = P1
vel = -10 + (Random / 50.0), -5 - (Random / 200.0)
accel = 0, 0.5
facing = IfElse(Random < 500, -1, 1)
vFacing = IfElse(Random < 500, -1, 1)
trans = AddAlpha
alpha = 256, 128
sprPriority = 5
scale = 0.5, 0.5
ownPal = 1

[State 8052, Explod]
type = Explod
trigger1 = !Time
anim = 8051
ID = 8050
postype = P1
vel = -10 + (Random / 50.0), -5 - (random / 200.0)
accel = 0, 0.5
facing = IfElse(Random < 500, -1, 1)
vFacing = IfElse(Random < 500, -1, 1)
trans = AddAlpha
alpha = 256, 128
sprPriority = 5
scale = 0.5, 0.5
ownPal = 1

[State 8052, Explod]
type = Explod
trigger1 = !Time
anim = 8050
ID = 8050
posType = P1
vel = -5 + (Random / 100.0), -7.5 - (Random / 400.0)
accel = 0, 0.5
facing = IfElse(Random < 500, -1, 1)
vFacing = IfElse(Random < 500, -1, 1)
trans = AddAlpha
alpha = 256, 128
sprPriority = 5
scale = 0.5, 0.5
ownPal = 1

[State 8052, Explod]
type = Explod
trigger1 = !Time
anim = 8050
ID = 8050
posType = P1
vel = -5 + (Random / 100.0), -7.5 - (Random / 400.0)
accel = 0, 0.5
facing = IfElse(Random < 500, -1, 1)
vFacing = IfElse(Random < 500, -1, 1)
trans = AddAlpha
alpha = 256, 128
sprPriority = 5
scale = 0.5, 0.5
ownPal = 1

[State 8052, Explod]
type = Explod
trigger1 = !Time
anim = 8050
ID = 8050
posType = P1
vel = -5 + (Random / 100.0), -7.5 - (Random / 400.0)
accel = 0, 0.5
facing = IfElse(Random < 500, -1, 1)
vFacing = IfElse(Random < 500, -1, 1)
trans = AddAlpha
alpha = 256, 128
sprPriority = 5
scale = 0.5, 0.5
ownPal = 1

[State 8052, DestroySelf]
type = DestroySelf
trigger1 = 1



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



;========================<FLAMES>=============================
[StateDef 8150]
type = A
velSet = 0,0
anim = 1

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

[State 8150, Flame Explod 1]
type = Explod
trigger1 = PlayerIDexist(var(0))
anim = 8150
sprPriority = 3
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
sprPriority = 3
posType = P1
random = 60,60
vel = (Random / 2000.0), -0.5 - (Random / 2000.0)
facing = ifElse(Random < 500, -1, 1)
vfacing = ifElse(Random < 500, -1, 1)
scale = 0.5,0.5
ownpal = 1

[State 8150, End]
type = DestroySelf
trigger1 = Time >= 600
trigger2 = !PlayerIDexist(var(0))

[State 8150, End]
type = DestroySelf
triggerAll = PlayerIDexist(var(0))
trigger1 = PlayerID(var(0)), ctrl
trigger2 = PlayerID(var(0)), Movetype != H || PlayerID(var(0)), StateNo = 5300
trigger3 = PlayerID(var(0)), StateType = L && (PlayerID(var(0)), StateNo != [5080,5081])
trigger4 = Root, MoveHit



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
pos = 0, 0

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
vel = ((RootDist x + 0) / 32.0), ((RootDist y - 65) / 32.0)
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



;========================<RAGE EXPLOSION>=============================
[StateDef 8450]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velSet = 0,0
sprPriority = 5

[State 8450, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8450, BGpalFX]
type = BGpalFX
trigger1 = Time < 25
time = 1
mul = 128,128,128

[State 8450, Explosion Effect]
type = Explod
trigger1 = !Time
anim = 8450
ID = 8450
sprPriority = 5
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 8450, Explosion Effect (Subtraction)]
type = Explod
trigger1 = !Time
anim = 18450
ID = 18450
sprPriority = 4
bindtime = -1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 8450, Kanji Effect]
type = Explod
trigger1 = !Time
anim = 8455
ID = 8455
sprPriority = 5
bindtime = -1
posType = P1
pos = 0, -25
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 8450, Kanji Effect (Subtraction)]
type = Explod
trigger1 = !Time
anim = 18455
ID = 18455
sprPriority = 4
bindtime = -1
posType = P1
pos = 0, -25
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 8450, End]
type = DestroySelf
trigger1 = Time >= 30



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
type = explod
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

[State 8600, Move Name: Ikari Bakuhatsu]
type = VarSet
trigger1 = !Time && Root, var(23) = 950
var(0) = 2

[State 8600, Move Name: Hi Ougi: Tenha Fuujin Zan]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3000, 3099])
var(0) = 3

[State 8600, Move Name: Issen]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3150, 3199])
var(0) = 4

[State 8600, Move Name: Zetsumei Ougi: Tenha Seiou Zan]
type = VarSet
trigger1= !Time && (Root, var(23) = [3200, 3299])
var(0) = 5

[State 8600, Move Name: Hi Ougi: Tenha Dankuu Retsu Zan Text]
type = VarSet
trigger1= !Time && (Root, var(23) = [3300, 3399])
var(0) = 6

[State 8600, Move Name: Zetsumei Ougi: Tenha Hashin Ken Text]
type = VarSet
trigger1= !Time && (Root, var(23) = [3400, 3499])
var(0) = 7

[State 8600, Move Name: Zetsumei Ougi: Zoubu Eguri Text]
type = VarSet
trigger1= !Time && (Root, var(23) = [3500, 3599])
var(0) = 8

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