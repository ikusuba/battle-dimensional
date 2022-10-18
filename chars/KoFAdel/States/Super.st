
;---------------------------------------------------------
;Grosse Kronprinz LVL1
[StateDef 3000]
type = S
physics = N
moveType = A
anim = 3200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id =  6100

[State 3000, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3000, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = VarSet
trigger1 = 1
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
trigger1 = time < 46
time = 1
value = SCA

[State 3000, Super Pause FX]
type = Helper
trigger1 = anim = 3200
trigger1 = animelem = 4
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = p1
pos = ceil(-47 * const(size.xScale)), ceil(-96 * const(size.yScale))
superMoveTime = 46
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3000, Super Pause]
type = SuperPause
trigger1 = anim = 3200
trigger1 = animelem = 4
time = 46
moveTime = 46
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3000, Helper]
type = Helper
trigger1 = anim = 3200
trigger1 = animelem = 52
trigger2 = anim = 1304
trigger2 = animelem = 4
helpertype = normal
name = "wave"
ID = 1305
stateno = 1305
pos = 60,-75
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
sprpriority = 5
supermove
pausemove
size.xscale =.5
size.yscale =.5

[State 3000, Helper]
type = Helper
trigger1 = anim = 3200
trigger1 = animelem = 4
helpertype = normal
name = "handfx"
ID = 1315
stateno = 1315
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
sprpriority = 5
supermove
pausemove

[State 3000, Position]
type = PosSet
trigger1 = !Time
y = 0

[State 3000, Voice]
type = PlaySnd
trigger1 = anim = 3200
trigger1 = animelem = 3
value = 1300,0
channel = 0

[State 3000, Voice]
type = PlaySnd
trigger1 = anim = 3200
trigger1 = animelem = 52
trigger2 = anim = 1304
trigger2 = animelem = 4
value = 1300,2
channel = 0

[State 3000, VarSet]
type = VarSet
trigger1 = anim = 3200
trigger1 = time = 36
v = 10
value = 1

[State 3000, VarSet]
type = VarSet
trigger1 = anim = 3200
trigger1 = time = 116
v = 10
value = 2

[State 3000, ChangeAnim]
type = ChangeAnim
trigger1 = command != "holdp"
trigger1 = time = [49,104]
trigger1 = anim = 3200
trigger2 = (anim = 3200) && (animelemtime(45) = 2)
value = 1304

[State 3000, end]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;---------------------------------------------------------
;Grosse Kreis (L) LVL1
[StateDef 3100]
type = S
physics = S
moveType = A
anim = 3100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id =  6100

[State 3100, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3100, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3100, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3100, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3100, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
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
trigger1 = AnimElemTime(6) < 0
time = 10
value = SCA

[State 3100, Super Pause FX]
type = Helper
trigger1 = Time = 5
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(36 * const(size.xScale)), ceil(-40 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3100, SuperPause]
type = SuperPause
trigger1 = Time = 5
time = 48
moveTime = 48
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 105, 1]
type = StateTypeSet
trigger1 = AnimElem = 11
movetype = I

[State 3001, Width]
type = Width
trigger1 = 1
edge = 5,0

