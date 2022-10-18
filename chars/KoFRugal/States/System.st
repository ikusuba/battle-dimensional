; _________________________________________________
;| Rugal Bernstein by KarmaCharmeleon		 |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================<SYSTEM STATES>========================================
;==============================================================================================

;====================<STANDING>====================
[StateDef 0]
type = S
physics = S
moveType = I
velSet = 0, 0
sprPriority = 0

[State 0, Remove Explods]
type = RemoveExplod
trigger1 = IsHelper

[State 0, Destroy Helpers]
type = DestroySelf
trigger1 = IsHelper

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != (ifElse(var(40) = 2, 3, ifElse(var(40) = 1, 2, 0))) && Anim != 5
trigger2 = Anim = 5 && !AnimTime
value = (ifElse(var(40) = 2, 3, ifElse(var(40) = 1, 2, 0)))

[State 0, Skywalker]
type = ChangeState
triggerall = pos y < 0
trigger1 = !NumEnemy
trigger2 = NumEnemy = 1
trigger2 = (Enemy, Name = "M -NES Game 1" + Enemy, Name = "M -NES Game 2" + Enemy, Name = "M -GB Game 1" + Enemy, AuthorName = "Bane84") < 2
trigger3 = Numenemy >= 2
trigger3 = (Enemy(0), Name = "M -NES Game 1" + Enemy(0), Name = "M -NES Game 2" + Enemy(0), Name = "M -GB Game 1" + Enemy(0), AuthorName = "Bane84") < 2
trigger3 = (Enemy(1), Name = "M -NES Game 1" + Enemy(1), Name = "M -NES Game 2" + Enemy(1), Name = "M -GB Game 1" + Enemy(1), AuthorName = "Bane84") < 2
value = 50

[State 0, Dead]
type = ChangeState
trigger1 = !Alive
value = 5050



;====================<CROUCHING>====================
;Stand to Crouch
[StateDef 10]
type = C
physics = C
moveType = I
velSet = 0,0
sprPriority = 0

[State 10, Reversed Commands: change to jumping]
type = ChangeState
trigger1 = !Time
trigger1 = NumExplod(92828282) || NumExplod(92468246) && command = "holddown"
value = 40

