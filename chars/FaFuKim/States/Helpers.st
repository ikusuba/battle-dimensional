; _________________________________________
;| Kim Kaphwan by Jmorphman                |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
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
trigger1 = !(Root, AILevel) && Root, command = "down"
trigger2 = Root, AILevel && (Root, StateType != A) && P2StateType = C
value = 766

[State 765, Change to Standing / Jumping]
type = ChangeAnim
triggerAll = !Time
trigger1 = !(Root, AILevel) && Root, command = "fwd"
trigger2 = Root, AILevel && Anim != 766
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
trigger1 = (Root, command = "holdback")
trigger2 = Time < 4 && (Root, command = "holdfwd" + Root, command = "holddown") > 1
trigger3 = Time >= 4 && (Root, command = "holdfwd" || Root, command = "holddown")
trigger4 = Time >= 1 && (((Anim = 765 || Anim = 767) && Root, command = "fwd") || (Anim = 766 && Root, command = "down"))
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



;=====================<HAKIKYAKU PROJECTILE SHIELD>=========================
[StateDef 1505]
type = S
physics = N
moveType = I
ctrl = 0
sprPriority = -1

[State 1505, BindToRoot]
type = BindToRoot
trigger1 = 1
pos = 0,0
time = -1

[State 1505, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 1505, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
slot = 0
stateNo = 1505
ignoreHitPause = 1

[State 1505, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignoreHitPause = 1

[State 1505, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1505
value = 1505

[State 1505, Miss]
type = HitDef
trigger1 = 1
attr = S, NP
hitFlag =
sparkXY = -10,0

[State 1505, DestroySelf]
type = DestroySelf
trigger1 = Parent, StateNo != 1500 && Parent, StateNo != 1530
trigger2 = Parent, MoveType = H
trigger3 = !AnimTime



;========================<ZERO KYORI HOUOUKYAKU ENERGY PILLAR>=============================
[Statedef 3315]
type = S
physics = N
moveType = A
ctrl = 0
anim = 1
sprPriority = 1

[State 3315, Energy Pillar]
type = Explod
trigger1 = !Time
anim = 3315
ID = 3315
sprPriority = -7
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1

[State 3315, Energy Pillar (Extension)]
type = Explod
trigger1 = !Time
anim = 3315
sprPriority = -8
posType = P1
pos = 0,-670
vFacing = -1
scale = 0.5,1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1

[State 3315, Phoenix (Top Layer)]
type = Explod
trigger1 = !Time
anim = 3316
ID = 3316
sprPriority = -5
posType = P1
pos = 0,ceil(-pos y)
scale = 0.5,0.5
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1

[State 3315, Phoenix (Bottom Layer)]
type = Explod
trigger1 = !Time
anim = 3317
ID = 3317
sprPriority = -6
posType = P1
pos = 0,ceil(-pos y)
scale = 0.5,0.5
removeTime = -1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1

[State 3315, ModifyExplod]
type = ModifyExplod
trigger1 = Time = 30
ID = 3316
posType =P1
vel = 0,-18

[State 3315, ModifyExplod]
type = ModifyExplod
trigger1 = Time = 30
ID = 3317
posType = P1
vel = 0,-18

[State 3315, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 3315, RemoveExplod]
type = RemoveExplod
trigger1 = Time >= 56

[State 3315, DestroySelf]
type = DestroySelf
trigger1 = Time >= 56



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
scale = 0.3 - (Time * 0.03), 0.3 - (Time * 0.03)
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
scale = 0.15 + (0.009375 * Time), 0.15 + (0.009375 * Time)
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
scale = 0.15 + (0.009375 * Time), 0.15 + (0.009375 * Time)
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
scale = 0.3 - (0.0375 * Time), 0.3 - (0.0375 * Time)
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
scale = 0.35 - (Time * 0.035), 0.35 - (Time * 0.035)
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
scale = 0.175 + (0.0109375 * Time), 0.175 + (0.0109375 * Time)
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
scale = 0.175 + (0.0109375 * Time), 0.175 + (0.0109375 * Time)
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
scale = 0.35 - (0.04375 * Time), 0.35 - (0.04375 * Time)
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
scale = 0.4 - (Time * 0.04), 0.4 - (Time * 0.04)
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
scale = 0.2 + (0.0125 * Time), 0.2 + (0.0125 * Time)
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
scale = 0.2 + (0.0125 * Time), 0.2 + (0.0125 * Time)
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
scale = 0.4 - (0.05 * Time), 0.4 - (0.05 * Time)
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
scale = 0.45 - (Time * 0.045), 0.45 - (Time * 0.045)
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
scale = 0.225 + (0.0140625 * Time), 0.225 + (0.0140625 * Time)
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
scale = 0.225 + (0.0140625 * Time), 0.225 + (0.0140625 * Time)
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
scale = 0.4, 0.4
trans = AddAlpha
alpha = 256 - (32 * Time), 256

[State 8013, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(random < 500, -1, 1)
vFacing = ifElse(random < 500, -1, 1)
sprPriority=3
removeTime=8
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 0.45 - (0.05625 * Time), 0.45 - (0.05625 * Time)
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
scale = 0.5 - (Time * 0.05), 0.5 - (Time * 0.05)
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
scale = 0.25 + (0.015625 * Time), 0.25 + (0.015625 * Time)
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
scale = 0.25 + (0.015625 * Time), 0.25 + (0.015625 * Time)
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
scale = 0.5,0.5
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
scale = 0.5 - (0.0625 * Time), 0.5 - (0.0625 * Time)
trans = AddAlpha
alpha = 256 - (32 * Time),256

[State 8014, Remove Explods]
type = RemoveExplod
trigger1 = time >= 16

[State 8014, End]
type = DestroySelf
trigger1 = Time >= 16


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
scale = 0.25 + (0.09375 * Time), 0.25 + (0.09375 * Time)
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
scale = 0.25 + (0.03125 * Time), 0.25 + (0.03125 * Time)
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
trigger3 = Root, StateNo = 1520 && Root, AnimElem = 2

[State 8150, End]
type = DestroySelf
triggerAll = PlayerIDexist(var(0))
trigger1 = PlayerID(var(0)), ctrl
trigger2 = PlayerID(var(0)), Movetype != H || PlayerID(var(0)), StateNo = 5300
trigger3 = PlayerID(var(0)), StateType = L && (PlayerID(var(0)), StateNo != [5080,5081])



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
pos = -14,0

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
vel = ((RootDist x - 22) / 32.0), ((RootDist y - 65) / 32.0)
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



;========================< EXCEL COMBO CHARGE >=============================
[Statedef 8400]
type = A
velset = 0, 0
anim = 9741

[State 8400, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = invisible

[State 8400, BG PalFX]
type = bgpalfx
trigger1 = !time
time = 35
add = -255, -128, -128
sinadd = 255, 128, 128, 140

[State 8400, FX]
type = explod
trigger1 = !time
anim = 8400
ID = 8400
sprpriority = 5
postype = p1
removetime = 20
supermovetime = -1

[State 8400, FX]
type = explod
trigger1 = time = 15
anim = 8401
ID = 8401
sprpriority = 5
postype = p1
supermovetime = -1

[State 8400, FX]
type = explod
trigger1 = !time
anim = 8402
ID = 8402
sprpriority = 5
postype = p1
removetime = 15
supermovetime = -1

[State 8400, logo]
type = explod
trigger1 = !time
anim = 8403
ID = 8403
sprpriority = -5
postype = p1
facing = facing
supermovetime = -1

[State 8400, Scale]
type = modifyexplod
trigger1 = numexplod(8400)
ID = 8400
scale = 0.02 * time, 0.02 * time

[State 8400, Scale]
type = modifyexplod
trigger1 = numexplod(8400) && time >= 15
ID = 8400
scale = 0.02 * time, 0.02 * time
trans = addalpha
alpha = ceil(256 -(51.2 * (time -15))), 256

[State 8400, Scale]
type = modifyexplod
trigger1 = numexplod(8401)
ID = 8401
scale = 0.1 + (0.1 * (time -15)), 0.1 + (0.1 * (time -15))
trans = addalpha
alpha = ceil(256 -(25.6 * (time -15))), 256

[State 8400, Scale]
type = modifyexplod
trigger1 = numexplod(8402)
ID = 8402
scale = 2 -(0.133 * time), 2 -(0.133 * time)

[State 8400, Scale]
type = modifyexplod
trigger1 = numexplod(8403)
ID = 8403
scale = 0.0385 * time, 0.0385 * time
trans = addalpha
alpha = ifelse(time < 15, ceil(17.1 * time), ceil(256 -23.3 * (time -15))), 256

[State 8400, Safety]
type = removeexplod
trigger1 = time >= 26

[State 8400, End]
type = destroyself
trigger1 = time >= 30


;========================< EXCEL TIMER >=============================
[Statedef 8405]
physics = N
velset = 0, 0
anim = 9741

[State 8405, Turn]
type = turn
trigger1 = facing = -1

[State 8405, back]
type = explod
trigger1 = !numexplod(8406)
anim = 8406
ID = 8406
postype = p1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1

[State 8495, front]
type = explod
trigger1 = !numexplod(8407)
anim = 8407
ID = 8407
postype = p1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1

[State 8405, frame]
type = explod
trigger1 = !numexplod(8405)
anim = 8405
ID = 8405
postype = p1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1

[State 8405, Scale]
type = modifyexplod
trigger1 = numexplod(8407)
ID = 8407
scale = (root, var(20)) / 180.0, 1

[State 8405, Bind]
type = bindtoroot
trigger1 = 1
pos = 20 * (root, facing), 4
time = -1

[State 8405, Safety]
type = removeexplod
trigger1 = (root, var(20) <= 0)

[State 8405, End]
type = destroyself
trigger1 = (root, var(20) <= 0)



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

[State 8500, BGPalFX]
type = BGPalFX
trigger1 = Time < 48
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
trigger1 = Time = 0 || Time = 8 || Time = 16 || Time = 24 || Time = 32
anim = 8501
ID = ifElse(Time = 32, 5, ifElse(Time = 24, 4, ifElse(Time = 16, 3, ifElse(Time = 8, 2, 1))))
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

[State 8500, Scale Lines Explod 4]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 1 - (0.0625 * (Time - 24)), 1 - (0.0625 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8500, Scale Lines Explod 5]
type = ModifyExplod
trigger1 = NumExplod(5)
ID = 5
scale = 1 - (0.0625 * (Time - 32)), 1 - (0.0625 * (Time - 32))
trans = AddAlpha
alpha = ifElse((Time - 32) < 4, 64 * (Time - 24), 256), 256

[State 8500, Circle Explod]
type = Explod
trigger1 = Time = 33
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
scale = 2 - (0.125 * (Time - 33)), 2 - (0.125 * (Time - 33))
trans = AddAlpha
alpha = ifElse((Time - 33) < 4, 64 * (Time - 33), 256), 256

[State 3000: Helper]
type = Helper
trigger1 = parent,stateno !=950
trigger1 = Time = 0
helpertype = normal
name = "Afterimagederecha"
ID =8505
stateno = 8505
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999999
pausemovetime = 999999

[State 3000: Helper]
type = Helper
trigger1 = parent,stateno !=950
trigger1 = Time = 0
helpertype = normal
name = "Afterimageizquierda"
ID =8506
stateno = 8506
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999999
pausemovetime = 999999

[State 3000: Helper]
type = Helper
trigger1 = parent,stateno =950
trigger1 = Time = 12
helpertype = normal
name = "Afterimagederecha"
ID =8505
stateno = 8505
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999999
pausemovetime = 999999

[State 3000: Helper]
type = Helper
trigger1 = parent,stateno =950
trigger1 = Time = 12
helpertype = normal
name = "Afterimageizquierda"
ID =8506
stateno = 8506
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999999
pausemovetime = 999999

[State 8500, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 49

[State 8500, End]
type = DestroySelf
trigger1 = Time >= 49



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
type = BGPalFX
trigger1 = Time < 48
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
trigger1 = Time = 0 || Time = 8 || Time = 16 || Time = 24 || Time = 32
anim = 8511
ID = ifElse(Time = 32, 5, ifElse(Time = 24, 4, ifElse(Time = 16, 3, ifElse(Time = 8, 2, 1))))
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

[State 8510, Scale Lines Explod 5]
type = ModifyExplod
trigger1 = NumExplod(5)
ID = 5
scale = 1 - (0.0625 * (Time - 32)), 1 - (0.0625 * (Time - 32))
trans = AddAlpha
alpha = ifElse((Time - 32) < 4, 64 * (Time - 24), 256), 256

[State 8510, Circle Explod]
type = Explod
trigger1 = Time = 33
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
scale = 2 - (0.125 * (Time - 33)), 2 - (0.125 * (Time - 33))
trans = AddAlpha
alpha = ifElse((Time - 33) < 4, 64 * (Time - 33), 256), 256

[State 3000: Helper]
type = Helper
trigger1 = parent,stateno !=950
trigger1 = Time = 0
helpertype = normal
name = "Afterimagederecha"
ID =8505
stateno = 8505
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999999
pausemovetime = 999999

[State 3000: Helper]
type = Helper
trigger1 = parent,stateno !=950
trigger1 = Time = 0
helpertype = normal
name = "Afterimageizquierda"
ID =8506
stateno = 8506
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999999
pausemovetime = 999999

[State 3000: Helper]
type = Helper
trigger1 = parent,stateno =950
trigger1 = Time = 12
helpertype = normal
name = "Afterimagederecha"
ID =8505
stateno = 8505
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999999
pausemovetime = 999999

[State 3000: Helper]
type = Helper
trigger1 = parent,stateno =950
trigger1 = Time = 12
helpertype = normal
name = "Afterimageizquierda"
ID =8506
stateno = 8506
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999999
pausemovetime = 999999

[State 8510, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 49

[State 8510, End]
type = DestroySelf
trigger1 = Time >= 49


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
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 1 - (0.03125 * Time), 1 - (0.03125 * Time)
trans = AddAlpha
alpha = (8 * Time), 256

[State 8520, Scale Portrait 2a]
type = ModifyExplod
trigger1 = NumExplod(21) && Time < 16
ID = 21
posType = Back
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 2 - (0.09375 * Time), 2 - (0.09375 * Time)
trans = AddAlpha
alpha = (8 * Time), 256

[State 8520, Scale Portrait 1b]
type = ModifyExplod
trigger1 = NumExplod(20) && (Time = [16,32])
ID = 20
posType = Back
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
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
pos = 160 + (8 * (Time - 32)), floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5
trans = AddAlpha
alpha = 128 - 16 * (Time - 32), 256

[State 8520, Scale Portrait 2c]
type = ModifyExplod
trigger1 = NumExplod(21) && Time >= 32
ID = 21
posType = Back
pos = 160 - (8 * (Time - 32)), floor((1.3333333 * GameHeight / GameWidth) * 120)
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

[State 3000: Helper]
type = Helper
trigger1 = parent,stateno !=950
trigger1 = Time = 0
helpertype = normal
name = "Afterimagederecha"
ID =8505
stateno = 8505
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999999
pausemovetime = 999999

[State 3000: Helper]
type = Helper
trigger1 = parent,stateno !=950
trigger1 = Time = 0
helpertype = normal
name = "Afterimageizquierda"
ID =8506
stateno = 8506
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999999
pausemovetime = 999999

[State 3000: Helper]
type = Helper
trigger1 = parent,stateno =950
trigger1 = Time = 12
helpertype = normal
name = "Afterimagederecha"
ID =8505
stateno = 8505
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999999
pausemovetime = 999999

[State 3000: Helper]
type = Helper
trigger1 = parent,stateno =950
trigger1 = Time = 12
helpertype = normal
name = "Afterimageizquierda"
ID =8506
stateno = 8506
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 999999
pausemovetime = 999999

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

[State 8600, Move Name: Hououkyaku]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3000,3099])
var(0) = 2

[State 8600, Move Name: Hououtenbukyaku]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3100,3199])
var(0) = 3

[State 8600, Move Name: Hououhitenkyaku]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3200,3299])
var(0) = 4

[State 8600, Move Name: Zero Kyori Hououkyaku]
type = VarSet
trigger1= !Time && (Root, var(23) = [3300,3399])
var(0) = 5

[State 8600, Move Name: Rei Shiki Hououkyaku]
type = VarSet
trigger1= !Time && (Root, var(23) = [3400,3499])
var(0) = 6

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

;--------------------------------------------------
;Afterimages(Vyn)
[Statedef 8505]
physics=N
anim = root,anim

[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 0
;ignorehitpause =
;persistent =

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 2
ignorehitpause = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, BindToParent]
type = BindToroot
triggerall = stateno != 3900
trigger1 = time = 0
time = 1
pos = 0,0

[State 0, BindToParent]
type = BindToroot
triggerall = stateno = 3900
trigger1 = time = 0
time = 1
pos = -20,-75

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = .4
y = ifelse((root,statetype != A),0,-.4)

[State 0, Trans]
type = Trans
trigger1 = 1
trans=addalpha
alpha=120-2*(time),256

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Time >= 46
trigger2 = root,movetype =h

[State 3887: DestroySelf]
type = DestroySelf
trigger1 = Time >= 46
trigger2 = root,movetype =h
;--------------------------------------------------
;Afterimages(Vyn)
[Statedef 8506]
physics=N
anim = root,anim

[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 0
[State 0, BindToParent]
type = BindToroot
triggerall = stateno != 3900
trigger1 = time = 0
time = 1
pos = 0,0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 2
ignorehitpause = 1

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = -.4
y = ifelse((root,statetype != A),0,.4)

[State 0, Trans]
type = Trans
trigger1 = 1
trans=addalpha
alpha=120-2*(time),256

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = Time >= 46
trigger2 = root,movetype =h

[State 3887: DestroySelf]
type = DestroySelf
trigger1 = Time >= 46
trigger2 = root,movetype =h

;===<DIALOGUE>===
[Statedef 9200]
physics = N
anim = 9741
velset=0,0
sprpriority=99999

[State 191, 2]
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2 = nobardisplay

[State 0, Vs. Kensou]
type = VarSet
trigger1 = enemy, name = "Sie Kensou" || enemy, name = "Kensou" || enemy, name = "Sie"
var(10) = 2

[State 0, Vs. Yang]
type = VarSet
trigger1 = enemy, name = "Yang" 
var(10) = 3

[State 0, Vs. Chun-Li]
type = VarSet
trigger1 = enemy, name = "Chun-Li" 
var(10) = 4

[State 0, Vs. Fei-Long]
type = VarSet
trigger1 = enemy, name = "Fei-Long" 
var(10) = 5

[State 0, ChangeState]
type = ChangeState
trigger1 = var(10)
trigger1 = (root, stateno = 0) && (enemy, stateno = 0)
value = 9201
ctrl = 0

[State 0, DestroySelf]
type = DestroySelf
trigger1 = !var(10)

[Statedef 9201]
physics = N
anim = 9741
velset=0,0
sprpriority=99999

[State 256, AS]
type=assertspecial
trigger1=1
flag=intro
flag2=noshadow
flag3 = nobardisplay

[State 7610, BLACK LINES]
type = explod
trigger1 = !time
anim = 70000
ID = 9200
sprpriority = 80
postype = left
pos = 0, floor((gameheight / gamewidth) * 80) - 60
bindtime = -1
removetime = -1
scale = 1, 1
pausemovetime = 300
supermovetime = 300
ontop = 1

[State 7610, vs ANYONE - Portraits1]
type = explod
trigger1 = !time
anim = 90000 +var(10)*10
ID = 9200
sprpriority = 81
postype = left
pos = 0+ifelse(root, facing =1, 0, 320), floor((gameheight / gamewidth) * 80) +ifelse(root, facing =1, -59, 41)
bindtime = -1
removetime = -1
facing = ifelse(root, facing = 1, 1, -1)
scale = 1.05, 1.05
pausemovetime = 300
supermovetime = 300
ontop = 1
[State 7610, vs ANYONE - Portraits2]
type = explod
trigger1 = !time 
anim = 95000 +var(10)*10
ID = 9200
sprpriority = 81
postype = left
pos = 0+ifelse(root, facing =1, 320, 0), floor((gameheight / gamewidth) * 80) +ifelse(root, facing =1, 41, -59)
bindtime = -1
facing = ifelse(root, facing = 1, -1, 1)
removetime = -1
scale = 1.05, 1.05
pausemovetime = 300
supermovetime = 300
ontop = 1

[State 7610, vs ANYONE - Text1]
type = explod
trigger1 = !time
anim = 80000 +var(10)*10
ID = 9200
sprpriority = 82
postype = left
pos = 0 -ifelse(facing =1, 0, 82), floor((gameheight / gamewidth) * 80) +ifelse(facing =1, -60, 41)
bindtime = -1
removetime = -1
scale = 0.5, 0.5
pausemovetime = 300
supermovetime = 300
ontop = 1
[State 7610, vs ANYONE - Text2]
type = explod
trigger1 = !time
anim = 85000 +var(10)*10
ID = 9200
sprpriority = 82
postype = left
pos = 0 -ifelse(facing =1, 82, 0), floor((gameheight / gamewidth) * 80) +ifelse(facing =1, 41, -60)
bindtime = -1
removetime = -1
scale = 0.5, 0.5
pausemovetime = 300
supermovetime = 300
ontop = 1


[State 0, Vs. Kyo]
type = Removeexplod
triggerall = time >= 1900
trigger1 = var(10) = 2

[State 0, Vs. Kyo]
type = DestroySelf
triggerall = time >= 1900
trigger1 = var(10) = 2

[State 0, Vs. Iori]
type = Removeexplod
triggerall = time >= 1180
trigger1 = var(10) = 3

[State 0, Vs. Iori]
type = DestroySelf
triggerall = time >= 1180
trigger1 = var(10) = 3

[State 0, Vs. Ash]
type = Removeexplod
triggerall = time >= 1180
trigger1 = var(10) = 4

[State 0, Vs. Ash]
type = DestroySelf
triggerall = time >= 1180
trigger1 = var(10) = 4

[State 0, Vs. Krizalid]
type = Removeexplod
triggerall = time >= 1180
trigger1 = var(10) = 5

[State 0, Vs. Krizalid]
type = DestroySelf
triggerall = time >= 1180
trigger1 = var(10) = 5

[State 0, Vs. Kula]
type = Removeexplod
triggerall = time >= 1180
trigger1 = var(10) = 6

[State 0, Vs. Kula]
type = DestroySelf
triggerall = time >= 1180
trigger1 = var(10) = 6


;------------------------------------------------------
; Victory Screen
;------------------------------------------------------
; Based on the tutorial "Victory Patches" made by
; Rock.
;                    Thanx Rock
;------------------------------------------------------
;------------------------------------------------------

[Statedef 11000]
type = S
ctrl = 0
velset = 0,0

[State 11000, 1]
type = VarSet
trigger1 = var(5) = 3
v = 9
value = 26

[State 11000, 2]
type = VarRandom
trigger1 = var(5) = 4
v = 9
range = 19,21

[State 11000, 3]
type = VarSet
trigger1 = var(5) = 7
v = 9
value = 22

[State 11000, 4]
type = VarSet
trigger1 = var(5) = 8
v = 9
value = 23

[State 11000, 5]
type = VarRandom
trigger1 = var(5) = 9
v = 9
range = 24,25

[State 11000, 6]
type = VarSet
trigger1 = var(5) = 10
v = 9
value = 27

[State 11000, 7]
type = VarSet
trigger1 = var(5) = 11
v = 9
value = 28

[State 11000, 8]
type = PlaySnd
trigger1 = Time = 1
value = s11000,0

[State 11000, 9]
type = Explod
trigger1 = Time = 1
anim = 11006
pos = 0,-63
postype = left
sprpriority = 5
ownpal = 1
removetime = -1
scale = 0.5,0.5
ontop = 1

[State 11000, 10]
type = Explod
trigger1 = Time = 1
anim = 11007
pos = 0,-57
postype = left
sprpriority = 5
ownpal = 1
removetime = -1
scale = 0.5,0.5
ontop = 1

[State 11000, 11]
type = Explod
trigger1 = Time = 1
anim = 11007
pos = 0,171
postype = left
sprpriority = 5
ownpal = 1
removetime = -1
scale = 0.5,0.5
ontop = 1

[State 11000, 12]
type = Explod
trigger1 = Time = 1
anim = 11006
pos = 0,177
postype = left
sprpriority = 5
ownpal = 1
removetime = -1
scale = 0.5,0.5
ontop = 1

[State 11000, 13]
type = BGPalFX
trigger1 = Time < 60
time = 1
color = 12+(time*4)
add = 256-time*4,256-time*4,256-time*4
ignorehitpause = 1

[State 11000, 14]
type = Explod
trigger1 = Time = 14
anim = 11008
pos = 0,48
postype = left
sprpriority = 0
ownpal = 1
removetime = -1
scale = 0.5,0.17
trans = add1
vel = 0,0
ontop = 1

[State 11000, 15]
type = Explod
trigger1 = Time = 15
anim = 11000
pos = 20,21
postype = left
sprpriority = 6
ownpal = 1
removetime = -1
scale = 0.5,0.5
ontop = 1

[State 11000, 16]
type = Explod
trigger1 = Time = 38
anim = 11008
pos = 0,183
postype = right
facing = -1
sprpriority = 0
ownpal = 1
removetime = -1
scale = 0.5,0.242
trans = add1
vel = 0,0
ontop = 1

[State 11000, 17]
type = Explod
trigger1 = Time = 40
anim = 11007
pos = 319,177
postype = left
sprpriority = 7
ownpal = 1
removetime = -1
scale = 0.5,0.5
vel = -20,0
ontop = 1

[State 11000, 18]
type = Explod
trigger1 = Time = 40
anim = 11007
pos = 319,222
postype = left
sprpriority = 7
ownpal = 1
removetime = -1
scale = 0.5,0.5
vel = -20,0
ontop = 1

[State 11000, 19]
type = Explod
trigger1 = Time = 45
anim = 11001
pos = 170,34
postype = left
sprpriority = 7
ownpal = 1
removetime = -1
vel = 0,0
ontop = 1

[State 11000, 20]
type = BGPalfx
trigger1 = Time > 50
ignorehitpause = 1
time = 99999
add = 45,45,45
color = 256
invertall = 0

[State 11000, 21]
type = Explod
trigger1 = Time = 57
anim = 11007
pos = 0,177
postype = left
sprpriority = 7
ownpal = 1
removetime = -1
scale = 0.5,0.5
vel = 0,0
ontop = 1

[State 11000, 22]
type = Explod
trigger1 = Time = 57
anim = 11007
pos = 0,222
postype = left
sprpriority = 7
ownpal = 1
removetime = -1
scale = 0.5,0.5
vel = 0,0
ontop = 1

[State 11000, 23]
type = Explod
trigger1 = Time = 57
anim = 11002
pos = 226,16
postype = left
sprpriority = 7
ownpal = 1
removetime = -1
vel = 0,0
ontop = 1

[State 11000, 24]
type = Explod
trigger1 = Time = 60
anim = 11100 + var(9)
pos = 60,191
postype = left
sprpriority = 8
ownpal = 1
scale = 0.3,0.3
removetime = -1
ontop = 1

[State 11000, 25]
type = Explod
trigger1 = Time = 75
anim = 11003
pos = -80,43
postype = right
sprpriority = 7
ownpal = 1
removetime = -1
vel = 0,0
ontop = 1

[State 11000, 26]
type = Explod
trigger1 = Time = 80
anim = 11004
pos = -10,57
postype = right
sprpriority = 7
ownpal = 1
removetime = -1
vel = 0,0
ontop = 1

[State 11000, 27]
type = Explod
trigger1 = Time = 85
anim = 11005
pos = -10,71
postype = right
sprpriority = 7
ownpal = 1
removetime = -1
vel = 0,0
ontop = 1

[State 11000, 28]
type = AssertSpecial
trigger1 = Time = [1,480]
flag = RoundNotOver

[State 11000, 29]
type = AssertSpecial
trigger1 = Time = [1,4000]
flag = nobardisplay
flag2 = globalnoshadow
flag3 = nomusic

[State 11000, 30]
type = AssertSpecial
trigger1 = Time = [1,4000]
flag = Nofg
flag2 = invisible

;------------------------------------------------------
; Win With Partner
;------------------------------------------------------

[Statedef 11001]
type = S
ctrl = 0
anim = 10000

[State 186, 1]
type = AssertSpecial
trigger1 = Time = [1,480]
flag = RoundNotOver