[State 3000, Voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1300,0
channel = 0

[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1100,1
channel = 1

[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1100,1
channel = 1

[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1,5

[State 1100, Dust Helper]
type = Helper
trigger1 = AnimElem = 23
helperType = Normal
stateNo = 8100
ID = 8100
name = "Genocide Heaven Dust"
posType = P1
ownPal = 1

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 6
x = 3.25
y = -6.25

[State 1100, Vel X]
type = VelMul
trigger1 = AnimElemTime(7)>0
x = 1.25

[State 1100, Gravity]
type = VelAdd
trigger1 = AnimElemTime(10)>0
y = .65

[State 1130, Explod]
type = Explod
trigger1 = animelem = 7
anim = 1190
ID = 1190
pos = 5,-63
postype = p1
bindtime = -1
removetime = -2
supermove
pausemove
scale = .42,.43
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 0

[State 52, Blade Remove]
type = RemoveExplod
trigger1 = Time = 0
ID = 1190
ignorehitpause = 1

[State 52, Blade Remove]
type = RemoveExplod
trigger1 = Time = 0
ID = 1490
ignorehitpause = 1

[State 52, Blade Remove]
type = RemoveExplod
trigger1 = Time = 0
ID = 1491
ignorehitpause = 1

[State 3100, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 4
trigger1 =  time = 1
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 147 < 7, 7, fvar(11) * 147)), 10
getPower = 0,0
givePower = 36, 36
pauseTime = 5,12
guard.pauseTime = 5,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 22
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -5, -13
ground.cornerPush.velOff = 0
guard.velocity = -2.52
guard.cornerPush.velOff = 0
air.velocity = -5,-9
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
air.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8017)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 165), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 1100, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 3105

;---------------------------------------------------------
;Grosse Kreis (M) LVL1
[StateDef 3101]
type = S
physics = S
moveType = A
anim = 3100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id =  6100

[State 3101, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3101, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3101, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3101, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3101, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3101, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3101, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3101, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(6) < 0
time = 10
value = SCA

[State 3101, Super Pause FX]
type = Helper
trigger1 = Time = 5
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(36 * const(size.xScale)), ceil(-40 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3101, SuperPause]
type = SuperPause
trigger1 = Time = 5
time = 48
moveTime = 48
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 105, 1]
type = StateTypeSet
trigger1 = AnimElem = 10
movetype = I

[State 3101, Width]
type = Width
trigger1 = 1
edge = 5,0

[State 3101, Voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1300,0
channel = 0

[State 3101, Effect]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1100,1
channel = 1

[State 3101, Effect]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1100,1
channel = 1

[State 3101, Effect]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1,5

[State 3101, Dust Helper]
type = Helper
trigger1 = AnimElem = 23
helperType = Normal
stateNo = 8100
ID = 8100
name = "Genocide Heaven Dust"
posType = P1
ownPal = 1

[State 3101, Velocity]
type = VelSet
trigger1 = AnimElem = 6
x = 6.75
y = -4.25

[State 3101, Vel X]
type = VelMul
trigger1 = AnimElemTime(7)>0
x = 1.25

[State 3101, Gravity]
type = VelAdd
trigger1 = AnimElemTime(10)>0
y = .65

[State 1130, Explod]
type = Explod
trigger1 = animelem = 7
anim = 1190
ID = 1190
pos = 5,-63
postype = p1
bindtime = -1
removetime = -2
supermove
pausemove
scale = .42,.43
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 0

[State 52, Blade Remove]
type = RemoveExplod
trigger1 = Time = 0
ID = 1190
ignorehitpause = 1

[State 52, Blade Remove]
type = RemoveExplod
trigger1 = Time = 0
ID = 1490
ignorehitpause = 1

[State 52, Blade Remove]
type = RemoveExplod
trigger1 = Time = 0
ID = 1491
ignorehitpause = 1

[State 3101, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 4
trigger1 =  time = 1
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 147 < 7, 7, fvar(11) * 147)), 10;Ifelse(enemy,gethitvar(hitcount) > 5,120,170)
getPower = 0,0
givePower = 36, 36
pauseTime = 5,12
guard.pauseTime = 5,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 22
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -5, -9
ground.cornerPush.velOff = 0
guard.velocity = -2.52
guard.cornerPush.velOff = 0
air.velocity = -5,-9
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
air.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8017)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 165), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 1100, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 3105

;-------------------------------------------------------------
; G.Himel Kreis
[StateDef 3102]
type = S
physics = S
moveType = A
anim = 3101
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3102, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3102, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3102, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3102, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3102, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3102, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3102, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3102, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(8) < 0
time = 6
value = SCA

[State 3102, Super Pause FX]
type = Helper
trigger1 = Time = 5
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(42 * const(size.xScale)), ceil(-130 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3102, SuperPause]
type = SuperPause
trigger1 = Time = 5
time = 50
moveTime = 50
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3102, 1]
type = StateTypeSet
trigger1 = AnimElem = 29
movetype = I

[State 3102, Width]
type = Width
trigger1 = 1
edge = 5,0