[State 10, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && Anim = 12
value = 10
elem = 3 - AnimElemNo(0)

[State 10, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 10
value = 10

[State 10, End]
type = ChangeState
trigger1 = !AnimTime
value = 11


;Crouching
[StateDef 11]
type = C
physics = C
moveType = I
anim = 11
velSet = 0,0
sprPriority = 0

[State 11, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 6 && !AnimTime
value = 11


;Crouch to Stand
[StateDef 12]
type = S
physics = S
moveType = I
velSet = 0,0
sprPriority = 0

[State 12, Reversed Commands: change to "fake" crouch state]
type = ChangeState
trigger1 = !Time
trigger1 = (NumExplod(92828282) || NumExplod(92468246)) && command = "holdup"
value = 13

[State 12, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && Anim = 10
value = 12
elem = 3 - AnimElemNo(0)

[State 12, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 12
value = 12

[State 12, End]
type = ChangeState
trigger1 = command = "holddown" && command != "holdup"
value = 10

[State 12, End]
type = ChangeState
trigger1 = !AnimTime
value = 0


;"Fake" crouch state (for reversed commands)
[StateDef 13]
type = C
physics = C
moveType = I
velSet = 0,0
sprPriority = 0
ctrl = 1

[State 13, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 10 && Anim != 11 && Anim != 141
value = 10

[State 13, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 10 && !AnimTime
trigger2 = Anim = 141 && !AnimTime
value = 11



;====================<WALKING>====================
[StateDef 20]
type = S
physics = S
moveType = I
sprPriority = 0

[State 20, VelSet]
type = VelSet
trigger1 = !NumExplod(94646464) && !NumExplod(92468246)
trigger1 = command = "holdfwd"
trigger2 = NumExplod(94646464) || NumExplod(92468246)
trigger2 = command = "holdback"
x = ifElse(var(40) = 2, 5.2374301676, const(velocity.walk.fwd.x))

[State 20, VelSet]
type = VelSet
trigger1 = !NumExplod(94646464) && !NumExplod(92468246)
trigger1 = command = "holdback"
trigger2 = NumExplod(94646464) || NumExplod(92468246)
trigger2 = command = "holdfwd"
x = ifElse(var(40) = 2, -3.98044692737, const(velocity.walk.back.x))

[State 20, ChangeAnim]
type = ChangeAnim
triggerAll = vel x > 0
trigger1 = Anim != 20 && Anim != 5
trigger2 = Anim = 5 && AnimElemTime(1) >= 1
value = 20

[State 20, ChangeAnim]
type = ChangeAnim
triggerAll = vel x < 0
trigger1 = Anim != 21 && Anim != 5
trigger2 = Anim = 5 && AnimElemTime(1) >= 1
value = 21



;====================<JUMPING>====================
;Jumping
[StateDef 40]
type = S
physics = S
moveType = I
ctrl = 0
velSet = 0,0
sprPriority = 1
faceP2 = 1

[State 40, Reversed Commands: change to "fake" crouch state]
type = ChangeState
trigger1 = !Time
trigger1 = (NumExplod(92828282) || NumExplod(92468246)) && command = "holdup"
value = 13

[State 40, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 40

[State 40, Direction]
type = VarSet
trigger1 = !AILevel
trigger1 = !NumExplod(94646464) && !NumExplod(92468246)
sysvar(1) = ifElse(!Time, 0, ifElse(command = "holdfwd", 1, ifElse(command = "holdback", -1, sysvar(1))))

[State 40, Direction (Reversed Commands)]
type = VarSet
trigger1 = !AILevel
trigger1 = NumExplod(94646464) || NumExplod(92468246)
sysvar(1) = ifElse(!Time, 0, ifElse(command = "holdback", 1, ifElse(command = "holdfwd", -1, sysvar(1))))

[State 40, Direction (AI)]
type = VarSet
trigger1 = AILevel
sysvar(1) = ifElse((EnemyNear, MoveType != A || BackEdgeBodyDist <= 10), 1, ifElse((EnemyNear, MoveType = A), -1, 0))

[State 40, High Jump]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse(command = "highjump", 3, 0)
var(3) = ifElse(NumExplod(90000408), 3, 0)

[State 40, High Jump (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(3) = ifElse((P2BodyDist x >= 160 || Random < (25 * (AILevel ** 2 / 64.0))), 3, 0)

[State 40, High Jump]
type = VarSet
trigger1 = !Time && PrevStateNo = 100
var(3) = 3

[State 40, Low Jump]
type = VarSet
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && command != "holdup" && (var(3) != [1,2])
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && command != "holddown" && (var(3) != [1,2])
var(3) = ifElse((var(3) = 3 && sysvar(1)), 2, 1)

[State 40, Low Jump (AI)]
type = VarSet
trigger1 = AILevel && (var(3) != [1,2])
trigger1 = (EnemyNear, StateType = C) && Random < 500
var(3) = ifElse((var(3) = 3 && sysvar(1)), 2, 1)

[State 40, Jump Sound]
type = PlaySnd
trigger1 = !AnimTime
value = ifElse((var(3) = [2,3]), 41, 40), 0

[State 40, Dust Helper]
type = Helper
trigger1 = !AnimTime
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 40, Velocity: Normal Jump (Normal/Omega)]
type = VelSet
triggerAll = var(40) != 2
trigger1 = !AnimTime
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = ifElse(!sysvar(1), const(velocity.jump.y), ifElse(sysvar(1) = 1, -8.59375, -8.90625))

[State 40, Velocity: Low Jump (Normal/Omega)]
type = VelSet
triggerAll = var(40) != 2
trigger1 = !AnimTime && var(3) = 1
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = 0.75 * ifElse(!sysvar(1), const(velocity.jump.y), ifElse(sysvar(1) = 1, -8.59375, -8.90625))

[State 40, Velocity: Long Low Jump (Normal/Omega)]
type = VelSet
triggerAll = var(40) != 2
trigger1 = !AnimTime && var(3) = 2
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.runjump.fwd.x), const(velocity.runjump.back.x)))
y = 0.75 * ifElse(!sysvar(1), const(velocity.jump.y), ifElse(sysvar(1) = 1, -8.59375, -8.90625))

[State 40, Velocity: Long Jump (Normal/Omega)]
type = VelSet
triggerAll = var(40) != 2
trigger1 = !AnimTime && var(3) = 3
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.runjump.fwd.x), const(velocity.runjump.back.x)))
y = ifElse(!sysvar(1), const(velocity.runjump.y), ifElse(sysvar(1) = 1, -8.59375, -8.90625))

[State 40, Velocity: Normal Jump (God)]
type = VelSet
triggerAll = var(40) = 2
trigger1 = !AnimTime
x = ifElse(!sysvar(1), 0, ifElse(sysvar(1) = 1, 3.91061452514, -4.46927374302))
y = ifElse(!sysvar(1), -7.96875, ifElse(sysvar(1) = 1, -7.8125, -8.125))

[State 40, Velocity: Low Jump (God)]
type = VelSet
triggerAll = var(40) = 2
trigger1 = !AnimTime && var(3) = 1
x = ifElse(!sysvar(1), 0, ifElse(sysvar(1) = 1, 3.91061452514, -4.46927374302))
y = 0.75 * ifElse(!sysvar(1), -7.96875, ifElse(sysvar(1) = 1, -7.8125, -8.125))

[State 40, Velocity: Long Low Jump (God)]
type = VelSet
triggerAll = var(40) = 2
trigger1 = !AnimTime && var(3) = 2
x = ifElse(!sysvar(1), 0, ifElse(sysvar(1) = 1, 5.86592178771, -6.70391061453))
y = 0.75 * ifElse(!sysvar(1), -7.96875, ifElse(sysvar(1) = 1, -7.8125, -8.125))

[State 40, Velocity: Long Jump (God)]
type = VelSet
triggerAll = var(40) = 2
trigger1 = !AnimTime && var(3) = 3
x = ifElse(!sysvar(1), 0, ifElse(sysvar(1) = 1, 5.86592178771, -6.70391061453))
y = ifElse(!sysvar(1), -9.16404724121, ifElse(sysvar(1) = 1, -7.8125, -8.125))

[State 40, End]
type = ChangeState
trigger1 = !AnimTime
value = 50
ctrl = 1


;In Air
[StateDef 50]
type = A
physics = N
moveType = I
sprPriority = 1

[State 50, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(!vel x , 41, ifElse(vel x > 0, 42, 43)) + 10 * (var(3) = [1,2])
persistent = 0

[State 50, Assert: No Guard]
type = AssertSpecial
trigger1 = var(3) = [1,2]
flag = NoAirGuard
ignoreHitPause = 1

[State 50, Grounded Frame]
type = PosFreeze
trigger1 = Time < 1 && PrevStateNo = 40
value = 1

[State 50, Gravity]
type = VelAdd
trigger1 = Time > 1 || PrevStateNo != 40
y = ifElse(var(40) = 2, 0.537109375, 0.4638671875)

[State 50, VelAdd]
type = VelAdd
trigger1 = vel x
trigger1 = Time > 1 || PrevStateNo != 40
x = ifElse((var(3) = [2,3]), -0.04091742318, -0.02727828212) * ifElse(vel x < 0, -1, 1)

[State 50, Landing]
type = ChangeState
trigger1 = pos y > -vel y
value = 52


[StateDef 51]
type = A
physics = N
moveType = I
sprPriority = 1

[State 51, Gravity]
type = VelAdd
trigger1 = Time > 0
y = ifElse(var(40) = 2, 0.537109375, 0.4638671875)

[State 51, VelAdd]
type = VelAdd
trigger1 = vel x
trigger1 = Time >= 1 || PrevStateNo != 40
x = ifElse((var(3) = [2,3]), -0.04091742318, -0.02727828212) * ifElse(vel x < 0, -1, 1)

[State 51, Landing]
type = ChangeState
trigger1 = pos y > -vel y
value = 52


;Landing
[StateDef 52]
type = S
physics = S
moveType = I
anim = 47
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 52, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && (var(3) = 1 || var(3) = 2)
trigger1 = (PrevStateNo = [600,699])
value = 57

[State 52, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 52, CtrlSet]
type = CtrlSet
trigger1 = !Time && (PrevStateNo != [600,699])
trigger2 = Time = 1 && Anim != 57
value = 1

[State 52, ChangeState to Guarding]
type = ChangeState
;ctrl && command = "holdback"
trigger1 = ctrl && (ifElse(!NumExplod(94646464) && !NumExplod(92468246), ifElse(P2dist x < 0, command = "holdfwd", command = "holdback"), ifElse(P2dist x < 0, command = "holdback", command = "holdfwd")))
trigger1 = InGuardDist && (PrevStateNo != [600,699])
value = 120

[State 52, Assert: NoWalk]
type = AssertSpecial
trigger1 = Anim != 5
flag = NoWalk
ignoreHitPause = 1

[State 52, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 52, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 52, ChangeAnim to Turning]
type = ChangeAnim
trigger1 = ctrl && P2Dist x < 0
trigger1 = Anim != 5
value = 5

[State 52, Turn]
type = Turn
trigger1 = Anim = 5 && AnimElem = 1

[State 52, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;======================<RUN>===========================
[StateDef 100]
type = S
physics = N
moveType = I
anim = 100
ctrl = 0
sprPriority = 1

[State 100, VelSet]
type = VelSet
trigger1 = 1
x = ifElse(var(40) = 2, 7.0530726257, const(velocity.run.fwd.x))

[State 100, Step Sound]
type = PlaySnd
trigger1 = (AnimElem = 3 || AnimElem = 7)
value = 100, ifElse((AnimElem = 3), 0, 1)

[State 100, Jump]
type = ChangeState
triggerAll = !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(94646464) && !NumExplod(92468246)
trigger1 = command = "holdfwd" && command = "holdup"
trigger2 = NumExplod(92828282)
trigger2 = command = "holdfwd" && command = "holddown"
trigger3 = NumExplod(94646464)
trigger3 = command = "holdback" && command = "holdup"
trigger4 = NumExplod(92468246)
trigger4 = command = "holdback" && command = "holddown"
value = 40

[State 100, Jump (AI)]
type = ChangeState
trigger1 = AILevel && Random < 25
value = 40

[State 100, End]
type = ChangeState
trigger1 = !NumExplod(94646464) && !NumExplod(92468246)
trigger1 = !AILevel && command != "holdfwd"
trigger2 = NumExplod(94646464) || NumExplod(92468246)
trigger2 = !AILevel && command != "holdback"
trigger3 = AILevel && P2BodyDist x <= 90
value = 101


;Stop Running
[StateDef 101]
type = S
physics = S
moveType = I
anim = 101
ctrl = 0
sprPriority = 1

[State 101, Stopping Sound]
type = PlaySnd
trigger1 = !Time
value = 101,0

[State 101, Skid Dust]
type = Explod
trigger1 = !Time
anim = 8104
sprPriority = 3
posType = P1
pos = 0,0
vel = 0,0
scale = 0.5,0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 101, Jump]
type = ChangeState
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && command = "holdup"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && command = "holddown"
value = 40

[State 101, End]
type = ChangeState
trigger1 = !AnimTime
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
value = ifElse(command = "holddown", 10, 0)
ctrl = 1

[State 101, End (Reversed Commands)]
type = ChangeState
trigger1 = !AnimTime
trigger1 = NumExplod(92828282) || NumExplod(92468246)
value = ifElse(command = "holdup", 10, 0)
ctrl = 1



;========================<DASH BACKWARDS>==========================
[StateDef 105]
type = A
physics = N
moveType = I
velSet = 0,0
anim = 105
ctrl = 0
sprPriority = 1

[State 105, Back Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 105, 0

[State 105, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
facing = -1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 105, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = ifElse(var(40) = 2, -10.0558659218, const(velocity.run.back.x))
y = ifElse(var(40) = 2, -3.125, const(velocity.run.back.y))

[State 105, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 0
x = 0.08729050279
y = 0.48828125

[State 105, End]
type = ChangeState
trigger1 = AnimElemTime(2) >= 0
trigger1 = pos y > -vel y
value = 106


;Stop Dashing Backwards
[StateDef 106]
type = S
physics = S
ctrl = 0
anim = 106
velSet = 0,0

[State 106, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 106, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 100,1

[State 106, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprpriority = -3
postype = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 106, CtrlSet]
type = CtrlSet
trigger1 = Time >= 2
value = 1

[State 106, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;=================<DASH FORWARD>=================
[StateDef 110]
type = A
physics = N
moveType = I
anim = 110
ctrl = 0
sprPriority = 1

[State 110, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 110,0

[State 110, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 110, VarSet -> Running]
type = VarSet
trigger1 = !Time
sysvar(1) = 1

[State 110, VarSet -> Not Running]
type = VarSet
triggerAll = AnimElemTime(2) <= 0 && !AILevel
trigger1 = !NumExplod(94646464) && !NumExplod(92468246)
trigger1 = command != "holdfwd"
trigger2 = NumExplod(94646464) || NumExplod(92468246)
trigger2 = command != "holdback"
sysvar(1) = 0

[State 110, ChangeState to Running]
type = ChangeState
trigger1 = !AILevel
trigger1 = AnimElemTime(2) = 0 && sysvar(1)
value = 100

[State 110, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = ifElse(var(40) = 2, 10.0558659218, 6.42458100559)
y = -0.9375

[State 110, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 0
x = -0.08729050279
y = ifElse(var(40) = 2, 0.09765625, 0.1953125)

[State 110, End]
type = ChangeState
triggerAll = var(40) != 2
trigger1 = AnimElemTime(2) >= 0
trigger1 = pos y > -vel y
value = 111

[State 110, End (God)]
type = ChangeState
triggerAll = var(40) = 2
trigger1 = AnimElemTime(2) >= 0
trigger1 = vel y >= 0
value = 111


;Stop Dashing Forward
[StateDef 111]
type = S
physics = S
ctrl = 1
anim = 111
velSet = 0,0

[State 111, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 111, Dash End Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 100,0

[State 111, Landing Dust Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 111, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;====================<DODGE>====================
[StateDef 700]
type = S
physics = S
moveType = I
anim = 700
ctrl = 0
velSet = 0,0
sprPriority = -2

[State 700, Voice]
type = PlaySnd
trigger1 = !Time
value = 4, 0 + 10 * (var(40) = 2)
channel = 0

[State 700, Dodge Sound]
type = PlaySnd
trigger1 = !Time
value = 1, 3
channel = 1

[State 700, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 700, HitBy]
type = HitBy
trigger1 = 1
value = SCA,AT
time = 1

[State 700, Attack]
type = ChangeState
trigger1 = !AILevel && Time = [15,25]
;command = "x" || command = "y" || command = "z" || command = "a" || command = "b" || command = "c"
trigger1 = NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220) || NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250)
;ifElse((command = "x" || command = "y" || command = "z"), 220, 245)
value = ifElse((NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)), 225, 250)

[State 700, Attack (AI)]
type = ChangeState
trigger1 = AILevel && (Time = [15,25]) && NumEnemy
trigger1 = (EnemyNear, MoveType != A) && (P2BodyDist x = [-60, 60]) && (P2Dist y >= -60)
value = ifElse(Random < 666, 225, 250)

[State 700, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;================<ROLL FORWARD>================
[StateDef 710]
type = S
physics = N
moveType = I
anim = 710
ctrl = 0
velSet = 0, 0
sprPriority = 1

[State 710, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 710, HitBy]
type = HitBy
trigger1 = AnimElemTime(8) < 0
value = SCA,AT
time = 1

[State 710, Voice]
type = PlaySnd
trigger1 = !Time
value = ifElse(Random < 500, 4, 710), 2 + 10 * (var(40) = 2)
channel = 0

[State 710, Roll Sound]
type = PlaySnd
trigger1 = !Time
value = 110, 0
channel = 1

[State 710, PosAdd]
type = VelSet
trigger1 = AnimElem = 2
x = 5.02793296089

[State 710, PosAdd]
type = VelSet
trigger1 = AnimElem = 8
x = 0

[State 710, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===============<ROLL BACKWARDS>===============
[StateDef 715]
type = S
physics = N
moveType = I
anim = 715
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 715, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 715, HitBy]
type = HitBy
trigger1 = AnimElemTime(10) < 0
value = SCA,AT
time = 1

[State 715, Voice]
type = PlaySnd
trigger1 = !Time
value = ifElse(Random < 500, 4, 710), 2 + 10 * (var(40) = 2)
channel = 0

[State 715, Roll Sound]
type = PlaySnd
trigger1 = !Time
value = 110,0
channel = 1

[State 715, PosAdd]
type = VelSet
trigger1 = AnimElem = 2
x = -5.02793296089

[State 715, PosAdd]
type = VelSet
trigger1 = AnimElem = 10
x = 0

[State 715, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;==========<POWER CHARGE>==========
[StateDef 730]
type = S
physics = S
moveType = I
anim = 730
velSet = 0,0
ctrl = 0

[State 730, PowerAdd]
type = PowerAdd
triggerAll = Power < const(data.power) && Power < PowerMax
trigger1 = !AILevel && (command = "holdb" && command = "holdy")
trigger2 = AILevel
value = 2 + ifElse(time < 60, 0, (time - 60) / 12)

[State 730, Voice]
type = PlaySnd
trigger1 = !Time
value = 730, 1 + 10 * (var(40) = 2)
channel = 0

[State 730, Character Flash]
type = PalFX
trigger1 = 1
time = 1
add = 75 + ceil(sin(Time / 6.0 * pi) * 75), 25 + ceil(sin(Time / 6.0 * pi) * 25),0

[State 730, Power Charge Helper]
type = Helper
trigger1 = !NumHelper(8330)
helperType = Normal
stateNo = 8330
ID = 8330
name = "Power Charge"
posType = P1
pos = 0, 0
pauseMoveTime = 65535
superMoveTime = 65535
ownPal = 1

[State 730, Particles]
type = Helper
trigger1 = !NumHelper(8331)
helperType = Normal
stateNo = 8331
ID = 8331
name = "Particles"
postype = P1
pauseMoveTime = 65535
superMoveTime = 65535
ownPal = 1

[State 730, End]
type = ChangeState
trigger1 = Power >= const(data.power) || Power >= PowerMax || RoundState != 2
trigger2 = !AILevel && (command != "holdb" || command != "holdy")
trigger3 = AILevel && (InGuardDist || P2BodyDist x <= 120)
value = 731
ctrl = 1


;Power Charge End
[StateDef 731]
type = S
physics = S
moveType = I
anim = 731
velSet = 0,0
ctrl = 1

[State 731, StopSnd]
type = StopSnd
trigger1 = !Time
channel = 0

[State 731, Full Power Voice]
type = PlaySnd
trigger1 = !Time && Power >= const(data.power)
value = 5200, 1 + 10 * (var(40) = 2)
channel = 0
persistent = 0

[State 730, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;====================<ZERO COUNTER>====================
[StateDef 750]
type = S
physics = S
moveType = I
anim = 750
velSet = 0,0
ctrl = 0
sprPriority = 2
powerAdd = -1000
faceP2 = 1

[State 750, Button]
type = VarSet
trigger1 = !Time && !AILevel
;(command = "412k")
var(10) = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)
ignoreHitPause = 1

[State 750, Button (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2StateType = A), 0, ifElse((P2StateType = C), 1, ifElse(Random < 500, 0, 1)))
ignoreHitPause = 1

[State 750, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 750, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 750, Voice]
type = PlaySnd
trigger1 = !Time
value = 4, 2 + 10 * (var(40) = 2)
channel = 0

[State 750, Zero Counter FX Helper]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8350
ID = 8350
name = "Zero Counter"
posType = P1
pos = 30, -98
superMoveTime = 255
ownPal = 1

[State 750, SuperPause]
type = SuperPause
trigger1 = !Time
time = 15
moveTime = 15
p2DefMul = 1
anim = -1
sound = s750,0
darken = 0

[State 750, End]
type = ChangeState
trigger1 = Time >= 15
value = ifElse(var(10) = 1, 2910, 2900)



;====================<PARRY>====================
;Standing Parry
[StateDef 760]
type = S
physics = S
moveType = I
anim = 760
velSet = 0,0
ctrl = 0
sprPriority = 2
powerAdd = 78
faceP2 = 1

[State 760, HitBy]
type = HitBy
trigger1 = 1
value = SCA,AT
time = 1

[State 760, Pause]
type = Pause
trigger1 = !Time
time = 15
moveTime = 15
endCmdBufTime = 15
pauseBg = 0

[State 760, Stop]
type = PosFreeze
trigger1 = 1
value = 1

[State 760, No Walking]
type = VarSet
trigger1 = 1
var(26) = 7

[State 760, Voice]
type = PlaySnd
trigger1= !Time
value = 4, 0 + 10 * (var(40) = 2)
channel = 0

[State 760, Parry Sound]
type = PlaySnd
trigger1 = !Time
value = 760, 0
channel = 1

[State 760, Player Flash]
type = PalFX
trigger1 = !Time
add = 0,64,255
sinadd = 0,-64,-255,60
time = 15

[State 760, FX]
type = Explod
trigger1 = !Time
anim = 8360
sprPriority = 5
posType = P1
pos = 31, -84
pauseMoveTime = -1
superMoveTime = -1
scale = 0.5,0.5
ownPal = 1

[State 760, EnvShake]
type = EnvShake
trigger1 = !Time
time = 0
ampl = 0

[State 760, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Crouching Parry
[StateDef 761]
type = C
physics = C
moveType = I
anim = 761
velSet = 0,0
ctrl = 0
sprPriority = 2
powerAdd = 78
faceP2 = 1

[State 761, HitBy]
type = HitBy
trigger1 = 1
value = SCA,AT
time = 1

[State 761, Pause]
type = Pause
trigger1 = !Time
time = 15
moveTime = 15
endCmdBufTime = 15
pauseBg = 0

[State 761, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 761, No Walk]
type = VarSet
trigger1 = 1
var(26) = 7

[State 761, Voice]
type = PlaySnd
trigger1 = !Time
value = 4, 0 + 10 * (var(40) = 2)
channel = 0

[State 761, Parry Sound]
type = PlaySnd
trigger1 = !Time
value = 760,0
channel = 1

[State 761, Player Flash]
type = PalFX
trigger1 = !Time
add = 0,64,255
sinAdd = 0,-64,-255,60
time = 15

[State 761, Parry FX]
type = Explod
trigger1 = !Time
anim = 8360
sprpriority = 5
postype = P1
pos = 17,-42
pauseMovetime = -1
superMovetime = -1
scale = 0.5,0.5
ownpal = 1

[State 761, EnvShake]
type = EnvShake
trigger1 = !Time
time = 0
ampl = 0

[State 761, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1


;Jumping Parry
[StateDef 762]
type = A
physics = N
moveType = I
anim = 762
ctrl = 0
sprPriority = 2
powerAdd = 78
faceP2 = 1

[State 762, HitBy]
type = HitBy
trigger1 = 1
value = SCA,AT
time = 1

[State 762, Pause]
type = Pause
trigger1 = !Time
time = 15
moveTime = 15
endCmdBufTime = 15
pauseBg = 0

[State 762, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 762, Voice]
type = PlaySnd
trigger1 = !Time
value = 4, 0 + 10 * (var(40) = 2)
channel = 0

[State 762, Parry Sound]
type = PlaySnd
trigger1 = !Time
value = 760,0
channel = 1

[State 762, Player Flash]
type = PalFX
trigger1 = !Time
add = 0,64,255
sinadd = 0,-64,-255,60
time = 15

[State 762, Parry FX]
type = Explod
trigger1 = !Time
anim = 8360
sprPriority = 5
posType = P1
pos = 28, -100
pauseMoveTime = -1
superMoveTime = -1
scale = 0.5,0.5
ownpal = 1

[State 762, EnvShake]
type = EnvShake
trigger1 = !Time
time = 0
ampl = 0

[State 762, End]
type = ChangeState
trigger1 = !AnimTime
value = 763
ctrl = 1


;Falling
[StateDef 763]
type = A
physics = N
movetype = I
anim = 763
ctrl = 1

[State 763, VelSet]
type = VelSet
trigger1 = !Time
x = ifElse(vel x > 2, 2, ifElse(vel x < -2, -2, vel x))
y = ifElse(vel y < -2, vel y, -2)

[State 763, Gravity]
type = Gravity
triggerAll = var(40) != 2
trigger1 = Time > 0
trigger1 = 1

[State 763, VelAdd (God Mode)]
type = VelAdd
triggerAll = var(40) = 2
trigger1 = Time > 0
y = 0.537109375

[State 763, Landing]
type = ChangeState
trigger1 = pos y > -vel y
value = 52



;====================<CUSTOM COMBO>====================
;Ground Version
[StateDef 900]
type = S
physics = S
moveType = A
anim = 900
velSet = 0,0
ctrl = 0
sprPriority = 2
powerAdd = -1000

[State 900, Corner Push]
type = VarSet
trigger1 = Time = 4
fvar(5) = 0

[State 900, Unguardable]
type = VarSet
trigger1 = Time = 4 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 30

[State 900, NotHitBy]
type = NotHitBy
trigger1 = !time
value = SCA
time = 38

[State 900, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 900, Custom Combo Time]
type = VarSet
trigger1 = Time >= 4
var(20) = 180

[State 900, Voice]
type = PlaySnd
trigger1 = Time = 4
value = 900, 1 + 10 * (var(40) = 2)
channel = 0

[State 900, Custom Combo FX Helper]
type = Helper
trigger1 = Time = 4
helperType = Normal
stateNo = 8400
ID = 8400
name = "Custom Combo FX"
posType = P1
pos = 9, -81
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 900, SuperPause]
type = SuperPause
trigger1 = Time = 4
time = 30
moveTime = 30
anim = -1
sound = s900,0
p2DefMul = 1
darken = 0

[State 900, AfterImage]
type = AfterImage
trigger1 = !AnimTime
time = 2
timeGap = 1
frameGap = 4
length = 13
palBright = 0,0,0
palContrast = 64,128,192
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.75,0.75,0.75
trans = add1

[State 900, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Air Version
[Statedef 905]
type = A
physics = N
moveType = A
anim = 905
ctrl = 0
sprPriority = 2
powerAdd = -1000

[State 905, Corner Push]
type = VarSet
trigger1 = Time = 4
fvar(5) = 0

[State 905, Unguardable]
type = VarSet
trigger1 = Time = 4 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 30

[State 905, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SCA
time = 38

[State 905, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 905, Custom Combo Timer]
type = VarSet
trigger1 = Time >= 4
var(20) = 180

[State 905, Voice]
type = PlaySnd
trigger1 = Time = 4
value = 900, 1 + 10 * (var(40) = 2)
channel = 0

[State 905, Custom Combo FX Helper]
type = Helper
trigger1 = Time = 4
helperType = Normal
stateNo = 8400
ID = 8400
name = "Custom Combo Startup"
posType = P1
pos = 10, -98
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 905, SuperPause]
type = SuperPause
trigger1 = Time = 4
time = 30
moveTime = 30
anim = -1
sound = s900,0
p2DefMul = 1
darken = 0

[State 905, AfterImage]
type = AfterImage
trigger1 = !AnimTime
time = 2
timeGap = 1
frameGap = 4
length = 13
palBright = 0,0,0
palContrast = 64,128,192
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.75,0.75,0.75
trans = add1

[State 905, End]
type = ChangeState
trigger1 = !AnimTime
value = 906
ctrl = 1


;Air Finish
[StateDef 906]
type = A
physics = N
moveType = I
anim = 906
ctrl = 1

[State 906, Gravity]
type = Gravity
triggerAll = var(40) != 2
trigger1 = Time > 0

[State 906, VelAdd (God Mode)]
type = VelAdd
triggerAll = var(40) = 2
trigger1 = Time > 0
y = 0.537109375

[State 906, Land]
type = ChangeState
trigger1 = pos y > -vel y
value = 52



;==========<TARGET SAFE FALL>==========
[StateDef 5205]
type = A
physics = N
moveType = H

[State 5205, ChangeAnim]
type = ChangeAnim
trigger1 = !AnimTime
trigger1 = anim = 5035
value = 5050

[State 5205, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = GetHitVar(yAccel)

[State 5205, SelfState (Ground)]
type = SelfState
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 5205, SelfState (Air)]
type = SelfState
trigger1 = Time >= 60
value = 5210



;==========<FALL RECOVERY>==========
[StateDef 5200]
type = A
moveType = H
physics = N

[State 5200, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5035 && !AnimTime
value = 5050

[State 5200, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = GetHitVar(yAccel)

[State 5200, End]
type = SelfState
trigger1 = vel y > 0 && pos y >= 10
value = 5201


[StateDef 5201]
type = S
moveType = I
physics = N
anim = 5200
ctrl = 0
faceP2 = 1

[State 5201, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 5201, VelSet]
type = VelSet
trigger1 = !Time
x = 0
y = 0

[State 5201, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = -4.46927374302

[State 5201, Voice]
type = PlaySnd
trigger1 = !Time
value = 5200, 1 + 10 * (var(40) = 2)
channel = 0

[State 5201, Recover Sound]
type = PlaySnd
trigger1 = !Time
value = 5200, 0
channel = 1

[State 5201, Flash]
type = PalFX
trigger1 = !Time
add = 255,255,255
sinAdd = -255,-255,-255,40
time = 10

[State 5201, Recover FX]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8200
ID = 8200
name = "Recover FX"
posType = P1
pos = 2, -45
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 5201, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5201, Landing Dust Explod]
type = Explod
trigger1 = AnimElem = 6
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 5201, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 52, 0
channel = 3

[State 5201, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 0

[State 5201, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Air Recover
[StateDef 5210]
type = A
moveType = I
physics = N
anim = 5210
ctrl = 0
faceP2 = 1

[State 5210, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = 0.60546875

[State 5210, VelSet]
type = VelSet
trigger1 = !Time
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
x = ifElse((command = "holdfwd" && command != "holdback"), 3.6312849162, ifElse((command != "holdfwd" && command = "holdback"), -3.6312849162, 0))
y = -7.5

[State 5210, VelSet (Reversed commands)]
type = VelSet
trigger1 = !Time
trigger1 = NumExplod(92828282) || NumExplod(92468246)
x = ifElse((command = "holdback" && command != "holdfwd"), 3.6312849162, ifElse((command != "holdback" && command = "holdfwd"), -3.6312849162, 0))
y = -7.5

[State 5210, Voice]
type = PlaySnd
trigger1 = !Time
value = 5200, 1 + 10 * (var(40) = 2)
channel = 0

[State 5210, Recover Sound]
type = PlaySnd
trigger1 = !Time
value = 5200, 0
channel = 1

[State 5210, Flash]
type = PalFX
trigger1 = !Time
add = 255,255,255
sinAdd = -255,-255,-255,40
time = 10

[State 5210, Recover FX]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8200
ID = 8200
name = "Recover FX"
posType = P1
pos = 22, -55
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 5210, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
value = SCA
time = 1

[State 5210, CtrlSet]
type = CtrlSet
trigger1 = AnimElemTime(5) >= 0
value = 1

[State 5210, Land]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52



;===================<GUARD>================
;Guard Start
[StateDef 120]
type = U
physics = U
anim = 120 + (StateType = C) + (StateType = A) * 2

[State 120, StateTypeSet: Standing]
type = StateTypeSet
trigger1 = !Time && StateType = S
physics = S

[State 120, StateTypeSet: Crouching]
type = StateTypeSet
trigger1 = !Time && StateType = C
physics = C

[State 120, StateTypeSet: Jumping]
type = StateTypeSet
trigger1 = !Time && StateType = A
physics = A

[State 120, VelSet]
type = VelSet
trigger1 = !Time && StateType != A
x = 0
y = 0

[State 120, Stand to Crouching]
type = StateTypeSet
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && StateType = S && command = "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && StateType = S && command = "holdup"
trigger3 = AILevel && StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
stateType = C
physics = C

[State 120, Crouching to Stand]
type = StateTypeSet
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && StateType = C && command != "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && StateType = C && command != "holdup"
trigger3 = AILevel && StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
stateType = S
physics = S

[State 120, AI Fix]
type = CtrlSet
trigger1 = AILevel && NumEnemy
value = (EnemyNear, Time >= 120 || Time >= 180)

[State 120, Change to Guard State]
type = ChangeState
trigger1 = !AnimTime || AILevel
value = 130 + (StateType = C) + (StateType = A) * 2

[State 120, Stop Guarding]
type = ChangeState
trigger1 = !AILevel && (ifElse(!NumExplod(94646464) && !NumExplod(92468246), ifElse(P2dist x < 0, command != "holdfwd", command != "holdback"), ifElse(P2dist x < 0, command != "holdback", command != "holdfwd")))
trigger2 = !InGuardDist
trigger3 = AILevel && NumEnemy
trigger3 = EnemyNear, HitDefAttr = SCA, AT
value = 140


;Standing Guard
[StateDef 130]
type = S
physics = S

[State 130, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 130
value = 130

[State 130, AI Fix]
type = CtrlSet
trigger1 = AILevel && NumEnemy
value = (EnemyNear, Time >= 120 || Time >= 180)

[State 130, Standing to Crouch]
type = ChangeState
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && StateType = S && command = "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && StateType = S && command = "holdup"
trigger3 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
value = 131

[State 130, Stop Guarding]
type = ChangeState
trigger1 = !AILevel && (ifElse(!NumExplod(94646464) && !NumExplod(92468246), ifElse(P2dist x < 0, command != "holdfwd", command != "holdback"), ifElse(P2dist x < 0, command != "holdback", command != "holdfwd")))
trigger2 = !InGuardDist
trigger3 = AILevel && NumEnemy
trigger3 = EnemyNear, HitDefAttr = SCA, AT
value = 140

[State 130, Landing Sound]
type = PlaySnd
trigger1 = !Time
trigger1 = PrevStateNo = 132 || (PrevStateNo = [154,155])
value = 52,0

[State 130, Landing Dust Expod]
type = Explod
trigger1 = !Time
trigger1 = PrevStateNo = 132 || (PrevStateNo = [154,155])
anim = 8102
sprpriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1


;Crouch Guarding
[StateDef 131]
type = C
physics = C

[State 131, ChangeAnim]
type = ChangeAnim
trigger1 = anim != 131
value = 131

[State 131, Crouching to Standing]
type = ChangeState
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && StateType = C && command != "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && StateType = C && command != "holdup"
trigger3 = AILevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger3 = (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
value = 130

[State 131, AI Fix]
type = CtrlSet
trigger1 = AILevel && NumEnemy
value = (EnemyNear, Time >= 120 || Time >= 180)

[State 131, Stop Guarding]
type = ChangeState
trigger1 = !AILevel && (ifElse(!NumExplod(94646464) && !NumExplod(92468246), ifElse(P2dist x < 0, command != "holdfwd", command != "holdback"), ifElse(P2dist x < 0, command != "holdback", command != "holdfwd")))
trigger2 = !InGuardDist
trigger3 = AILevel && NumEnemy
trigger3 = EnemyNear, HitDefAttr = SCA, AT
value = 140


;Air Guard
[StateDef 132]
type = A
physics = N

[State 132, ChangeAnim]
type = ChangeAnim
trigger1 = anim != 132
value = 132

[State 132, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = const(movement.yAccel)

[State 132, VarSet]
type = VarSet
trigger1 = 1
sysvar(0) = (pos y >= 0 && vel y > 0)

[State 132, VelSet]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 132, PosSet]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 132, AI Fix]
type = CtrlSet
trigger1 = AILevel && NumEnemy
value = (EnemyNear, Time >= 120 || Time >= 180)

[State 132, Jumping to Standing]
type = ChangeState
trigger1 = sysvar(0) && InGuardDist
trigger1 = (!AILevel && (ifElse(!NumExplod(94646464) && !NumExplod(92468246), ifElse(P2dist x < 0, command = "holdfwd", command = "holdback"), ifElse(P2dist x < 0, command = "holdback", command = "holdfwd")))) || AILevel
value = 130

[State 132, Change to Falling]
type = ChangeState
trigger1 = sysvar(0)
value = 52

[State 132, Stop Guarding]
type = ChangeState
trigger1 = !AILevel && (ifElse(!NumExplod(94646464) && !NumExplod(92468246), ifElse(P2dist x < 0, command != "holdfwd", command != "holdback"), ifElse(P2dist x < 0, command != "holdback", command != "holdfwd")))
trigger2 = !InGuardDist
trigger3 = AILevel && NumEnemy
trigger3 = EnemyNear, HitDefAttr = SCA, AT
value = 140


;Guard End
[StateDef 140]
type = U
physics = U
ctrl = 1

[State 140, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 140 + (StateType = C) + (StateType = A) * 2

[State 140, StateTypeSet: Standing]
type = StateTypeSet
trigger1 = !Time && StateType = S
physics = S

[State 140, StateTypeSet: Crouching]
type = StateTypeSet
trigger1 = !Time && StateType = C
physics = C

[State 140, StateTypeSet: Jumping]
type = StateTypeSet
trigger1 = !Time && StateType = A
physics = A

[State 140, Standing to Crouching]
type = StateTypeSet
trigger1 = !AILevel && StateType = S && (NumExplod(90000002) || NumExplod(90000001) || NumExplod(90000003))
trigger2 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
stateType = C
physics = C

[State 140, Crouching to Standing]
type = StateTypeSet
trigger1 = !AILevel && StateType = C && (!NumExplod(90000002) && !NumExplod(90000001) && !NumExplod(90000003))
trigger2 = AILevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
stateType = S
physics = S

[State 140, End]
type = ChangeState
trigger1 = !AnimTime
value = (StateType = C) * 11 + (StateType = A) * 51


;Hit while Guarding (Standing)
[StateDef 150]
type = S
movetype = H
physics = N
velSet = 0,0

[State 150, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 150

[State 150, End]
type = ChangeState
trigger1 = HitShakeOver
value = 151 + 2 * ((!AILevel && (NumExplod(90000002) || NumExplod(90000001) || NumExplod(90000003))) || (AILevel && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)))

[State 150, Standing to Crouching]
type = StateTypeSet
trigger1 = !AILevel && StateType = S && (NumExplod(90000002) || NumExplod(90000001) || NumExplod(90000003))
trigger2 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
stateType = C
physics = C

[State 150, Crouching to Standing]
type = StateTypeSet
trigger1 = !AILevel && StateType = C && (!NumExplod(90000002) && !NumExplod(90000001) && !NumExplod(90000003))
trigger2 = AIlevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
stateType = S
physics = S


;Knocked Back while Guarding (Standing)
[StateDef 151]
type = S
moveType = H
physics = S
anim = 150

[State 151, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1

[State 151, VelSet]
type = VelSet
trigger1 = Time = GetHitVar(SlideTime)
trigger2 = HitOver
x = 0

[State 151, CtrlSet]
type = CtrlSet
trigger1 = time = GetHitVar(CtrlTime)
value = 1

[State 151, Standing to Crouching]
type = StateTypeSet
trigger1 = !AILevel && StateType = S && (NumExplod(90000002) || NumExplod(90000001) || NumExplod(90000003))
trigger2 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
stateType = C
physics = C

[State 151, Crouching to Standing]
type = StateTypeSet
trigger1 = !AILevel && StateType = C && (!NumExplod(90000002) && !NumExplod(90000001) && !NumExplod(90000003))
trigger2 = AILevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
stateType = S
physics = S

[State 151, End]
type = ChangeState
trigger1 = HitOver
value = 130
ctrl = 1


;Hit while Guarding (Crouching)
[StateDef 152]
type = C
moveType = H
physics = N
velSet = 0,0

[State 152, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 151

[State 152, End]
type = ChangeState
trigger1 = HitShakeOver
value = 151 + 2 * ((!AILevel && ((!NumExplod(92828282) && !NumExplod(92468246) && command = "holddown") || ((NumExplod(92828282) || NumExplod(92468246)) && command = "holdup"))) || (AILevel && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)))

[State 152, Standing to Crouching]
type = StateTypeSet
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && StateType = S && command = "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && StateType = S && command = "holdup"
trigger3 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
stateType = C
physics = C

[State 152, Crouching to Standing]
type = StateTypeSet
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && StateType = C && command != "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && StateType = C && command != "holdup"
trigger3 = AILevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger3 = StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
stateType = S
physics = S


;Knocked Back while Guarding (Crouching)
[StateDef 153]
type = C
moveType = H
physics = C
anim = 151

[State 153, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1

[State 153, VelSet]
type = VelSet
trigger1 = Time = GetHitVar(SlideTime)
trigger2 = HitOver
x = 0

[State 153, CtrlSet]
type = CtrlSet
trigger1 = Time = GetHitVar(CtrlTime)
value = 1

[State 153, Standing to Crouching]
type = StateTypeSet
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && StateType = S && command = "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && StateType = S && command = "holdup"
trigger3 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
stateType = C
physics = C

[State 153, Crouching to Standing]
type = StateTypeSet
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && StateType = C && command != "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && StateType = C && command != "holdup"
trigger3 = AILevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger3 = StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
stateType = S
physics = S

[State 153, End]
type = ChangeState
trigger1 = HitOver
value = 131
ctrl = 1


;Hit while Guarding (Jumping)
[StateDef 154]
type = A
moveType = H
physics = N
velSet = 0,0

[State 154, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 152

[State 154, End]
type = ChangeState
trigger1 = HitShakeOver
value = 155


;Knocked Back while Guarding (Jumping)
[StateDef 155]
type = A
moveType = H
physics = N
anim = 152

[State 155, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

[State 155, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = const(movement.yAccel)

[State 155, CtrlSet]
type = CtrlSet
trigger1 = Time = GetHitVar(CtrlTime)
value = 1

[State 155, VarSet]
type = VarSet
trigger1 = 1
sysvar(0) = (pos y >= 0 && vel y > 0)

[State 155, VelSet]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 155, PosSet]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 155, End]
type = ChangeState
trigger1 = sysvar(0) && InGuardDist
trigger1 = (!AILevel && (ifElse(!NumExplod(94646464) && !NumExplod(92468246), ifElse(P2dist x < 0, command != "holdfwd", command != "holdback"), ifElse(P2dist x < 0, command != "holdback", command != "holdfwd")))) || AILevel
value = 130

[State 155, End]
type = ChangeState
trigger1 = sysvar(0)
value = 52



;====================<LOSE>====================
[StateDef 170]
type = S
ctrl = 0
anim = 170
velSet = 0,0

[State 170, Assert: RoundNotOver]
type = AssertSpecial
trigger1 = Time < 200
flag = RoundNotOver



;====================<DRAW GAME>====================
[StateDef 175]
type = S
ctrl = 0
velSet = 0,0

[State 175, ChangeState]
type = ChangeState
trigger1 = !Time
value = 170



;====================<CONTINUE?>====================
[StateDef 5500]
type = S
anim = 5300
velSet = 0,0
ctrl = 0

[State 5500, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5500



;====================<INITIALIZE (PART 2)>====================
[StateDef 5901]
type = S

[State 5901, Intro vs Dictator]
type = ChangeState
trigger1 = var(40) != 2
trigger1 = NumEnemy
trigger1 = RoundNo = 1 || (!(Enemy, RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul))
trigger1 = Enemy, Name = "M. Bison" || Enemy, Name = "cvsvega" || (Enemy, Name = "Vega" && Enemy, AuthorName = "Phantom.of.the.Server") || Enemy, Name = "M.Bison" || Enemy, Name = "Bison" || Enemy, Name = "Bison Bison"
value = 192

[State 5901, Intro vs Vice]
type = ChangeState
trigger1 = var(40) != 2
trigger1 = NumEnemy
trigger1 = RoundNo = 1 || (!(Enemy, RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul))
trigger1 = Enemy, Name = "Vice" || Enemy, Name = "cvsvice"
value = 193

[State 5901, Intro vs Guile]
type = ChangeState
trigger1 = var(40) != 2
trigger1 = NumEnemy
trigger1 = RoundNo = 1 || (!(Enemy, RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul))
trigger1 = Enemy, Name = "Guile" && Enemy, AuthorName = "Jmorphman"
value = 194

[State 5901, Turns Intro]
type = ChangeState
trigger1 = TeamMode = Turns
trigger1 = !RoundsExisted && RoundNo >= 2
value = 6900

[State 5901, Intro Decider (Normal Rugal)]
type = ChangeState
trigger1 = !var(40)
trigger1 = RoundNo = 1
value = 190 + (Random % 2)

[State 5901, Intro Decider (Omega Rugal)]
type = ChangeState
trigger1 = var(40) = 1
trigger1 = RoundNo = 1
value = 198

[State 5901, Intro Decider (God Rugal)]
type = ChangeState
trigger1 = !AILevel && MatchNo != 1
trigger1 = var(40) = 2
trigger1 = RoundNo = 1
value = 196

[State 5901, Arcade Intro (God Rugal)]
type = ChangeState
trigger1 = (AILevel || MatchNo = 1)
trigger1 = var(40) = 2
trigger1 = RoundNo = 1
value = 197

[State 5901, End]
type = ChangeState
trigger1 = 1
value = 0



;====================<INTRO 1>====================
[StateDef 190]
type = S
physics = S
anim = 190

[State 190, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 190, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 190, 0
channel = 0

[State 190, Rodem]
type = Helper
trigger1 = !Time
ID = 10190
stateNo = 10190
posType = P1
pos = -30, 0
name = "Rodem"

[State 190, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<INTRO 2>====================
[StateDef 191]
type = S
physics = S
anim = 190

[State 191, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 191, 0
channel = 0

[State 191, Rodem]
type = Helper
trigger1 = !Time
ID = 10190
stateNo = 10190
posType = P1
pos = -30, 0
name = "Rodem"

[State 191, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<INTRO VS DICTATOR>====================
[StateDef 192]
type = S
physics = S
anim = 192

[State 192, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 192, 0
channel = 0

[State 192, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 44
value = 192, 1
channel = 0

[State 192, Rodem]
type = Helper
trigger1 = !Time
ID = 10190
stateNo = 10190
posType = P1
pos = -30, 0
name = "Rodem"

[State 192, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<INTRO VS VICE>====================
[StateDef 193]
type = S
physics = S
anim = 193

[State 193, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 193, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 193, 0
channel = 0

[State 193, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<INTRO VS GUILE>====================
[StateDef 194]
type = S
physics = S
anim = 194

[State 194, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 194, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 191, 0
channel = 0

[State 194, Statue]
type = Helper
trigger1 = !Time
ID = 10194
stateNo = 10194
posType = P1
pos = 85, 0
name = "Statue"

[State 194, Projectile Shield]
type = Helper
trigger1 = AnimElem = 29
helperType = Normal
stateNo = 11194
ID = 11194
name = "Projectile Shield"
posType = P1
pos = 0, 0
keyctrl = 1
ownpal = 1
facing = 1
persistent = 0
ignorehitpause = 1

[State 194, HitSound]
type = PlaySnd
trigger1 = AnimElem = 29
value = 3, 0
channel = 2

[State 194, HitSpark]
type = Helper
trigger1 = AnimElem = 29
helperType = Normal
stateNo = 8001
ID = 8000
name = "Guard Spark"
posType = P1
pos = 18, -58
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 194, Voice]
type = PlaySnd
trigger1 = AnimElem = 32
value = 1000, 0
channel = 0

[State 194, Reppuken Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 40
value = 1000, 1
channel = 1

[State 194, Reppuken Startup Effect]
type = Explod
trigger1 = AnimElem = 39
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

[State 194, Explosion Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 45
trigger2 = AnimElem = 47
trigger3 = AnimElem = 49
value = 2, 194
channel = 1

[State 194, EnvShake]
type = EnvShake
trigger1 = AnimElem = 45
trigger2 = AnimElem = 47
trigger3 = AnimElem = 49
time = 14
freq = 120
ampl = 4

[State 194, Explosion 1]
type = Explod
trigger1 = AnimElem = 45
anim = 8030
sprPriority = 3
scale = 0.5, 0.5
posType = P1
pos = 65, -85
facing = -1
vFacing = -1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
persistent = 0

[State 194, Explosion 2]
type = Explod
trigger1 = AnimElem = 45
anim = 8030
sprPriority = 3
scale = 0.5, 0.5
posType = P1
pos = 85, 0
facing = 1
vFacing = 1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
persistent = 0

[State 194, Explosion 3]
type = Explod
trigger1 = AnimElem = 47
anim = 8030
sprPriority = 4
scale = 0.5, 0.5
posType = P1
pos = 90, -85
facing = -1
vFacing = -1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
persistent = 0

[State 194, Explosion 4]
type = Explod
trigger1 = AnimElem = 47
anim = 8030
sprPriority = 4
scale = 0.5, 0.5
posType = P1
pos = 65, -35
facing = 1
vFacing = 1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
persistent = 0

[State 194, Explosion 3]
type = Explod
trigger1 = AnimElem = 49
anim = 8030
sprPriority = 4
scale = 0.5, 0.5
posType = P1
pos = 50, -10
facing = -1
vFacing = -1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
persistent = 0

[State 194, Explosion 4]
type = Explod
trigger1 = AnimElem = 49
anim = 8030
sprPriority = 4
scale = 0.5, 0.5
posType = P1
pos = 85, -60
facing = 1
vFacing = 1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
persistent = 0

[State 194, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<INTRO (GOD RUGAL)>====================
[StateDef 196]
type = S
physics = S
anim = 196

[State 196, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 196, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 196, 10
channel = 0

[State 196, Blood Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 9
value = 196, 11
channel = 1

[State 196, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<ARCADE INTRO (GOD RUGAL)>====================
[StateDef 197]
type = S
physics = S
anim = 197

[State 197, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 197, Voice]
type = PlaySnd
trigger1 = AnimElemTime(2) = 68
value = 197, 0
channel = 0

[State 197, Woosh]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1, 2
channel = 1

[State 197, Sound Effect 2]
type = PlaySnd
trigger1 = AnimElem = 9
value = 810, 1
channel = 2

[State 197, Gouki]
type = Helper
trigger1 = !Time
ID = 10197
stateNo = 10197
posType = P1
pos = 0, 0
name = "Gouki"

[State 197, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<INTRO 1 (OMEGA RUGAL)>====================
[StateDef 198]
type = S
physics = S
anim = 198

[State 198, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 198, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 730, 1
channel = 0

[State 198, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 4
value = 198, 1
channel = 0

[State 198, Woosh]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1, 2
channel = 1

[State 198, Eye Effect]
type = Helper
trigger1 = !Time
ID = 10198
stateNo = 10198
posType = P1
pos = 0, 0
name = "Eye Effect"
size.xScale = 0.9
size.yScale = 1

[State 198, Dust Effect 1]
type = Explod
trigger1 = AnimElemTime(9) < 0
trigger1 = Time % 4 = 0
anim = 20198
ID = 20198
sprPriority = 3
bindtime = -1
removeTime = -2
posType = P1
pos = 0, -2
scale = (0.25 + (0.0625 * (Random % 5))), (0.25 + (0.0625 * (Random % 5)))
removeOnGetHit = 1
ignoreHitPause = 0
ownPal = 1

[State 198, Dust Effect 2]
type = Explod
trigger1 = AnimElemTime(9) < 0
trigger1 = Time % 4 = 0
anim = 21198
ID = 21198
sprPriority = -3
bindtime = -1
removeTime = -2
posType = P1
pos = 0, -2
scale = (0.25 + (0.0625 * (Random % 5))), (0.25 + (0.0625 * (Random % 5)))
removeOnGetHit = 1
ignoreHitPause = 0
ownPal = 1

[State 198, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<INTRO 2 (OMEGA RUGAL)>====================
[StateDef 199]
type = S
physics = S
anim = 199

[State 199, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 199, Voice]
type = PlaySnd
trigger1 = !Time
value = 199, 0
channel = 0

[State 199, Coat]
type = Explod
trigger1 = !Time
anim = 10199
ID = 10199
sprPriority = 3
removeTime = -1
posType = P1
pos = 0, 0
scale = 1, 1
ownPal = 1

[State 199, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<TURNS INTRO>====================
[StateDef 6900]
type = A
anim = 42
velSet = 0,0
ctrl = 0

[State 6900, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6900, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

[State 6900, Camera Helper]
type = Helper
trigger1 = !NumHelper(8999)
helpertype = Normal
stateNo = 8999
ID = 8999
name = "Camera"
posType = P1

[State 6900, PosSet]
type = PosSet
trigger1 = !Time
x = (-320 + abs(pos x)) * Facing

[State 6900, VelSet]
type = VelSet
trigger1 = !Time
x = (Helper(8999), RootDist x) / -40.0
y = -10.25

[State 6900, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.5

[State 6900, End]
type = ChangeState
trigger1 = Time
trigger1 = pos y > -vel y
value = 6901


;Landing
[StateDef 6901]
type = S
physics = S
anim = ifElse(var(40), 6911, 6901)
velSet = 0,0

[State 6901, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6901, PosSet]
type = PosSet
trigger1 = !Time && NumHelper(8999)
x = ceil(Helper(8999), pos x)

[State 6901, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0
channel = 3

[State 6901, Landing Dust Expod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 6901, Sound Effect]
type = PlaySnd
triggerAll = Anim = 6901
trigger1 = AnimElem = 6
trigger2 = AnimElem = 9
value = 100, 1
channel = 1

[State 6901, Voice (Omega Mode)]
type = PlaySnd
triggerAll = Anim = 6911 && var(40) = 1
trigger1 = AnimElem = 3
value = 196, 10
channel = 0

[State 6901, Voice (God Mode)]
type = PlaySnd
triggerAll = Anim = 6911 && var(40) = 2
trigger1 = AnimElem = 3
value = 190, 0
channel = 0

[State 6901, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;====================<WIN POSE DECIDER>====================
[StateDef 180]
type = S

[State 180, Generic Victory Quote]
type = VictoryQuote
trigger1 = var(40) != 2
value = (Random % 14)

[State 180, Victory Quote vs. Kyo Kusanagi]
type = VictoryQuote
triggerAll = var(40) != 2
trigger1 = (Enemy, Name = "Kyo Kusanagi" && Enemy, AuthorName != "Jmorphman") || (Enemy, Name = "cvskyo" && Enemy, PalNo <= 6) || Enemy, Name = "cvskyo_normal" || Enemy, Name = "Kyo_WLS"
trigger2 = Enemy, Name = "Kyo Kusanagi" && Enemy, AuthorName = "Jmorphman" && Enemy, var(40) != 1
value = 15 + (Random % 2)

[State 180, Victory Quote vs. Japan Team]
type = VictoryQuote
triggerAll = var(40) != 2
trigger1 = Enemy, Name = "Benimaru Nikaido" || Enemy, Name = "cvsbenimaru" || Enemy, Name = "Benimaru"
trigger2 = Enemy, Name = "Daimon" || Enemy, Name = "Goro Daimon"
value = 16

[State 180, Victory Quote vs. Heidern]
type = VictoryQuote
triggerAll = var(40) != 2
trigger1 = Enemy, Name = "Heidern"
value = 17 + (Random % 2)

[State 180, Victory Quote vs. Ikari Team]
type = VictoryQuote
triggerAll = var(40) != 2
trigger1 = Enemy, Name = "Leona" || Enemy, Name = "Leona Heidern"
trigger2 = Enemy, Name = "Ralf" || Enemy, Name = "Ralf Jones"
trigger3 = Enemy, Name = "Clark" || Enemy, Name = "Clark Still"
value = 18

[State 180, Victory Quote vs. Kyokugenryu Fighters]
type = VictoryQuote
triggerAll = var(40) != 2
trigger1 = Enemy, Name = "Ryo Sakazaki" || Enemy, Name = "Ryo" || Enemy, Name = "cvsryo"
trigger2 = Enemy, Name = "Robert Garcia" || Enemy, Name = "Robert_WLS" || Enemy, Name = "cvsrobert"
trigger3 = Enemy, Name = "Takuma Sakazaki" || Enemy, Name = "Takuma" || Enemy, Name = "cvstakuma"
trigger4 = Enemy, Name = "Mr. Karate" || Enemy, Name = "Serious Mr. Karate" || Enemy, Name = "Honki ni Natta Mr. Karate"
trigger5 = Enemy, Name = "Mr.Karate" || Enemy, Name = "Serious Mr.Karate" || Enemy, Name = "Honki ni Natta Mr.Karate"
trigger6 = Enemy, Name = "Marco Rodriguez" || Enemy, Name = "Khushnood Butt"
value = 19 + (Random % 2)

[State 180, Victory Quote vs. Yuri Sakazaki]
type = VictoryQuote
triggerAll = var(40) != 2
trigger1 = Enemy, Name = "Yuri Sakazaki" || Enemy, Name = "Yuri" || Enemy, Name = "cvsyuri"
value = 19 + (Random % 4)

[State 180, Victory Quote vs. Women Fighters Team]
type = VictoryQuote
triggerAll = var(40) != 2
trigger1 = Enemy, Name = "cvsking" || Enemy, Name = "King"
trigger2 = Enemy, Name = "Mai Shiranui" || Enemy, Name = "Mai" || Enemy, Name = "cvsmai"
trigger3 = Enemy, Name = "May Lee"
value = 21 + (Random % 2)

[State 180, Victory Quote vs. Fatal Fury Team]
type = VictoryQuote
triggerAll = var(40) != 2
trigger1 = Enemy, Name = "Terry Bogard" || Enemy, Name = "Terry" || Enemy, Name = "cvsterry"
trigger1 = Enemy, Name = "Andy Bogard" || Enemy, Name = "Andy" || Enemy, Name = "cvsandy"
trigger1 = Enemy, Name = "Joe Higashi" || Enemy, Name = "Joe" || Enemy, Name = "cvsjoe"
value = 23 + (Random % 2)

[State 180, Victory Quote vs. Korea Team]
type = VictoryQuote
triggerAll = var(40) != 2
trigger1 = Enemy, Name = "Kim Kaphwan" || Enemy, Name = "Kim" || Enemy, Name = "cvskim"
trigger2 = Enemy, Name = "Chang Koehan" || Enemy, Name = "Chang" || Enemy, Name = "cvschang" || Enemy, Name = "Chang & Choi" || Enemy, Name = "Chang and Choi"
trigger3 = Enemy, Name = "Choi Bounge" || Enemy, Name = "Choi" || Enemy, Name = "cvschoi"
value = 25 + (Random % 2)

[State 180, Victory Quote vs. Psycho Soldiers Team]
type = VictoryQuote
triggerAll = var(40) != 2
trigger1 = Enemy, Name = "Athena Asamiya" || Enemy, Name = "Athena" || Enemy, Name = "cvsathena"
trigger2 = Enemy, Name = "Sie Kensou" || Enemy, Name = "Kensou"
trigger3 = Enemy, Name = "Chin" || Enemy, Name = "Chin Gentsai"
value = 27 + (Random % 2)

[State 180, Victory Quote vs. Yagami Team]
type = VictoryQuote
triggerAll = var(40) != 2
trigger1 = (Enemy, Name = "Iori" || Enemy, Name = "IoriMG" || (Enemy, Name = "cvsiori" && Enemy, PalNo <= 6) || Enemy, Name = "cvsiori_normal") && Enemy, AuthorName != "Hero" && Enemy, AuthorName != "Knuckles8864"
trigger2 = Enemy, Name = "Iori" && Enemy, AuthorName = "Hero"
trigger3 = Enemy, Name = "N.Iori_WLS" || (Enemy, Name = "Iori_WLS" && Enemy, PalNo <= 6)
trigger4 = (Enemy, Name = "Iori Yagami" && Enemy, AuthorName != "Anjel" && Enemy, AuthorName != "Knuckles8864") || (Enemy, Name = "Iori Yagami" && Enemy, AuthorName = "Anjel" && Enemy, PalNo <= 6)
trigger5 = Enemy, Name = "Iori Yagami" && Enemy, AuthorName = "Knuckles8864" && Enemy, var(40) != 1
trigger6 = Enemy, Name = "Mature" || Enemy, Name = "cvsmature"
trigger7 = Enemy, Name = "Vice" || Enemy, Name = "cvsvice"
value = 29

[State 180, Victory Quote vs. K' Team]
type = VictoryQuote
triggerAll = var(40) != 2
trigger1 = Enemy, Name = "Ultimate K'" || Enemy, Name = "K'"
trigger2 = Enemy, Name = "Maxima"
trigger3 = Enemy, Name = "Whip"
value = 30

[State 180, Victory Quote vs. NEST Team]
type = VictoryQuote
triggerAll = var(40) != 2
trigger1 = Enemy, Name = "Kula Diamond" || Enemy, Name = "Kula"
trigger2 = Enemy, Name = "K9999"
trigger3 = Enemy, Name = "Angel"
value = 31

[State 180, Victory Quote vs. New Faces Team]
type = VictoryQuote
triggerAll = var(40) != 2
trigger1 = Enemy, Name = "Chris" || Enemy, Name = "Orochi Chris"
trigger2 = Enemy, Name = "Shermie" || Enemy, Name = "Orochi Shermie"
trigger3 = Enemy, Name = "Yashiro" || Enemy, Name = "Orochi Yashiro"
trigger4 = Enemy, Name = "Goenitz" || Enemy, Name = "Leopold Goenitz"
value = 32

[State 180, Victory Quote vs. Agent Team]
type = VictoryQuote
triggerAll = var(40) != 2
trigger1 = Enemy, Name = "Vanessa"
trigger2 = Enemy, Name = "Ramon"
trigger3 = Enemy, Name = "Seth"
value = 33

[State 180, Victory Quote vs. '97 Team]
type = VictoryQuote
triggerAll = var(40) != 2
trigger1 = Enemy, Name = "Blue Mary"
trigger2 = Enemy, Name = "Ryuji Yamazaki" || Enemy, Name = "Yamazaki" || Enemy, Name = "cvsyamazaki"
trigger3 = Enemy, Name = "Billy Kane" || Enemy, Name = "Billy Karn" || Enemy, Name = "ffsp_billy"
value = 34

[State 180, Victory Quote vs. Sports Team]
type = VictoryQuote
triggerAll = var(40) != 2
trigger1 = Enemy, Name = "Heavy-D!"
trigger2 = Enemy, Name = "Lucky Glauber"
trigger3 = Enemy, Name = "Brian Battler"
value = 35

[State 180, Generic Victory Quote (God Rugal)]
type = VictoryQuote
trigger1 = var(40) = 2
value = 36 + (Random % 8)

[State 180, Win by Last Judgment]
type = ChangeState
trigger1 = PrevStateNo = 3820
value = 3820

[State 180, Win 1]
type = ChangeState
trigger1 = command = "holdstart"
trigger2 = command = "holdx" || command = "holdy" || command = "holdz"
value = ifElse(var(40) = 2, 184, 181)

[State 180, Win 2]
type = ChangeState
trigger1 = command = "holda" || command = "holdb" || command = "holdc"
value = ifElse(var(40) = 2, 185, 182)

[State 180, Rugal Win Decider]
type = ChangeState
trigger1 = 1
value = ifElse(var(40) = 2, 184, 181) + (Random % 2)



;====================<WIN 1>====================
[StateDef 181]
type = S
physics = S
anim = 181
ctrl = 0

[State 181, Assert: RoundNotOver]
type = AssertSpecial
trigger1 = Time < 200
flag = RoundNotOver

[State 181, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 181, 0

[State 181, Woosh]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 0
channel = 1



;====================<WIN 2>====================
[StateDef 182]
type = S
physics = S
anim = 182
ctrl = 0

[State 182, Assert: RoundNotOver]
type = AssertSpecial
trigger1 = Time < 200
flag = RoundNotOver

[State 182, Woosh]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 7
value = 100, 1
channel = 1



;====================<WIN 1 (GOD RUGAL)>====================
[StateDef 184]
type = S
physics = S
anim = 184
ctrl = 0

[State 184, Assert: RoundNotOver]
type = AssertSpecial
trigger1 = Time < 200
flag = RoundNotOver

[State 184, Kanji Visual Effect]
type = Explod
trigger1 = AnimElem = 7
anim = 10184
ID = 10184
sprPriority = 3
posType = P1
pos = 0, 0
scale = 1, 1
ownPal = 1

[State 184, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 181, 10

[State 184, Shirt Sound Effect]
type = PlaySnd
trigger1 = AnimElem = 6
value = 184, 11



;====================<WIN 2 (GOD RUGAL)>====================
[StateDef 185]
type = S
physics = S
anim = 185
ctrl = 0

[State 185, Assert: RoundNotOver]
type = AssertSpecial
trigger1 = Time < 200
flag = RoundNotOver

[State 185, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 181, 10


;==========<TAUNT>==========
[StateDef 195]
type = S
moveType = I
physics = S
anim = ifElse(var(40), 10195, 195)
velSet = 0,0
sprPriority = 1
ctrl = 0

[State 195, Voice]
type = PlaySnd
triggerAll = !var(40)
trigger1 = AnimElem = 5
value = 195, 0
channel = 0

[State 195, Voice (Omega/God)]
type = PlaySnd
triggerAll = var(40)
trigger1 = !Time
value = 5200, 1 + 10 * (var(40) = 2)
channel = 0

[State 195, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;====================<CHEAP K.O.>====================
[StateDef 5950]
type = S
moveType = H
physics = S
anim = 5950
velSet = 0,0

[State 5950, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 5950, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 5950, Assert: NoKOsnd]
type = AssertSpecial
trigger1 = 1
flag = NoKOsnd

[State 5950, StopSnd]
type = StopSnd
trigger1 = !Time && !Alive
channel = 0

[State 5950, KO Sound]
type = PlaySnd
trigger1 = AnimElem = 2 && !Alive
value = 5950, 0 + 10 * (var(40) = 2)

[State 5950, Hitting the Floor Sound]
type = PlaySnd
trigger1 = AnimElem = 10
value = F7, 0

[State 5950, Hitting the Floor Explod]
type = Explod
trigger1 = AnimElem = 10
anim = F60
posType = P1
pos = 0,0
sprPriority = -3

[State 5950, End]
type = ChangeState
trigger1= !AnimTime
value = ifElse(Alive, 5110, 5150)



;====================<AIR HIT TRANSITION>====================
[Statedef 5035]
type = A
movetype = H
physics = N

[State 5035, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = SelfAnimExist(5035)
trigger1 = Anim = [5000,5029]
value = 5035

[State 5035, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = GetHitVar(yAccel)

[State 5035, Recover]
type = ChangeState
triggerAll = !HitFall
trigger1 = HitOver
trigger2 = !AnimTime
trigger3 = vel y > 0 && pos y >= 10
trigger4 = !Time
trigger4 = Anim != 5035
value = 5040

[State 5035, Fall]
type = ChangeState
triggerAll = HitFall
trigger1 = HitOver
trigger2 = !AnimTime
trigger3 = vel y > 0 && pos y >= 10
trigger4 = !Time
trigger4 = Anim != 5035
value = 5050



;===========================================================================
;===============================<-2 STATES>=================================
;===========================================================================
[StateDef -2]

[State -2, Hit Detection]
type = VarSet
trigger1 = MoveContact = 1 && var(30) < 0
var(30) = HitPauseTime
ignoreHitPause = 1

[State -2, Hit Sound]
type = PlaySnd
trigger1 = MoveContact = 1 && var(30) = HitPauseTime
trigger1 = MoveHit = 1 && var(31) >= 0
value = 2, var(31)
channel = 2
ignoreHitPause = 1

[State -2, Guard Sound]
type = PlaySnd
trigger1 = MoveContact = 1 && var(30) = HitPauseTime
trigger1 = MoveGuarded = 1 && var(32) >= 0
value = 3, var(32)
channel = 2
ignoreHitPause = 1

[State -2, Hit Sparks]
type = Helper
triggerAll = MoveContact = 1 && var(30) = HitPauseTime
trigger1 = MoveHit = 1 && NumEnemy
trigger1 = var(33) = 8010 || var(33) = 8011 || var(33) = 8012 || var(33) = 8013 || var(33) = 8014 || var(33) = 8015 || var(33) = 8016 || var(33) = 8017 || var(33) = 8018 || var(33) = 8019 || var(33) = 8020 || var(33) = 8001
trigger2 = MoveGuarded = 1 && NumEnemy
trigger2 = var(34) = 8000 || var(34) = 8001
helperType = Normal
stateNo = ifElse(MoveGuarded, var(34), var(33))
ID = 8000
name = "Spark"
postype = P1
pos = ceil(ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(35), ceil(P2Dist x), var(35))) * const(size.xScale)), ceil(var(36) * const(size.yScale))
facing = -1
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State -2, Counter FX]
type = Helper
triggerAll = MoveHit = 1 && var(30) = HitPauseTime
triggerAll = NumEnemy && var(9)
trigger1 = !(HitDefAttr = SCA, AT) && (EnemyNear, MoveReversed != 1)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ceil(ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(35), ceil(P2Dist x), var(35))) * const(size.xScale)), ceil(var(36) * const(size.yScale))
facing = -1
ownPal = 1
pauseMoveTime = 255
superMoveTime = 255
ignoreHitPause = 1

[State -2, Counter Flag]
type = VarSet
trigger1 = NumEnemy
var(9) = (EnemyNear, MoveType = A)
ignoreHitPause = 1

[State -2, Hit Detection]
type = VarSet
trigger1 = 1
var(30) = -1

[State -2, Hit Detection]
type = VarRangeSet
trigger1 = MoveType = I
trigger2 = MoveType = H && Time
first = 30
last = 36
value = -1
ignoreHitPause = 1

[State -2, P2 Facing]
type = TargetFacing
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver) && !(Target, HitFall) && (Target, Time <= 1)
value = ifElse(P2Dist x >= 0, -1, 1)
ignoreHitPause = 1

[State -2, P2 Safe Fall]
type = TargetState
trigger1 = NumTarget = 1
trigger1 = Target, command = "recovery"
trigger1 = Target, pos y >= -48 && Target, vel y > 0
trigger1 = Target, Alive && Target, HitFall && Target, GetHitVar(fall.recover)
trigger1 = Target, StateNo = 5030 || Target, StateNo = 5035 || Target, StateNo = 5050 || Target, StateNo = 5071
value = 5205
ignoreHitPause = 1

[State -2, Assert: UnGuardable]
type = AssertSpecial
trigger1 = var(17) > 0
trigger1 = var(17) := (var(17) - 1)
flag = UnGuardable
ignoreHitPause = 1

[State -2, Hit Count]
type = VarAdd
trigger1 = !IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime
trigger1 = !(HitDefAttr = SCA, AT)
var(13) = 1

[State -2, Hit Count Reset]
type = VarSet
trigger1 = NumEnemy && var(13)
trigger1 = (EnemyNear, MoveType != H) && (EnemyNear, StateNo != 5300)
var(13) = 0
ignoreHitPause = 1

[State -2, Juggle Count]
type = VarAdd
trigger1 = !IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime
trigger1 = !(HitDefAttr = SCA,AT)
var(15) = 1

[State -2, Juggle Reset Single]
type = VarSet
triggerAll = NumEnemy = 1 && var(15)
trigger1 = (Enemy, StateType != A) && (Enemy, StateNo != [5100, 5109]) && (Enemy, Time >= 1)
trigger2 = (Enemy, MoveType != H) || (Enemy, StateNo = [120,155]) || (Enemy, Ctrl)
var(15) = 0
ignoreHitPause = 1

[State -2, Juggle Reset Simul]
type = VarSet
triggerAll = NumEnemy >= 2 && var(15)
trigger1 = (EnemyNear(0), StateType != A) && (EnemyNear(0), Time >= 1)
trigger2 = (EnemyNear(0), MoveType != H) || (EnemyNear(0), StateNo = [120,155]) || (EnemyNear(0), Ctrl)
trigger3 = (EnemyNear(1), StateType != A) && (EnemyNear(0), Time >= 1)
trigger4 = (EnemyNear(1), MoveType != H) || (EnemyNear(0), StateNo = [120,155]) || (EnemyNear(0), Ctrl)
var(15) = 0
ignoreHitPause = 1

[State -2, Free Juggling]
type = VarSet
trigger1 = RoundState != 2
var(15) = 0
ignoreHitPause = 1

[State -2, Juggle Flag]
type = VarSet
trigger1 = NumEnemy && !var(16)
trigger1 = (EnemyNear, StateNo = 5040) && !(EnemyNear, Ctrl)
var(16) = 1
ignorehitpause = 1

[State -2, Juggle Flag Reset Single]
type = VarSet
triggerAll = NumEnemy = 1 && var(16)
trigger1 = (Enemy, MoveType != H) && (Enemy, StateNo != 5040)
trigger2 = !(Enemy, HitShakeOver) || (Enemy, StateType = L) || (Enemy, Ctrl)
var(16) = 0
ignoreHitPause = 1

[State -2, Juggle Flag Reset Simul]
type = VarSet
triggerAll = NumEnemy >= 2 && var(16)
trigger1 = (EnemyNear(0), MoveType != H) && (EnemyNear(0), StateNo != 5040)
trigger2 = !(EnemyNear(0), HitShakeOver) || (EnemyNear(0), StateType = L) || (EnemyNear(0), Ctrl)
trigger3 = (EnemyNear(1), MoveType != H) && (EnemyNear(1), StateNo != 5040)
trigger4 = !(EnemyNear(1), HitShakeOver) || (EnemyNear(1), StateType = L) || (EnemyNear(1), Ctrl)
var(16) = 0
ignoreHitPause = 1

[State -2, Custom Combo End]
type = VarSet
trigger1 = var(20) < 0
trigger2 = MoveType = H
trigger3 = RoundState != 2
trigger4 = (StateNo = [3000,4999])
var(20) = 0
ignoreHitPause = 1

[State -2, Custom Combo Time]
type = VarAdd
trigger1 = var(20) > 0
var(20) = -1
ignoreHitPause = 1

[State -2, Custom Combo Asserts]
type = AssertSpecial
trigger1 = var(20) > 0
flag = NoStandGuard
flag2 = NoCrouchGuard
flag3 = NoAirGuard
ignoreHitPause = 1

[State -2, Custom Combo PalFX]
type = PalFX
trigger1 = var(20) > 60
time = 2
add = 32 + ceil(sin(var(20) / 16.0 * pi) * 32), 32 + ceil(sin(var(20) / 16.0 * pi) * 32), 32 + ceil(sin(var(20) / 16.0 * pi) * 32)
ignoreHitPause = 1

[State -2, Custom Combo PalFX]
type = PalFX
trigger1 = var(20) = [1,60]
time = 2
add = 64 + ceil(sin(var(20) / 8.0 * pi) * 64), 64 + ceil(sin(var(20) / 8.0 * pi) * 64), 64 + ceil(sin(var(20) / 8.0 * pi) * 64)
ignoreHitPause = 1

[State -2, Throws Allowed]
type = VarSet
trigger1 = EnemyNear, MoveType != H
trigger1 = EnemyNear, StateNo != 140
trigger1 = (EnemyNear, ctrl && EnemyNear, Time >= 1) || (EnemyNear, Time >= 8)
trigger2 = EnemyNear, MoveType = A
trigger3 = (EnemyNear, StateNo != [0,52]) && (EnemyNear, StateNo != [120,155]) && (EnemyNear, StateNo != [5000,5120])
trigger4 = var(20) || var(21) || var(22)
var(38) = 0

[State -2, Throws Disallowed]
type = VarSet
triggerAll = NumEnemy
trigger1 = EnemyNear, StateNo = [150,155]
trigger2 = (EnemyNear, StateNo = 51 || EnemyNear, StateNo = 140) && (EnemyNear, PrevStateNo = [150, 155])
trigger3 = EnemyNear, MoveType = H && EnemyNear, StateType != A && !var(20) && !var(21) && !var(22)
trigger4 = (EnemyNear, StateNo = [5020,5040]) && EnemyNear, HitFall = 0
trigger5 = EnemyNear, StateNo = 40 && EnemyNear, PrevStateNo != 52 && (EnemyNear, Anim != [0, 29])
var(38) = 1
ignoreHitPause = 1

[State -2, Special/Super Throws Allowed]
type = VarSet
trigger1 = var(37) != 2
trigger2 = var(37) = 2 && MoveType != A
var(37) = 0

[State -2, Special/Super Throws Disallowed]
type = VarSet
triggerall = NumEnemy
trigger1 = EnemyNear, StateNo = [150,155]
trigger2 = (EnemyNear, StateNo = 51 || EnemyNear, StateNo = 140) && (EnemyNear, PrevStateNo = [150, 155])
trigger3 = (EnemyNear, StateNo = [5020,5040]) && !(EnemyNear, HitFall)
trigger4 = ((EnemyNear, StateNo = 0) || (EnemyNear, StateNo = 52)) && (EnemyNear, PrevStateNo = [5000,5040]) && ((EnemyNear, Time <= 0) || !(EnemyNear, Ctrl))
trigger5 = (EnemyNear, StateNo = 0) && (EnemyNear, PrevStateNo = 52) && ((EnemyNear, Time <= 0) || !(EnemyNear, Ctrl))
trigger6 = (EnemyNear, StateNo = 40) && (EnemyNear, Time >= 1 || EnemyNear, PrevStateNo = 0 || EnemyNear, PrevStateNo = 52)
trigger7 = EnemyNear, StateNo = 5110
trigger8 = MoveReversed
var(37) = ifElse(MoveReversed, 2, 1)
ignoreHitPause = 1

[State -2, Dampener]
type = VarSet
trigger1 = 1
fvar(10) = ifElse(var(13) < 4, 24, ifelse(var(13) >= 24, 1, 27 - var(13))) / 24.0
ignoreHitPause = 1

[State -2, Dampener - Custom Combo]
type = VarSet
trigger1 = var(20)
fvar(10) = 0.72 * (10 - ifElse(var(13) >= 10, 10, var(13))) / 10.0
ignoreHitPause = 1

[State -2, Dampener - Supers]
type = VarSet
trigger1 = (StateNo = [3000,4999])
fvar(10) = ifElse(var(22), 0.6, ifElse(var(21), 0.8, 1.0))
ignoreHitPause = 1

[State -2, Dampener - Supers (EX Dark Barrier / Vanishing Rush / Beads Destruction)]
type = VarSet
trigger1 = (StateNo = [3000, 4999])
trigger1 = var(12) || var(27) || var(28)
fvar(10) = ifElse(var(22), 0.5, ifElse(var(21), 0.6, 0.7))
ignoreHitPause = 1

[State -2, Dampener Limit]
type = VarSet
trigger1 = fvar(10) < 0
fvar(10) = 0
ignoreHitPause = 1

[State -2, Root Dampener]
type = VarSet
trigger1 = 1
fvar(11) = fvar(10) * ifElse(var(9), 1.2, 1)
ignoreHitPause = 1

;CvS2 God Rugal essentially takes 0.65217391304 extra damage every hit
;Karma's Omega Rugal essentially takes 0.35714285714 extra damage every hit
[State -2, Defense Levels]
type = LifeAdd
triggerAll = !AILevel
trigger1 = var(40) = [1, 2]
trigger1 = GetHitVar(HitCount) = 1 && GetHitVar(Damage)
trigger1 = StateNo != [760, 762]
value = -ceil(ifElse(var(40) = 2, 0.65217391304, 0.35714285714) * GetHitVar(Damage))
kill = 0
ignoreHitPause = 1

;CvS2 God Rugal essentially takes 1.65217391304 times more damage than standard
;Karma's Omega Rugal essentially takes 1.35714285714 times more damage than standard
[State -2, Defense Levels]
type = DefenceMulSet
triggerAll = !AILevel
trigger1 = var(40) = [1, 2]
value = ifElse(var(40) = 2, 1.65217391304, 1.35714285714) * (const(data.fall.defence_mul) ** GetHitVar(FallCount))
ignoreHitPause = 1

[State -2, Voice Position]
type = SndPan
trigger1 = 1
channel = 0
pan = 0
ignoreHitPause = 1

[State -2, KO Sound Variable]
type = VarSet
triggerAll = StateNo != 5950
trigger1 = Alive && var(41) > 0
trigger2 = !Alive && var(41) < 2
var(41) = ifElse(Alive, 0, var(41) + 1)
ignoreHitPause = 1

[State -2, KO Sound]
type = PlaySnd
triggerAll = PrevStateNo != 5950
trigger1 = !Alive && var(41) = 1
trigger1 = var(41) := 2
value = 11, 1 + 10 * (var(40) = 2)
ignoreHitPause = 1

[State -2, Collapse Sound]
type = PlaySnd
trigger1 = StateNo != 5950
trigger1 = Anim = 5950 || Anim = 5955
trigger1 = AnimElem = 10
value = F7, 0

[State -2, Collapse FX]
type = Explod
trigger1 = StateNo != 5950
trigger1 = Anim = 5950 || Anim = 5955
trigger1 = AnimElem = 10
anim = F60
posType = P1
sprpriority = -3

[State -2, Guard Crush/Throw Escape voice]
type = PlaySnd
trigger1 = Anim = 5910 || Anim = 5920 || Anim = 5930
trigger1 = AnimElemTime(1) = 1
trigger2 = Anim = 5940 || Anim = 5945
trigger2 = AnimElem = 2 && StateNo != 890
value = 5940, 0 + 10 * (var(40) = 2)
channel = 0
ignoreHitPause = 1

[State -2, EX Dark Barrier Hit Count Reset]
type = VarSet
trigger1 = !var(13)
trigger2 = var(20)
var(12) = 0
ignoreHitPause = 1

[State -2, Vanishing Rush Hit Count Reset]
type = VarSet
trigger1 = !var(13)
trigger2 = var(20)
var(27) = 0
ignoreHitPause = 1

[State -2, Beads Destruction Hit Count Reset]
type = VarSet
trigger1 = !var(13)
trigger2 = var(20)
var(28) = 0
ignoreHitPause = 1

[State -2, Remove Reppuken Explod]
type = RemoveExplod
trigger1 = NumExplod(1003) && StateNo != 1000 && StateNo != 1030 && StateNo != 194
ID = 1003

[State -2, Remove Genocide Cutter Explod]
type = RemoveExplod
trigger1 = NumExplod(1105) && StateNo != 1100 && StateNo != 1130 && StateNo != 1150 && StateNo != 2900
ID = 1105

[State -2, Remove Dark Genocide 2 Explod]
type = RemoveExplod
trigger1 = NumExplod(1165) && StateNo != 1150
ID = 1165

[State -2, Remove Dark Genocide 3 Explod]
type = RemoveExplod
trigger1 = NumExplod(1175) && StateNo != 1150
ID = 1175

[State -2, Remove Dark Smash Explod 1]
type = RemoveExplod
trigger1 = NumExplod(1503) && StateNo != 1500 && StateNo != 1530
ID = 1503

[State -2, Remove Dark Smash Explod 2]
type = RemoveExplod
trigger1 = NumExplod(1505) && StateNo != 1500 && StateNo != 1530
ID = 1505

[State -2, Remove Airborne Dark Smash Explod 1]
type = RemoveExplod
trigger1 = NumExplod(1553) && StateNo != 1550 && StateNo != 1580
ID = 1553

[State -2, Remove Airborne Dark Smash Explod 2]
type = RemoveExplod
trigger1 = NumExplod(1555) && StateNo != 1550 && StateNo != 1580
ID = 1555

[State -2, Remove Gravity Smash Explod]
type = RemoveExplod
trigger1 = NumExplod(1603) && StateNo != 1600
ID = 1603

[State -2, Remove Aereal Gravity Smash Explod]
type = RemoveExplod
trigger1 = NumExplod(1653) && StateNo != 1650
ID = 1653

[State -2, Remove Vanishing Rush Explod]
type = RemoveExplod
trigger1 = NumExplod(1705) && StateNo != 1700
ID = 1705

[State -2, Remove Beads Destruction Explod]
type = RemoveExplod
trigger1 = NumExplod(1805) && StateNo != 1800
ID = 1805

[State -2, Remove Rugal Execution Explod 1]
type = RemoveExplod
trigger1 = NumExplod(1905) && StateNo != 1900 && StateNo != 3400 && StateNo != 3450
ID = 1905

[State -2, Remove Rugal Execution Explod 2]
type = RemoveExplod
trigger1 = NumExplod(1906) && StateNo != 1900 && StateNo != 3400 && StateNo != 3450
ID = 1906

[State -2, Remove Genocide Heaven Explod]
type = RemoveExplod
trigger1 = NumExplod(3005) && StateNo != 3000 && StateNo != 3050
ID = 3005

[State -2, Remove Rugal Execution Explod 1]
type = RemoveExplod
trigger1 = NumExplod(3402) && StateNo != 3400 && StateNo != 3410 && StateNo != 3450 && StateNo != 3460
ID = 3402

[State -2, Remove Kaiser Reppuken Explod 1]
type = RemoveExplod
trigger1 = NumExplod(3503) && StateNo != 3500 && StateNo != 3510
ID = 3503

[State -2, Remove Kaiser Reppuken Explod 2]
type = RemoveExplod
trigger1 = NumExplod(3504) && StateNo != 3500 && StateNo != 3510
ID = 3504

[State -2, Sealed by Chizuru's Reigi no Ishizue]
type = PalFX
trigger1 = NumProjID(131035)
trigger1 = GameTime % 2 = 1
time = 1
add = 0,0,92
sinAdd = 0,0,0,0
color = 0
invertAll = 0
color = 256
ignoreHitPause = 1

[State -2, EXPLODsive Buffering Helper]
type = Helper
trigger1 = !NumHelper(90000005)
helpertype = Normal
stateNo = 90000005
ID = 90000005
name = "EXPLODsive Buffering helper"
posType = P1
facing = ifElse(Facing = 1, 1, -1)
keyCtrl = 1
ignoreHitPause = 1

[State -2, Debug]
type = DisplayToClipboard
trigger1 = 1
text = "AI = %d Attack = %f Hits = %d Juggle = %d"
params = AILevel, fvar(11), var(13), var(15)
ignoreHitPause = 1

[State -2, Debug]
type = AppendToClipboard
trigger1 = 1
text = "\nBy KarmaCharmeleon"
ignoreHitPause = 1



;===========================================================================
;===============================<-3 STATES>=================================
;===========================================================================
[StateDef -3]

[State -3, GameTime]
type = VarSet
trigger1 = 1
var(58) = GameTime
ignoreHitPause = 1

[State -3, ProjContact Reset]
type = VarSet
triggerAll = var(18)
trigger1 = StateNo != 1000 && StateNo != 1030
trigger1 = StateNo != 1200 && StateNo != 1230
trigger1 = StateNo != 1300 && StateNo != 1330
trigger1 = StateNo != 1600 && StateNo != 1650
trigger2 = (StateNo = 1000 || StateNo = 1030) && AnimElemTime(8) < 1
trigger3 = (StateNo = 1200 || StateNo = 1230) && AnimElemTime(3) < 1
trigger4 = (StateNo = 1300 || StateNo = 1330) && AnimElemTime(47) < 0 && !var(40)
trigger5 = StateNo = 1300 && AnimElemTime(28) < 0 && !var(40)
trigger6 = StateNo = 1600 && AnimElemTime(36) < 1
trigger7 = StateNo = 1650 && AnimElemTime(8) < 1
var(18) = 0

[State -3, Projectile Flag Reset]
type = VarSet
trigger1 = var(39) < 0
var(39) = 0
ignoreHitPause = 1

[State -3, Projectile Flag Off]
type = VarSet
trigger1 = !NumHelper(1005)
trigger1 = !NumHelper(1035)
trigger1 = !NumHelper(1205)
trigger1 = !NumHelper(1235)
trigger1 = !NumHelper(1305)
trigger1 = !NumHelper(1335)
trigger1 = !NumHelper(1605)
trigger1 = !NumHelper(1655)
var(39) = 0
ignoreHitPause = 1

[State -3, Chain Combo Reset]
type = VarSet
trigger1 = 1
var(4) = 0
ignoreHitPause = 1

[State -3, Chain Combo Check]
type = VarSet
trigger1 = var(20) && (StateNo = [200, 699]) && MoveContact
trigger2 = var(20) && (StateNo = [1000, 2999]) && StateType != A && (MoveContact || var(18))
var(4) = 1
ignoreHitPause = 1

[State -3, Command Cancel Reset]
type = VarSet
trigger1 = 1
var(5) = 0
ignoreHitPause = 1

[State -3, Command Cancel Check]
type = VarSet
triggerAll = !var(20)
trigger1 = StateNo = 200 && MoveContact
trigger2 = StateNo = 225 && MoveContact && AnimElemTime(4) < 0
trigger3 = StateNo = 230 && MoveContact
trigger4 = StateNo = 235 && MoveContact
trigger5 = StateNo = 245 && MoveContact && AnimElemTime(5) < 0
trigger6 = StateNo = 255 && MoveContact && AnimElemTime(4) < 0
trigger7 = StateNo = 400 && MoveContact
trigger8 = StateNo = 410 && MoveContact && AnimElemTime(4) < 0
trigger9 = StateNo = 430 && MoveContact
trigger10 = StateNo = 440 && MoveContact && AnimElemTime(5) < 0
trigger11 = StateNo = 450 && MoveContact && AnimElemTime(5) < 0
trigger12 = StateNo = 600 && MoveContact
trigger13 = StateNo = 630 && MoveContact
var(5) = 1
ignorehitpause = 1

[State -3, Cancel Reset]
type = VarSet
trigger1 = 1
var(6) = 0
ignoreHitPause = 1

[State -3, Cancel Check]
type = VarSet
trigger1 = var(20) && (StateNo = [200, 699])
trigger2 = var(20) && (StateNo = [1000, 2999]) && (MoveContact || var(18))
trigger3 = (StateNo = [200, 699]) && Time <= 2
trigger4 = StateNo = 200 && MoveContact
trigger5 = StateNo = 225 && MoveContact && AnimElemTime(4) < 0
trigger6 = StateNo = 230 && MoveContact
trigger7 = StateNo = 235 && MoveContact
trigger8 = StateNo = 245 && MoveContact && AnimElemTime(5) < 0
trigger9 = StateNo = 255 && MoveContact && AnimElemTime(4) < 0
trigger10 = StateNo = 400 && MoveContact
trigger11 = StateNo = 410 && MoveContact && AnimElemTime(4) < 0
trigger12 = StateNo = 430 && MoveContact
trigger13 = StateNo = 440 && MoveContact && AnimElemTime(5) < 0
trigger14 = StateNo = 450 && MoveContact && AnimElemTime(5) < 0
trigger15 = StateNo = 600 && MoveContact
trigger16 = StateNo = 630 && MoveContact
trigger17 = var(20) && (StateNo = 1412 || StateNo = 1442) && AnimElemTime(5) > 0
var(6) = 1
ignoreHitPause = 1

[State -3, Super Cancel Reset]
type = VarSet
trigger1 = 1
var(7) = 0
ignoreHitPause = 1

[State -3, Super Cancel Flag Reset]
type = VarSet
trigger1 = var(21)
trigger1 = (StateNo != [3000, 4999]) || MoveType = H
var(21) = 0
ignoreHitPause = 1

[State -3, Super Cancel Check]
type = VarSet
trigger1 = var(20) && (StateNo = [200, 699])
trigger2 = var(20) && (StateNo = [1000, 2999]) && (MoveContact || var(18))
trigger3 = (StateNo = [200, 699]) && Time <= 2
trigger4 = StateNo = 200
trigger5 = StateNo = 210 && (AnimElemTime(4) < 0 || (MoveContact = [1,8]))
trigger6 = StateNo = 225 && (AnimElemTime(4) < 0 || (MoveContact = [1,8]))
trigger7 = StateNo = 230
trigger8 = StateNo = 235
trigger9 = StateNo = 240 && (AnimElemTime(5) < 0 || (MoveContact = [1,8]))
trigger10 = StateNo = 245 && (AnimElemTime(5) < 0 || (MoveContact = [1,8]))
trigger11 = StateNo = 255 && (AnimElemTime(6) < 0 || (MoveContact = [1,8]))
trigger12 = StateNo = 400
trigger13 = StateNo = 410 && (AnimElemTime(4) < 0 || (MoveContact = [1,8]))
trigger14 = StateNo = 430
trigger15 = StateNo = 440 && (AnimElemTime(5) < 0 || (MoveContact = [1,8]))
trigger16 = StateNo = 450 && (AnimElemTime(5) < 0 || (MoveContact = [1,8]))
trigger17 = (StateNo = [1000, 1030]) && (AnimElemTime(8) = [2, 9])
trigger18 = (StateNo = 1100 || StateNo = 1130 || StateNo = 1150) && AnimElemTime(4) < 0 && MoveContact
trigger19 = (StateNo = [1200, 1230]) && AnimElemTime(19) < 0 && var(18)
trigger20 = (StateNo = [1300, 1330]) && (AnimElemTime(47) = [1, 8])
trigger21 = (StateNo = 1412 || StateNo = 1442) && AnimElemTime(5) > 0
trigger22 = StateNo = 1500 && AnimElemTime(13) < 0 && MoveContact && !var(10)
trigger23 = StateNo = 1500 && AnimElemTime(15) < 0 && MoveContact && var(10) = 1
trigger24 = StateNo = 1500 && AnimElemTime(16) < 0 && MoveContact && var(10) = 2
trigger25 = StateNo = 1530 && AnimElemTime(13) < 0 && MoveContact
trigger26 = StateNo = 1600 && (AnimElemTime(36) = [2, 9])
trigger27 = StateNo = 1800 && AnimElemTime(16) < 0 && MoveContact && var(10) != 2
trigger28 = StateNo = 1800 && AnimElemTime(15) < 0 && MoveContact && var(10) = 2
var(7) = 1
ignoreHitPause = 1

[State -3, Hyper Cancel Reset]
type = VarSet
trigger1 = 1
var(8) = 0
ignoreHitPause = 1

[State -3, Hyper Cancel Reset]
type = VarSet
trigger1 = StateNo = 3000 && AnimElemTime(25) < 1 && MoveContact
trigger2 = StateNo = 3112 && AnimElemTime(5) > 0
trigger3 = StateNo = 3310 && AnimElemTime(58) < 1 && MoveContact
var(8) = 1
ignoreHitPause = 1

[State -3, Hyper Cancel Flag Reset]
type = VarSet
trigger1 = var(22)
trigger1 = (StateNo != [3000, 4999]) || MoveType = H
var(22) = 0
ignoreHitPause = 1

[State -3, Parry Detection]
type = Helper
triggerAll = RoundState = 2 && !NumHelper(765) && !var(20)
triggerAll = (MoveType = I && ctrl) || (StateNo = [760, 762]) || StateNo = 5120
triggerAll = (command != "rlsfwd" && command != "rlsback" && command != "rlsup" && command != "rlsdown") || AILevel
trigger1 = !AILevel && (StateType = S || StateType = C || StateNo = 5120)
;Standing/crouch, no reversed commands
trigger1 = !NumExplod(92828282) && !NumExplod(94646464) && !NumExplod(92468246)
trigger1 = ifElse(P2dist x >= 0, command = "fwd", command = "back") || command = "down"
;Air, no reversed commands
trigger2 = !AILevel && StateType = A && (var(3) != 1 && var(3) != 2)
trigger2 = !NumExplod(94646464) && !NumExplod(92468246)
trigger2 = ifElse(P2dist x >= 0, command = "fwd", command = "back")
;Standing/crouch, left/right or all directions reverse
trigger3 = !AILevel && (StateType = S || StateType = C || StateNo = 5120)
trigger3 = NumExplod(94646464) || NumExplod(92468246)
trigger3 = ifElse(P2dist x >= 0, command = "back", command = "fwd") || ifElse(NumExplod(92468246), command = "up", command = "down")
;Standing/crouch, up/down reverse only
trigger4 = !AILevel && (StateType = S || StateType = C || StateNo = 5120)
trigger4 = NumExplod(92828282) && !NumExplod(94646464) && !NumExplod(92468246)
trigger4 = ifElse(P2dist x >= 0, command = "fwd", command = "back") || command = "up"
;Air, reversed commands
trigger5 = !AILevel && StateType = A && (var(3) != 1 && var(3) != 2)
trigger5 = NumExplod(94646464) || NumExplod(92468246)
trigger5 = ifElse(P2dist x >= 0, command = "back", command = "fwd")
trigger6 = AILevel && (StateNo != [760,762]) && InGuardDist
trigger7 = AILevel && (StateNo = [760,762]) && Time = 14
helperType = Normal
stateNo = 765
ID = 765
name = "Parry Detection"
posType = P1
pauseMoveTime = 65535
superMoveTime = 65535

[State -3, Parry Attacks]
type = ChangeState
trigger1 = (StateNo != [760,762]) && NumHelper(765)
trigger1 = Helper(765), StateNo = 766
value = ifElse((Helper(765), Anim = 767), 762, ifElse((Helper(765), Anim = 766), 761, 760))
ignoreHitPause = 1

[State -3, Parry Projectiles]
type = HitOverride
trigger1 = (StateNo != [760,762]) && NumHelper(765)
trigger1 = !(Helper(765), var(0)) && (Helper(765), Anim = 765)
attr = SA, AP
stateNo = 760
slot = 0
time = 1
ignoreHitPause = 1

[State -3, Parry Projectiles]
type = HitOverride
trigger1 = (StateNo != [760,762]) && NumHelper(765)
trigger1 = !(Helper(765), var(0)) && (Helper(765), Anim = 766)
attr = C, AP
stateNo = 761
slot = 0
time = 1
ignoreHitPause = 1

[State -3, Parry Projectiles]
type = HitOverride
trigger1 = (StateNo != [760,762]) && NumHelper(765)
trigger1 = !(Helper(765), var(0)) && (Helper(765), Anim = 767)
attr = SCA, AP
stateNo = 762
slot = 0
time = 1
ignoreHitPause = 1

[State -3, Assert: NoWalk after Parry]
type = AssertSpecial
trigger1 = var(26) > 0
trigger1 = var(26) := (var(26)-1)
flag = NoWalk
ignoreHitPause = 1

[State -3, Corner Push]
type = VarSet
trigger1 = fvar(5)
trigger1 = NumTarget
trigger1 = Target, HitOver || (Target, GetHitVar(HitShakeTime) > 0 && Target, Time <= 0)
fvar(5) = 0

[State -3, Corner Push]
type = VarSet
triggerAll = MoveType != H
trigger1 = MoveContact = 1 && NumTarget
fvar(5) = Target, GetHitVar(xVel)
ignoreHitPause = 1

[State -3, Corner Push]
type = PosAdd
triggerAll = fvar(5)
triggerAll = (StateType = S || StateType = C) && NumTarget
triggerAll = !HitPauseTime && Target, GetHitVar(HitShakeTime) <= 0
triggerAll = (Target, StateType = S || Target, StateType = C) && !(Target, GetHitVar(yvel)) && !(Target, HitFall)
trigger1 = Target, FrontEdgeBodyDist <= abs(Target, vel x)
trigger1 = (Target, GetHitVar(xvel) * Target, Facing) > 0
trigger2 = Target, BackEdgeBodyDist <= abs(target, vel x)
trigger2 = (Target, GetHitVar(xvel) * Target, Facing) < 0
x = ifElse(Target, FrontEdgeBodyDist <= 0, -1, 1) * (Target, Facing) * fvar(5)

[State -3, Corner Push]
type = VarSet
trigger1 = fvar(5)
trigger1 = abs(fvar(5)) < 1.0
fvar(5) = 0

[State -3, Corner Push]
type = VarSet
trigger1 = NumTarget
trigger1 = Target, GetHitVar(HitShakeTime) <= 0
fvar(5) = fvar(5) * 0.85

[State -3, EX FX Decrement]
type = VarAdd
trigger1 = var(25) > 0
var(25) = -1

[State -3, EX FX Reset]
type = VarSet
trigger1 = (StateNo != [1000,2999]) || MoveType = H
var(25) = 0

[State -3, EX Flash]
type = PalFX
trigger1 = !(GameTime % 2) && var(25)
time = 1
color = 0
mul = 256, 224, 0
add = 128, 128, 128
ignoreHitPause = 1

[State -3, Movement AfterImage]
type = AfterImage
triggerAll = Time = 1 && !var(20)
trigger1 = StateNo = 50 && (var(3) = 2 || var(3) = 3)
trigger2 = (StateNo = [700, 715])
time = 2
timeGap = 1
frameGap = 4
length = 9
palBright = 0,0,0
palContrast = 128,128,128
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.9,0.9,0.9
trans = Add1

[State -3, Level 1 Super AfterImage]
type = AfterImage
trigger1 = (StateNo = 3000 || StateNo = 3100 || StateNo = 3200 || StateNo = 3300 || StateNo = 3400) && Time = 43
time = 2
timeGap = 1
frameGap = 10
length = 21
palBright = 0,0,0
palContrast = 128,128,128
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.75,0.75,0.75
trans = Add1

[State -3, Level 2 Super AfterImage]
type = AfterImage
trigger1 = (StateNo = 3050 || StateNo = 3150 || StateNo = 3250 || StateNo = 3350 || StateNo = 3450) && Time = 43
time = 2
timeGap = 1
frameGap = 10
length = 21
palBright = 0,0,0
palContrast = 32,32,160
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.75,0.75,0.75
trans = Add1

[State -3, Level 3 Super AfterImage]
type = AfterImage
trigger1 = (StateNo = 3500 || StateNo = 3600 || StateNo = 3700 || StateNo = 3800) && Time = 43
time = 2
timeGap = 1
frameGap = 10
length = 21
palBright = 0,0,0
palContrast = 160,32,32
palPostBright = 0,0,0
palAdd = 0,0,0
palMul= 0.75,0.75,0.75
trans = Add1

[State -3, AfterImage Persist]
type = AfterImageTime
trigger1 = StateNo = 50 || (StateNo = [600,699])
trigger1 = (var(3) = 2 || var(3) = 3) && vel y < -1
trigger2 = var(20)
trigger3 = (StateNo = [700, 715])
trigger4 = (StateNo = [2000, 2010])
trigger5 = (StateNo = [3000, 4999])
trigger5 = StateNo != 3810
time = 2

[State -3, AfterImage Off]
type = AfterImageTime
triggerAll = Time <= 1
trigger1 = StateNo = 2000 || StateNo = 2010 || StateNo = 3000 || StateNo = 3050 || StateNo = 3100 || StateNo = 3150
trigger2 = StateNo = 3200 || StateNo = 3250 || StateNo = 3300 || StateNo = 3350 || StateNo = 3400 || StateNo = 3450
trigger3 = StateNo = 3500 || StateNo = 3600 || StateNo = 3700 || StateNo = 3800 || StateNo = 3810
time = 0

[State -3, Underground Juggle Prevention]
type = TargetBind
trigger1 = MoveContact = 1
trigger1 = NumTarget && NumEnemy
trigger1 = (Target, Time = 0) && (Target, ID = EnemyNear, ID)
trigger1 = !(Target, HitShakeOver) && (Target, pos y > 0)
pos = ceil(P2Dist x), ceil(-pos y)
ignoreHitPause = 1

[State -3, Prevent Crossup]
type = Width
trigger1 = MoveType != H
edge = 8, 0
ignoreHitPause = 1

[State -3, Variable Height]
type = PlayerPush
triggerAll = StateType = A && MoveType != H && NumEnemy
triggerAll = P2BodyDist x = [-(EnemyNear, const(size.ground.back) + EnemyNear, const(size.ground.front)), 0]
trigger1 = P2StateType = S
trigger1 = P2Dist y >= (EnemyNear, const(size.height) - 12)
trigger2 = P2StateType = C
trigger2 = P2Dist y >= (EnemyNear, const(size.height) - 28)
trigger3 = P2StateType = L
trigger3 = P2Dist y >= 12
value = 0
ignoreHitPause = 1

[State -3, Get Hit Sound]
type = PlaySnd
triggerall = Alive && Time = 1
triggerall = StateNo = 5000 || StateNo = 5010
trigger1 = GetHitVar(AnimType) >= 2 && Random < 500
trigger2 = GetHitVar(AnimType) = 1 && Random < 375
trigger3 = GetHitVar(AnimType) = 0 && Random < (250 * (AILevel ** 2 / 64.0))
value = 5000, (Random % 3) + 10 * (var(40) = 2)
channel = 0
ignoreHitPause = 1

[State -3, Get Hit Sound]
type = PlaySnd
triggerAll = Alive && Time = 1
trigger1 = (StateNo = 5000 || StateNo = 5010) && NumEnemy
trigger1 = GetHitVar(fall) || (EnemyNear, HitDefAttr = SCA,SA,HA)
trigger2 = (StateNo = 5020 || StateNo = 5070 || StateNo = 5080)
trigger3 = (StateNo = 5050 || StateNo = 5100) && (PrevStateNo != [5000,5199])
value = 5000, (Random % 3) + 10 * (var(40) = 2)
channel = 0
ignoreHitPause = 1

[State -3, Cheap KO]
type = ChangeState
trigger1 = !Alive && (StateNo = [5000,5010])
trigger1 = (PrevStateNo = [130,131]) || (PrevStateNo = [140,141]) || (PrevStateNo = [150,153])
value = 5950
ignoreHitPause = 1

[State -3, Assert: NoKOsnd (Cheap KO)]
type = AssertSpecial
trigger1 = (StateNo = [5000,5010])
trigger1 = (PrevStateNo = [130,131]) || (PrevStateNo = [140,141]) || (PrevStateNo=[150,153])
flag = NoKOsnd
ignoreHitPause = 1

[State -3, Stop Guarding Voice]
type = StopSnd
trigger1 = StateNo = [120,155]
channel = 0

[State -3, Custom Combo Finish]
type = Helper
triggerAll = WinKO && var(20)
triggerAll = RoundState = 3 && !NumHelper(8600)
trigger1 = MoveHit = [1,4]
trigger2 = StateNo = 810 && (AnimElemTime(19) = [1, 2])
trigger3 = StateNo = 820 && (AnimElemTime(5) = [1, 2])
trigger4 = NumHelper(1005)
trigger4 = (Helper(1005), StateNo = [1005, 1007]) && (Helper(1005), var(18))
trigger5 = NumHelper(1205)
trigger5 = (Helper(1205), StateNo = [1205, 1207]) && (Helper(1205), var(18))
trigger6 = NumHelper(1235)
trigger6 = (Helper(1235), StateNo = [1205, 1207]) && (Helper(1235), var(18))
trigger7 = NumHelper(1305)
trigger7 = (Helper(1305), StateNo = [1305, 1307]) && (Helper(1305), var(18))
trigger8 = NumHelper(1335)
trigger8 = (Helper(1335), StateNo = [1305, 1307]) && (Helper(1335), var(18))
trigger9 = StateNo = 1412 && (AnimElemTime(3) = [0, 1])
trigger10 = StateNo = 1442 && (AnimElemTime(5) = [0, 1])
trigger11 = NumHelper(1605)
trigger11 = (Helper(1605), StateNo = [1605, 1607]) && (Helper(1605), var(18))
trigger12 = NumHelper(1655)
trigger12 = (Helper(1655), StateNo = [1605, 1607]) && (Helper(1655), var(18))
trigger13 = StateNo = 1910 && (AnimElemTime(32) = [0, 1])
helperType = Normal
stateNo = 8600
ID = 8600 + 0 * (var(23) := 900)
name = "Super Finish"
posType = Left
pos = 160, -120
ownPal = 1
pauseMoveTime = 255
superMoveTime = 255
ignoreHitPause = 1

[State -3, Super Finish]
type = Helper
triggerAll = WinKO
triggerAll = RoundState = 3 && !NumHelper(8600)
trigger1 = MoveHit = 1 && (StateNo = [3000, 4999])
trigger1 = var(23) := StateNo
trigger2 = StateNo = [3000, 3099]
trigger2 = var(23) := 3000
trigger3 = StateNo = [3100, 3199]
trigger3 = var(23) := 3100
trigger4 = StateNo = [3200, 3299]
trigger4 = var(23) := 3200
trigger5 = StateNo = [3300, 3399]
trigger5 = var(23) := 3300
trigger6 = StateNo = [3400, 3499]
trigger6 = var(23) := 3400
trigger7 = NumHelper(3505)
trigger7 = ((Helper(3505), StateNo = [3505, 3507])) && Helper(3505), var(18)
trigger7 = var(23) := 3500
trigger8 = NumHelper(3605)
trigger8 = ((Helper(3605), StateNo = [3605, 3622])) && Helper(3605), var(18)
trigger8 = var(23) := 3600
trigger9 = StateNo = [3700, 3799]
trigger9 = var(23) := 3700
helperType = Normal
stateNo = 8600
ID = 8600
name = "Super Finish"
posType = left
pos = 160,-120
ownPal = 1
pauseMoveTime = 255
superMoveTime = 255
ignoreHitPause = 1