[State 3102, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 730,1
channel = 0

[State 3102, Effect]
type = PlaySnd
trigger1 = AnimElem = 7
trigger2 = AnimElem = 25
value = 1100,1
channel = 1

[State 3102, Effect]
type = PlaySnd
trigger1 = AnimElem = 7
trigger2 = AnimElem = 25
value = 1100,1
channel = 1

[State 3102, Effect]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1,5

[State 3102, Voice]
type = PlaySnd
trigger1 = animelem = 16
value = 4,2
channel = 0

[State 3102, Voice]
type = PlaySnd
trigger1 = animelem = 24
value = 4,1
channel = 0

[State 3102, PlaySnd]
type = PlaySnd
trigger1 = time = 68
value = 1100,1
channel = 1

[State 3102, PlaySnd]
type = PlaySnd
trigger1 = time = 68
value = 1,4

[State 3102, VelSet]
type = VelSet
trigger1 = animelem = 17
x = 9

[State 3102, VelSet]
type = VelSet
trigger1 = animelem = 19
x = 0

[State 3102, Velocity]
type = VelSet
trigger1 = AnimElem = 24
x = 3.25
y = -6.25

[State 3102, Vel X]
type = VelMul
trigger1 = AnimElemTime(25)>0
x = 1.25

[State 3102, Gravity]
type = VelAdd
trigger1 = AnimElemTime(28)>0
y = .65

[State 3102, Super]
type = Explod
trigger1 = animelem = 7
anim = 3190
ID = 3190
pos = 50,-60
postype = p1
bindtime = 1
vfacing = 1
facing = 1
removetime = -2
vel = .2,1
scale = .4,.5
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 3102, Explod]
type = Explod
trigger1 = animelem = 17
anim = 1491
ID = 1491
pos = 80,-90
postype = p1
bindtime = -1
removetime = -2
supermove
pausemove
scale = .35,.25
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 3102, Explod]
type = Explod
trigger1 = animelem = 25
anim = 1190
ID = 1190
pos = 5,-63
postype = p1
bindtime = -1
removetime = -2
supermove
pausemove
scale = .42,.43
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 0

[State 3102, Blade Remove]
type = RemoveExplod
trigger1 = Time = 0
ID = 1190
ignorehitpause = 1

[State 3102, Blade Remove]
type = RemoveExplod
trigger1 = Time = 0
ID = 1491
ignorehitpause = 1

[State 3102, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 5
trigger1 =  AnimElem = 8
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 37 < 7, 7, fvar(11) * 37)), 10
getPower = 0,0
givePower = 36, 36
pauseTime = 5,12
guard.pauseTime = 5,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 22
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 3, 0
ground.cornerPush.velOff = 0
guard.velocity = -2.52
guard.cornerPush.velOff = 0
air.velocity = -1.5, -7
air.cornerPush.velOff = 0
yAccel = 0.6
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
air.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8017)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 164), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3102, HitDef 2]
type = HitDef
trigger1 = !var(16) && var(15) < 6
trigger1 =  AnimElem = 17
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 17 < 7, 7, fvar(11) * 17)), 10
getPower = 0,0
givePower = 36, 36
pauseTime = 5,12
guard.pauseTime = 5,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 22
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -2.52
guard.cornerPush.velOff = 0
air.velocity = -1.5, -7
air.cornerPush.velOff = 0
yAccel = 0.6
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
air.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8017)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 157), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3102, HitDef 3]
type = HitDef
trigger1 = !var(16) && var(15) < 7
trigger1 =  animelem = 25
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 97 < 7, 7, fvar(11) * 97)), 10;Ifelse(enemy,gethitvar(hitcount) > 5,120,170)
getPower = 0,0
givePower = 36, 36
pauseTime = 5,12
guard.pauseTime = 5,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 22
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -5, -13
ground.cornerPush.velOff = 0
guard.velocity = -2.52
guard.cornerPush.velOff = 0
air.velocity = -5,-9
air.cornerPush.velOff = 0
yAccel = 0.75
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
air.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8017)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 165), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3102, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 3105

;---------------------------------------------------------
;Landing
[Statedef 3105]
type = S
physics = S
ctrl = 0
anim = 3105
velset = 0,0

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

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 52, Effect]
type = PlaySnd
trigger1 = Time = 0
value = 52, 0

[State 52, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------
; G.Kreis 2 (Slide) LVL1
[Statedef 3110]
type = C
movetype = A
physics = N
juggle = 0
anim = 3149
poweradd = -1000
ctrl = 0
velset = 0
facep2 = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id =  6100

[State 3000, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3000, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, PosSet]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 3000, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3000, Width]
type = Width
trigger1 = 1
edge = 1,0

[State 3100, Super Pause FX]
type = Helper
trigger1 = Time = 0
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(7 * const(size.xScale)), ceil(-14 * const(size.yScale))
superMoveTime = 36
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3100, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 36
moveTime = 36
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = SCA,AA,AP,NT,ST
time = 42

[State 3000, 3]
type = PlaySnd
trigger1 = Time = 36
value = 1300,0
volume = 0

[State 1000, 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,4
channel = 0
volume = 255

[State 1100, Velocity]
type = VelSet
trigger1 = animelem=3,>0
x = 10

[State 3010-1, HitDef]
type = Hitdef
trigger1 = (p2stateno != [5020,5040])
trigger1 = ifelse(Var(20) = 1,var(12) = 0,p2life > 0)
trigger1 = AnimElem = 3
attr = C, HA
hitflag = M
guardflag = L
animtype = Hard
priority = 3,Hit
pausetime = 6,7
damage = ceil(ifElse(fvar(11) * 67 < 7, 7, fvar(11) * 67)), 10
guard.pausetime = 3,4
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 166), var(36) := -7
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1 + 0 * (var(32) := 0)
ground.type = High
air.type = High
ground.slidetime = 18
ground.hittime = 18
air.hittime = 18
guard.hittime  = 15
ground.velocity = -3.5
guard.velocity = -8
air.velocity = -4.5,-10
airguard.velocity = -6.5,-5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0,0
givepower = 25,25
persistent = 0
fall = 0
air.fall = 1
fall.recover = 0
air.recover = 0
yaccel = .5

[State 1001, 21]
type = ChangeState
trigger1 = movecontact
trigger2 = time >= 60
value = 3115

;---------------------------------------------------------
;Grosse Kreis 2 LVL1
[StateDef 3115]
type = S
physics = S
moveType = A
anim = 3150
ctrl = 0
velSet = 0,0
sprPriority = 1
faceP2 = 0

[State 3115, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3115, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3115, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3115, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3115, 1]
type = StateTypeSet
trigger1 = AnimElem = 14
movetype = I

[State 3115, Width]
type = Width
trigger1 = 1
edge = 5,0

[State 3115, Effect]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 13
value = 1100,1
channel = 1

[State 3115, Effect]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 13
value = 1,5

[State 3115, Effect]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 13
value = 41,0

[State 3115, Position]
type = PosAdd
trigger1 = AnimElem = 1
x = 14

[State 3115, StateType]
type = StateTypeSet
trigger1 = AnimElem = 16
StateType = A
physics = N

[State 3115, Dust Helper]
type = Helper
trigger1 = AnimElem = 21
helperType = Normal
stateNo = 8100
ID = 8100
name = "Genocide Heaven Dust"
posType = P1
ownPal = 1

[State 3115, StateType]
type = StateTypeSet
trigger1 = AnimElem = 3
StateType = A
physics = N

[State 3115, Velmul]
type = Velmul
trigger1 = animelem=1,>0
trigger1 = animelem=3,<0
x = 1.02

[State 3115, Velmul]
type = Velmul
trigger1 = animelem=6,>0
x = .97

[State 3115, Velocity]
type = VelSet
trigger1 = AnimElem = 3,= 0
x = 5
y = -8

[State 3115, Velocity]
type = VelSet
trigger1 = AnimElem = 6,= 0
x = -3

[State 3115, 4]
type = VelAdd
trigger1 = AnimElem = 3 >= 0
y = .5

[State 1130, Explod]
type = Explod
trigger1 = animelem = 4
anim = 1190
ID = 1190
pos = 5,-63
postype = p1
bindtime = -1
removetime = -2
supermove
pausemove
scale = .42,.43
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 0

[State 52, Blade Remove]
type = RemoveExplod
trigger1 = Time = 0
ID = 1190
ignorehitpause = 1

[State 52, Blade Remove]
type = RemoveExplod
trigger1 = Time = 0
ID = 1490
ignorehitpause = 1

[State 52, Blade Remove]
type = RemoveExplod
trigger1 = Time = 0
ID = 1491
ignorehitpause = 1

[State 3115, HitDef 1]
type = Hitdef
trigger1 = ifelse(Var(20) = 1,var(12) = 0,p2life > 0)
trigger1 = time = 0
attr = A, HA
hitflag = MAF
guardflag = MA
animtype = Hard
priority = 3,Hit
pausetime = 2,4
damage = ceil(ifElse(fvar(11) * 87 < 7, 7, fvar(11) * 87)), 10
guard.pausetime = 6, 10
sparkNo = -1 + 0 * (var(33) := 8017)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 165), var(36) := -80
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
ground.type = High
air.type = High
ground.slidetime = 18
ground.hittime = 18
air.hittime = 18
guard.hittime  = 15
ground.velocity = -4.5,-10
guard.velocity = -11
air.velocity = -4.5,-10
airguard.velocity = -6.5,-5
ground.cornerpush.veloff = -12
guard.cornerpush.veloff = -12
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = -12
getpower = 0,0
givepower = 5,5
persistent = 0
fall = 1
air.fall = 1
fall.recover = 0
air.recover = 0
yaccel = .5
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3115, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 3105

;---------------------------------------------------------
; MAX G.Kreis (Slide) LVL2
[Statedef 3120]
type = C
movetype = A
physics = N
juggle = 0
anim = 3149
poweradd = -2000
ctrl = 0
velset = 0
facep2 = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id =  6100

[State 3120, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3120, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3120, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3120, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3120, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3000, PosSet]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 3000, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3000, Width]
type = Width
trigger1 = 1
edge = 1,0

[State 3120, Super Pause FX]
type = Helper
trigger1 = Time = 0
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(7 * const(size.xScale)), ceil(-14 * const(size.yScale))
superMoveTime = 36
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3120, SuperPause]
type = SuperPause
trigger1 = Time = 1
time = 36
moveTime = 36
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,1
darken = 0

[State 3120, NotHitBy]
type = NotHitBy
trigger1 = Time = 0
value = SCA,AA,AP,NT,ST
time = 48

[State 3120, 3]
type = PlaySnd
trigger1 = Time = 36
value = 1300,0
volume = 0

[State 1000, 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,4
channel = 0
volume = 255

[State 1100, Velocity]
type = VelSet
trigger1 = animelem=3,>0
x = 10

[State 3010-1, HitDef]
type = Hitdef
trigger1 = (p2stateno != [5020,5040])
trigger1 = ifelse(Var(20) = 1,var(12) = 0,p2life > 0)
trigger1 = AnimElem = 3
attr = C, HA
hitflag = M
guardflag = L
animtype = Hard
priority = 3,Hit
pausetime = 3,4
damage = ceil(ifElse(fvar(11) * 67 < 7, 7, fvar(11) * 67)), 10
guard.pausetime = 3,4
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 166), var(36) := -7
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1 + 0 * (var(32) := 0)
ground.type = High
air.type = High
ground.slidetime = 18
ground.hittime = 18
air.hittime = 18
guard.hittime  = 15
ground.velocity = -3.5
guard.velocity = -8
air.velocity = -4.5,-10
airguard.velocity = -6.5,-5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 0,0
givepower = 25,25
persistent = 0
fall = 0
air.fall = 1
fall.recover = 0
air.recover = 0
yaccel = .5

[State 3120, 21]
type = ChangeState
trigger1 = movecontact
trigger2 = time >= 60
value = 3125

;---------------------------------------------------------
;MAX Grosse Kreis LVL2
[StateDef 3125]
type = S
physics = S
moveType = A
anim = 3155
ctrl = 0
velSet = 0,0
sprPriority = 1
faceP2 = 0

[State 3125, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3125, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3125, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3125, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3125, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(2) < 0
time = 1
value = SCA

[State 3125, 1]
type = StateTypeSet
trigger1 = AnimElem = 14
movetype = I

[State 3125, Width]
type = Width
trigger1 = 1
edge = 5,0

[State 3125, Effect]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 13
value = 1100,1
channel = 1

[State 3125, Effect]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 13
value = 1,5

[State 3125, Effect]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 13
value = 41,0

[State 3125, Position]
type = PosAdd
trigger1 = AnimElem = 1
x = 12

[State 3125, StateType]
type = StateTypeSet
trigger1 = AnimElem = 16
StateType = A
physics = N

[State 3125, Dust Helper]
type = Helper
trigger1 = AnimElem = 21
helperType = Normal
stateNo = 8100
ID = 8100
name = "Genocide Heaven Dust"
posType = P1
ownPal = 1

[State 3125, Velocity]
type = VelSet
trigger1 = AnimElem = 4
x = 8
y = -5.5

[State 3125, Gravity]
type = VelAdd
trigger1 = AnimElemTime(12) > 0
y = .4

[State 3125, Velocity]
type = VelSet
trigger1 = AnimElem = 12
x = 4.333
y = -4.333

[State 1130, Explod]
type = Explod
trigger1 = animelem = 5
anim = 1190
ID = 1190
pos = 5,-63
postype = p1
bindtime = -1
removetime = -2
supermove
pausemove
scale = .42,.43
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 0

[State 1130, Explod]
type = Explod
trigger1 = animelem = 11
anim = 1190
ID = 1190
pos = 5,-63
postype = p1
bindtime = -1
removetime = -2
supermove
pausemove
scale = .42,.43
sprpriority = 3
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 0

[State 52, Blade Remove]
type = RemoveExplod
trigger1 = Time = 0
ID = 1190
ignorehitpause = 1

[State 52, Blade Remove]
type = RemoveExplod
trigger1 = Time = 0
ID = 1490
ignorehitpause = 1

[State 52, Blade Remove]
type = RemoveExplod
trigger1 = Time = 0
ID = 1491
ignorehitpause = 1

[State 3125, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 3
trigger1 =  AnimElem = 5 || AnimElem = 7
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 37 < 7, 7, fvar(11) * 47)), 10
getPower = 0,0
givePower = 36, 36
pauseTime = 5,6
guard.pauseTime = 5,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, -9
ground.cornerPush.velOff = 0
guard.velocity = -2.52
guard.cornerPush.velOff = 0
air.velocity = -3.5, -12
air.cornerPush.velOff = 0
yAccel = 0.6
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
air.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8017)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 183), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 0
envShake.ampl = 0
envShake.freq = 0

[State 3125, HitDef 2]
type = HitDef
trigger1 = !var(16) && var(15) < 4
trigger1 =  AnimElem = 13
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 97 < 7, 7, fvar(11) * 97)), 10
getPower = 0,0
givePower = 36, 36
pauseTime = 28,30
guard.pauseTime = 18,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 12
air.hitTime = 120
ground.velocity = ifelse(var(20), -2.36, -4), -8
ground.cornerPush.velOff = 0
guard.velocity = -2.52
guard.cornerPush.velOff = 0
air.velocity = -5.5, -10
air.cornerPush.velOff = 0
yAccel = 0.7
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
air.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8017)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 165), var(36) := -90
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3125, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 3105

;Grosse Sklaven LVL3
[StateDef 3300]
type = S
physics = N
moveType = A
anim = 3000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -3000
faceP2 = 1

[State 3300, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

;[State 3300, Hyper Cancel Flag]
;type = VarSet
;trigger1 = !Time
;var(22) = (PrevStateNo = [3000,4999]) && var(8)

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
trigger1 = AnimElemTime(4) < 0
value = SCA,AA,AP,NT,ST
time = 12

[State 3300, SuperPause FX]
type = Helper
trigger1 = Time = 0
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = ceil(-35 * const(size.xScale)), ceil(-82 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3300, SuperPause]
type = SuperPause
trigger1 = Time = 0
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,2
darken = 0

[State 100, Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4,ifElse(var(40) = 1, 11, 1)
channel = 0

[State 100, Effect]
type = PlaySnd
triggerall = anim = 3000
trigger1 = AnimElem = 5
trigger2 = AnimElem = 9
trigger3 = AnimElem = 13
value = 100,0
channel = 19

[State 3300, 2]
type = Explod
trigger1 = animelem = 4
anim = 6100
ID = 6100
pos = 14,0
postype = p1
bindtime = -1
removetime = -1
scale = .5,.5
sprpriority = 4
ownpal = 1
removeongethit = 1

[State 3300, RemoveExplod]
type = RemoveExplod
trigger1 = animelem = 23
id = 6100

[State 3300, Width]
type = Width
trigger1 = 1
edge = 1,0

[State 220, Position]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 0, PosAdd]
type = PosAdd
trigger1 = animelemtime(4) = 0
x = 11

[State 1100, Velocity]
type = VelSet
trigger1 = AnimElem = 4
x = 7.5

[State 52, Blade Remove]
type = RemoveExplod
trigger1 = Time = 0
ID = 1190
ignorehitpause = 1

[State 52, Blade Remove]
type = RemoveExplod
trigger1 = Time = 0
ID = 1490
ignorehitpause = 1

[State 52, Blade Remove]
type = RemoveExplod
trigger1 = Time = 0
ID = 1491
ignorehitpause = 1

[State 1200, 1]
type = HitDef
trigger1 = !var(16) && var(15) < 7
trigger1 = AnimElem = 4
attr = S, HA
damage = ceil(ifElse(fvar(11) * 0 < 7, 7, fvar(11) * 0)), 0
hitflag = MAF
guardflag = M
priority = 7, Hit
pauseTime = 0,1
guard.pauseTime = 3,1
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 57), var(36) := -66
getpower = 0, 0
givepower = 24,24
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = -1.52
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 0
air.fall = 1
fall.recover = 0
air.recover = 0
forcestand = 1
ID = 3000
envshake.time = 5
envshake.ampl = 2
kill = 0

[State 901,1]
type = TargetBind
trigger1 = time > 1 && numtarget && movehit
pos = 40, 0
postype = P1
time = -1
id = 3000

[State 1200, 2]
type = ChangeState
trigger1 = time > 1 && numtarget && movehit
value = 3304
persistent = 0

[State 1200, 2]
type = ChangeState
triggerall = AnimElemTime(4) > 0
trigger1 = AnimTime = 0
trigger2 = Frontedgebodydist <= 0
trigger3 = P2statetype = L
trigger3 = P2BodyDist X <= 10
trigger4 = moveguarded
value = 1215
ctrl = 1

; Blocked
[StateDef 3335]
type = A
physics = N
moveType = I
velSet = 0,0
anim = 3005
ctrl = 0
sprPriority = 1

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id =  6100

[State 105, Back Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 105,0

[State 105, Dust Helper]
type = Helper
trigger1 = AnimElem = 6
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
trigger1 = AnimElem = 6
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)

[State 105, VelMul]
type = VelMul
trigger1 = AnimElemTime(6) > 0
x = 1.15

[State 105, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(6) > 0
y = 0.85

[State 105, End]
type = ChangeState
trigger1 = AnimElemTime(6) >= 0
trigger1 = pos y > -vel y
value = 106

;miss
[Statedef 3301]
type = S
movetype = I
physics = S
velset = 0,0
ctrl = 0
anim = 3001

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id =  6100

[State 450, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,2

[State 1201, ChangeState]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;crash wall
[Statedef 3304]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 3002

[State 1400, Dust]
type = helper
trigger1 = animelem = 1
helpertype = normal
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 730,ifElse(var(40) = 1, 11, 1)
channel = 0

[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = 40,0

[State 1000, 0]
type = TargetFacing
trigger1 = time = 0
value = -1

[State 901, Throw]
type = TargetState
trigger1 = time = 0
value = 3307

[State 901,1]
type = TargetBind
trigger1 = AnimElem = 1
pos = -25, -63
postype = P1
time = -1
id = 3000

[State 1205, ChangeState]
type = ChangeState
trigger1 = FrontEdgeBodyDist <= 10
value = 3306

[State 1510,1]
type = ChangeState
trigger1 = Pos Y >= 0 && Time > 5
value = 3305

;dash
[Statedef 3305]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 3003
sprpriority = 0

[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1200,1
channel = 4

[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 1
value = 52,0
channel = 5

[State 0, Explod]
type = Explod
trigger1 = time =0
anim = 3092
ID = 3092
pos = -14,-72
postype = p1
bindtime = -1
removetime = -1
scale = .5,.5
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = time =0
anim = 8104
ID = 8104
pos = -15,-5
postype = p1
bindtime = -1
removetime = -2
scale = 1,1
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 1100, Velocity]
type = VelSet
trigger1 = Time = 0
x = 16

[State 901,1]
type = TargetBind
trigger1 = time%10=0
pos = -25, -63
postype = P1
time = -1
id = 3000

[State 901,1]
type = TargetBind
trigger1 = time%10=5
pos = -22, -63
postype = P1
time = -1
id = 3000

[State 1205, ChangeState]
type = ChangeState
trigger1 = FrontEdgeBodyDist <= 10
trigger2 = Time = 150
value = 3306

;---------------------------------------------------------
;crash after dash
[Statedef 3306]
type = S
movetype = A
physics = S
juggle = ifelse(target,gethitvar(fall),0,0)
velset = 0,0
ctrl = 0
anim = 3004

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id =  6100

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id =  3092

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id =  8104

[State 1206, Effect]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1200,2

[State 1206, Effect]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2,2

[State 1206, Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1200,3

[State 1100, Effect]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3000,1

[State 0, Helper]
type = Helper
trigger1 = animelem = 2
helpertype = normal
name = "calaca"
ID = 3090
stateno = 3090
pos = 30,5
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
supermove
pausemovetime = 99999

[State 220, Position]
type = PosSet
trigger1 = time = 0
y = 0

[State 1206, width]
type = width
trigger1 = animelem = 1
edge = 40,0

[State 1206, width]
type = width
trigger1 = animelem = 2
edge = 75,0

[State 1206, width]
type = width
trigger1 = animelem = 3
edge = 90,0

[State 901,1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 45, -65
Time = -1
postype = P1
id = 3000

[State 901,1]
type = TargetBind
trigger1 = AnimElem = 2
pos = 95, -65
Time = -1
postype = P1
ignorehitpause=1
id = 3000

[State 903, EnvShake]
type = EnvShake
trigger1 = AnimElem = 2
time = 25

[State 1200, 1]
type = HitDef
trigger1 = !var(16) && var(15) < 8
trigger1 = AnimElem = 3
attr = S, HA
hitflag = MAF
guardflag = M
damage = Ifelse(enemy,gethitvar(hitcount) > 4,270,350)
getpower = 0, 0
givepower = 24,24
snap = 95,0
priority = 7,Hit
pauseTime = ifElse(var(20), 6, 8), ifElse(var(20), 6, 8)
guard.pauseTime = ifElse(var(20), 6, 8), ifElse(var(20), 6, 8)
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 57), var(36) := -66
guard.dist = 0
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4, -8
ground.cornerPush.velOff = 0
guard.velocity = -2.52
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 1
fall.recover = 0
chainID = 3000 

[State 1205, ChangeState]
type = ChangeState
Trigger1 = AnimTime = 0
value = 1209
ctrl = 1

;---------------------------------------------------------
;p2grabbed, dashing
[Statedef 3307]
type = A
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 2

[State 1, Ex Flash]
type = palfx
trigger1 = !(gametime%3)
time = 2
color = 256
mul = 100, 0, 100
ignorehitpause = 1

[State 1201, screenbound]
type = screenbound
trigger1 = 1
value = 1

[State 1510,1]
type = changeanim2
trigger1 = time = 0
value = 1207