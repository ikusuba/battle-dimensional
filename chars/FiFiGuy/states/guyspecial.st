; ______________________________
;| Guy by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;============================================================================================
;=====================================<SPECIAL STATES>=======================================
;============================================================================================

;=========<HOUZANTOU>==========
[Statedef 1000]
type = S
movetype = A
physics = S
anim = 1000
ctrl = 0
velset = 0, 0
poweradd = 100 * !var(20)
sprpriority = -1
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State 1000, Strength]
type = varset
trigger1 = !AIlevel
trigger1 = time <= 0
var(10) = ifelse(map(str_z), 3, ifelse(map(str_y), 2, 1))
ignorehitpause = 1
persistent = 0

[State 1000, Strength AI]
type = varset
trigger1 = AIlevel
trigger1 = time <= 0
var(10) = ifelse((random < 333 || p2movetype = H), 1, ifelse(random < 500, 2, 3))
ignorehitpause = 1

[State 1000, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1000, Anim]
type = changeanim
trigger1 = !time
value = ifelse(var(10) = 3, 1002, ifelse(var(10) = 2, 1001, 1000))

[State 1000, Width]
type = width
trigger1 = animelemtime(9) >= 0 && animelemtime(11) < 0
value = ceil(40 * const(size.xscale)), 0

[State 1000, spr]
type = sprpriority
trigger1 = animelemtime(8) >= 0
value = 1

[State 1000, Vel]
type = velset
trigger1 = animelem = 4 || animelem = 8
x = ifelse(anim = 1002, 12, ifelse(anim = 1001, 10, 8))

[State 1000, Snd]
type = playsnd
trigger1 = animelem = 9
value = 3, 3
channel = 0

[State 1000, Snd]
type = playsnd
trigger1 = animelem = 9
value = 1, 3
channel = 1

[State 1000, Snd]
type = playsnd
trigger1 = animelem = 8
value = 5, 0
[State 1000, Dust]
type = explod
trigger1 = animelem = 9
anim = 7103
ID = 7103
sprpriority = 3
postype = p1
pos = ceil(45 * const(size.xscale)), 0
vel = 4, 0
ownpal = 1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1

[State 1000, Hit]
type = hitdef
trigger1 = animelem = 9
trigger1 = var(15) < 1 || var(20)
attr = S, SA
damage = ifelse(var(10) = 3, 140, ifelse(var(10) = 2, 100, 80)), ifelse(var(10) = 3, 35, ifelse(var(10) = 2, 25, 20))
dizzypoints = -ceil(ifelse(var(10) = 3, 200, ifelse(var(10) = 2, 150, 100)) * fvar(10)) * !var(20)
animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 55) * (var(36) := 105), var(37) := -60
hitsound = -1 + 0 * (var(31) := 3)
guardsound = -1
ground.type = High
ground.hittime = 18
ground.slidetime = 18
ground.velocity = ifelse(var(10) = 3, -7.3, ifelse(var(10) = 2, -6.1, -4.8)), -4.2
air.type = High
air.velocity = ifelse(var(10) = 3, -7.3, ifelse(var(10) = 2, -6.1, -4.8)), -4.2
ground.cornerpush.veloff = 0
guard.velocity = -10.52
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.4850
forcestand = 1

[State 1000, Anim]
type = changeanim
trigger1 = anim = [1000, 1002]
trigger1 = (movecontact = 1 || movereversed = 1) && hitpausetime
trigger1 = animelemtime(9) >= 0 && animelemtime(10) < 0
trigger1 = hitpausetime <= 10
value = anim
elem = 10
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = anim = 1000 && animelemtime(12) >= 0
trigger2 = anim != 1000 && animelemtime(11) >= 0
movetype = I

[State 1000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=========<EX HOUZANTOU>==========
[Statedef 1010]
type = S
movetype = A
physics = S
anim = 1010
ctrl = 0
velset = 0, 0
poweradd = -500
sprpriority = -1
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State 1010, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 1010, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1010, ExFX]
type = explod
trigger1 = !time
anim = 7210
sprpriority = 3
postype = p1
pos = ceil(20 * const(size.xscale)), ceil(-38 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1010, Width]
type = width
trigger1 = animelemtime(9) >= 0 && animelemtime(11) < 0
value = ceil(40 * const(size.xscale)), 0
[State 1010, spr]
type = sprpriority
trigger1 = animelemtime(8) >= 0
value = 1

[State 1010, Vel]
type = velset
trigger1 = animelem = 4 || animelem = 8
x = 12

[State 1010, Snd]
type = playsnd
trigger1 = animelem = 9
value = 3, 3
channel = 0
[State 1010, Snd]
type = playsnd
trigger1 = animelem = 9
value = 1, 3
channel = 1

[State 1010, Snd]
type = playsnd
trigger1 = animelem = 8
value = 5, 0
[State 1010, Dust]
type = explod
trigger1 = animelem = 9
anim = 7103
ID = 7103
sprpriority = 3
postype = p1
pos = ceil(45 * const(size.xscale)), 0
vel = 4, 0
removetime = -2
ownpal = 1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1

[State 1010, Hit]
type = hitdef
trigger1 = animelem = 9
trigger1 = var(15) < 1
ID = 1010
attr = S, SA
damage = 80, 20
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 55) * (var(36) := 105), var(37) := -60
hitsound = -1 + 0 * (var(31) := 3)
guardsound = -1
ground.type = High
ground.hittime = 18
ground.slidetime = 18
ground.velocity = -12, -4.25
air.type = High
air.velocity = -12, -4.25
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = 0
givepower = 40, 40
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
fall = 1
fall.recover = 1
fall.recovertime = 120
ID = 1010
forcestand = 1
yaccel = 0.4850

[State 1010, Anim]
type = changeanim
trigger1 = anim = 1010
trigger1 = movecontact = 1 && hitpausetime
trigger1 = animelemtime(9) >= 0 && animelemtime(10) <= 0
trigger1 = hitpausetime <= 10
value = 1010
elem = 10
ignorehitpause = 1

[State 1010, Wall Bounce]
type = targetstate
trigger1 = !map(wallbounce)
trigger1 = movehit && numtarget(1010)
trigger1 = target(1010), dizzypoints > 0
trigger1 = (target(1010), stateno = 5000) || (target(1010), stateno = 5010) || (target(1010), stateno = 5020)
value = 1111010
ID = 1010
ignorehitpause = 1

[State 1010, Wall Bounce Limit]
type = mapset
map = "wallbounce"
trigger1 = numtarget(1010)
trigger1 = target(1010), stateno = 1111010
value = 0
ignorehitpause = 1

[State 1010, Juggle Reset]
type = varset
trigger1 = movehit = 1
trigger1 = numtarget(1010)
trigger1 = target(1010), stateno = 1111010
var(15) = 0
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(11) >= 0
movetype = I

[State 1010, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;========================<HIT by EX HOUZANTOU>=============================
;--- Hit Pause ---
[Statedef 1111010]
type = A
movetype = H
physics = N
velset = 0, 0

[State 1111010, Anim]
type = changeanim
trigger1 = 1
value = 5002

[State 1111010, End]
type = changestate
trigger1 = hitshakeover
value = 1111011


;--- Falling ---
[Statedef 1111011]
type = A
movetype = H
physics = N

[State 1111011, Accel]
type = veladd
trigger1 = 1
y = gethitvar(yaccel) * 0.67

[State 1111011, Vel]
type = hitvelset
trigger1 = !time
x = 1
y = 1

[State 1111011, screen]
type = screenbound
trigger1 = 1
value = 1
movecamera = (vel y < 0), 0

[State 1111011, Push]
type = playerpush
trigger1 = 1
value = 0

[State 1111011, Anim]
type = changeanim
trigger1 = !time
value = 5030

[State 1111011, Bounce]
type = changestate
trigger1 = time >= 4
trigger1 = backedgebodydist <= 0 || frontedgebodydist <= 0
value = 1111012

[State 1111011, End]
type = selfstate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 5100


;--- Hitting Wall ---
[Statedef 1111012]
type = A
movetype = H
physics = N

[State 1111012, turn]
type = turn
trigger1 = !time
trigger1 = frontedgedist < backedgedist

[State 1111012, Pos]
type = posadd
trigger1 = 1
x = -backedgebodydist
[State 1111012, Pos]
type = posfreeze
trigger1 = 1
x = 1
y = 1

[State 1111012, screen]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0
[State 1111012, Push]
type = playerpush
trigger1 = 1
value = 0

[State 1111012, Anim]
type = changeanim
trigger1 = 1
value = 5000

[State 1111012, Snd]
type = playsnd
trigger1 = !time
value = F7, 2

[State 1111012, FX]
type = explod
trigger1 = !time
anim = F72
postype = p1
pos = -15, const(size.mid.pos.y)
sprpriority = -5
ownpal = 1

[State 1111012, End]
type = changestate
trigger1 = time >= 4
value = 1111013


;--- Falling ---
[Statedef 1111013]
type = A
movetype = H
physics = N

[State 1111013, turn]
type = turn
trigger1 = !time

[State 1111013, Accel]
type = veladd
trigger1 = 1
y = 0.4850;yaccel

[State 1111013, Vel]
type = velset
trigger1 = !time
x = ((enemynear, pos x - pos x) * facing + 50) / 36.0
y = (pos y + 0.5 * 0.4850 * 36 ** 2) / -36.0

[State 1111013, Vel]
type = velset
trigger1 = !time
trigger1 = vel x != [-9, 0]
x = ifelse(vel x < -9, -9, 0)

[State 1111013, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5051), 5051, 5030)
[State 1111013, Anim]
type = changeanim
trigger1 = anim = 5030 && !animtime
value = 5050
[State 1111013, Anim]
type = changeanim
trigger1 = vel y > -3 && anim = 5051
value = 5061

[State 1111013, screen]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0

[State 1111013, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 1111013, End]
type = selfstate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 5100


;======================<HAYAGAKE>=============================
;--- < RUNNING > ---
[Statedef 1100]
type = S
physics = S
movetype = A
anim = 1100
ctrl = 0
velset = 0, 0
poweradd = 100 * !var(20)
sprpriority = 2
facep2 = 1

[State 1100, Strength]
type = varset
trigger1 = !AIlevel
trigger1 = time <= 0
var(10) = ifelse(map(str_c), 3, ifelse(map(str_b), 2, 1))
ignorehitpause = 1
persistent = 0

[State 1100, Strength AI]
type = varset
trigger1 = AIlevel
trigger1 = time <= 0
var(10) = ifelse(random < 333, 3, ifelse(random < 500, 2, 1))
ignorehitpause = 1
persistent = 0

[State 1100, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1100, Fadeout]
type = explod
trigger1 = !time
anim = 1199
ID = 1199
sprpriority = 0
postype = p1
pos = ceil(-vel x)
scale = const(size.xscale), const(size.yscale)

[State 1100, Vel]
type = velset
trigger1 = anim = 1100
x = 8.87

[State 1100, Snd]
type = playsnd
trigger1 = !time
value = 3, 3
channel = 0

[State 1100, steps]
type = playsnd
trigger1 = animelem = 2 || animelem = 5
value = 0, ifelse((animelem = 2), 103, 106)

[State 1100, Dust]
type = explod
trigger1 = animelem = 2 || animelem = 5
anim = 7101
ID = 7101
sprpriority = 3
postype = p1
pos = ceil(-55 * const(size.xscale)), 0
scale = 0.5, 0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 1100, Stop Light]
type = changestate
trigger1 = var(10) = 1
trigger1 = map(p2bodydistx) <= 32
value = 1102

[State 1100, Kick]
type = changestate
trigger1 = var(10) > 1
trigger1 = !AIlevel && time >= 2
trigger1 = command = "a" || command = "b" || command = "c"
value = ifelse(command = "c", 1115, ifelse(command = "b", 1120, 1110))

[State 1100, Kick]
type = changestate
trigger1 = var(10) > 1
trigger1 = AIlevel && time >= 2
trigger1 = map(p2bodydistx) < 80 && random < (125 * (AIlevel ** 2 / 64.0))
value = ifelse((random < 250 || p2statetype = L), 1110, ifelse((random < 666 || p2statetype = A), 1120, 1110))

[State 1100, Stop]
type = changestate
trigger1 = time >= ifelse(var(10) = 3, 32, ifelse(var(10) = 2, 20, 8))
value = 1102


;--- STOP ---
[Statedef 1102]
type = S
physics = S
movetype = I
anim = 1102
ctrl = 0
sprpriority = 2

[State 1102, Snd]
type = playsnd
trigger1 = !time
value = 5, 0

[State 1102, Dust]
type = explod
trigger1 = !time
anim = 7103
ID = 7103
sprpriority = 3
postype = p1
pos = ceil(70 * const(size.xscale)), 0
vel = 2, 0
ownpal = 1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1

[State 1102, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=========<KAGE SUKUI>==========
[Statedef 1110]
type = S
movetype = A
physics = N
anim = 1110
ctrl = 0
sprpriority = 2
juggle = 7 * !var(20)

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State 1110, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1110, Snd]
type = playsnd
trigger1 = animelem = 3
value = 3, 6
channel = 0

[State 1110, Snd]
type = playsnd
trigger1 = animelem = 5
value = 1, 6
channel = 1

[State 1110, Hit]
type = hitdef
trigger1 = animelem = 6
trigger1 = var(15) < 1 || var(20)
attr = C, SA
damage = 110, 27
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
animtype = Hard
guardflag = L
hitflag = MAFD
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 100), var(37) := -7
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = Trip
ground.hittime = 18
ground.slidetime = 18
ground.velocity = -6, -3.7
air.type = Trip
air.velocity = -6, -3.7
down.hittime = 20
down.velocity = 0, 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
getpower = ifelse(movehit, 50, 100) * !var(20) * (prevstateno != 1150), ifelse(moveguarded, 25, 50) * !var(20) * prevstateno != 1150
givepower = 40, 40
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.4850
forcestand = 1
ID = 1110

[State 1110, OTG - Stay Down]
redirectID = target(1110), ID
type = selfstate
trigger1 = movehit = 1
trigger1 = numtarget(1110)
trigger1 = target(1110), pos y >= -24
trigger1 = target(1110), stateno = 5020 || target(1110), stateno = 5070
trigger1 = target(1110), prevstateno = [5100, 5101]
trigger1 = target(1110), alive && target, hitfall
value = 5080
ignorehitpause = 1

[State 1110, OTG - Stay Down]
redirectID = target(1110), ID
type = posset
trigger1 = numtarget(1110)
trigger1 = target(1110), pos y
trigger1 = target(1110), stateno = 5080
y = 0
ignorehitpause = 1

[State 1110, Type]
type = statetypeset
trigger1 = animelem = 5
statetype = C

[State 1110, Type]
type = statetypeset
trigger1 = animelem = 7
physics = C

[State Idle]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I

[State 1110, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=========<KUBIKARI>==========
[Statedef 1115]
type = S
movetype = A
physics = S
anim = 1115
ctrl = 0
sprpriority = 2
velset = 0, 0
poweradd = 0
facep2 = (prevstateno = 1150)

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State 1115, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1115, Snd]
type = playsnd
trigger1 = animelem = 3
value = 3, 7
channel = 0
[State 1115, Snd]
type = playsnd
trigger1 = animelem = 5
value = 1, 6
channel = 1

[State 1115, Force Push]
type = posadd
trigger1 = p2statetype = C
trigger1 = p2dist y >= -60 && (map(p2bodydistx) = [-20, 0])
x = -vel x

[State 1115, trail]
type = explod
trigger1 = animelem = 6
anim = 1116
sprpriority = 3
postype = p1
scale = const(size.xscale), const(size.yscale)
removeongethit = 1
ignorehitpause = 1
persistent = 0

[State 1115, Hit]
type = hitdef
trigger1 = animelem = 5
trigger1 = var(15) < 1 || var(20)
attr = A, SA
damage = 60, 15
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
animtype = Hard
guardflag = HA
hitflag = HAF
priority = 4, Hit
pausetime = 4, 4
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 0) * (var(36) := 15), var(37) := -55
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = High
ground.hittime = 18
ground.slidetime = 18
ground.velocity = -12, 0
air.type = Low
air.velocity = -6, -3.7
getpower = ifelse(movehit, 50, 100) * !var(20) * (prevstateno != 1150), ifelse(moveguarded, 25, 50) * !var(20) * (prevstateno != 1150)
givepower = 40, 40
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0

[State 1115, Hit]
type = hitdef
trigger1 = animelem = 6
trigger1 = (var(15) < 2 || var(20))
attr = A, SA
damage = 80, 20
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
animtype = Hard
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 20) * (var(36) := 85), var(37) := -45
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = High
ground.hittime = 18
ground.slidetime = 18
ground.velocity = -12, 0
air.type = Low
air.velocity = -6, -3.7
getpower = ifelse(movehit, 50, 100) * !var(20) * (prevstateno != 1150), ifelse(moveguarded, 25, 50) * !var(20) * prevstateno != 1150
givepower = 40, 40
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0

[State 1115, Type]
type = statetypeset
trigger1 = animelem = 3
statetype = A
physics = N

[State 1115, Accel]
type = veladd
trigger1 = animelemtime(3) >= 0
y = 1.0

[State 1115, Vel]
type = velset
trigger1 = animelem = 3
x = 6.50
y = -9.20

[State 1115, End]
type = changestate
trigger1 = animelemtime(3) >= 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1117


;---Land---
[Statedef 1117]
type = S
physics = S
movetype = I
anim = 1117
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1
hitcountpersist = 1

[State 1117, Pos]
type = posset
trigger1 = 1
y = 0

[State 1117, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 1117, Dust]
type = explod
trigger1 = !time
anim = 7102
ID = 7100
sprpriority = -5
postype = p1
scale = 0.5, 0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 1117, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=========<SEICHUUKARI>==========
[Statedef 1120]
type = S
movetype = A
physics = S
anim = 1120
ctrl = 0
sprpriority = 2
velset = 0, 0
facep2 = (prevstateno = 1150)

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State 1120, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1120, Snd]
type = playsnd
trigger1 = animelem = 3
value = 3, 8
channel = 0

[State 1120, Snd]
type = playsnd
trigger1 = animelem = 5
value = 1, 6
channel = 1

[State 1120, trail]
type = explod
trigger1 = animelem = 5
anim = 1121
sprpriority = 3
postype = p1
scale = const(size.xscale), const(size.yscale)
removeongethit = 1
ignorehitpause = 1
persistent = 0

[State 1120, Hit]
type = hitdef
trigger1 = animelem = 5
trigger1 = var(15) < 1 || var(20)
ID = 1120
attr = A, SA
damage = 90, 23
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
animtype = Back
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 88), var(37) := -82
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = High
ground.hittime = 18
ground.slidetime = 18
ground.velocity = -3, -8.7
air.type = Low
air.velocity = -3, -8.7
getpower = ifelse(movehit, 50, 100) * !var(20) * (prevstateno != 1150), ifelse(moveguarded, 25, 50) * !var(20) * prevstateno != 1150
ground.cornerpush.veloff = 0
guard.velocity = -10.52
givepower = 40, 40
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0

[State Accel]
type = veladd
trigger1 = animelemtime(3) >= 0
y = 0.50

[State 1120, Vel]
type = velset
trigger1 = animelem = 3
x = 8
y = -4.5

[State STS]
type = statetypeset
trigger1 = animelemtime(3) >= 0
statetype = A
physics = N

[State Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I

[State Land]
type = changestate
trigger1 = animelemtime(3) >= 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1122


;---Land---
[Statedef 1122]
type = S
physics = S
movetype = I
anim = 1122
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1
hitcountpersist = 1

[State 1122, Pos]
type = posset
trigger1 = 1
y = 0

[State 1122, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 1122, Dust]
type = explod
trigger1 = !time
anim = 7102
ID = 7100
sprpriority = -5
postype = p1
scale = 0.5, 0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 1122, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================<EX HAYAGAKE>=============================
;--- < RUNNING > ---
[Statedef 1150]
type = S
physics = N
movetype = A
anim = 1150
ctrl = 0
velset = 0, 0
poweradd = -500
sprpriority = 2
facep2 = 1

[State 1150, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 1150, ExFX]
type = explod
trigger1 = !time
anim = 7210
sprpriority = 3
postype = p1
pos = ceil(8 * const(size.xscale)), ceil(-12 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1150, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1150, Fadeout]
type = explod
trigger1 = animelem = 3
anim = 1199
ID = 1199
sprpriority = 0
postype = p1
pos = ceil(-vel x)
scale = const(size.xscale), const(size.yscale)

[State 1150, Vel]
type = velset
trigger1 = animelem = 3
x = 10
[State 1150, Vel]
type = velset
trigger1 = animelem = 10
x = 0

[State 1150, Push]
type = playerpush
trigger1 = animelemtime(3) >= 0 && animelemtime(16) < 0
value = 0

[State 1150, HB]
type = hitby
trigger1 = animelemtime(3) >= 0 && animelemtime(16) < 0
value2 = SCA, AA, AT
time = 1

[State 1150, Trans]
type = trans
trigger1 = animelemtime(4) >= 0 && animelemtime(16) < 0
trans = addalpha
alpha = 192, 256

[State 1150, Snd]
type = playsnd
trigger1 = animelem = 3
value = 3, 2
channel = 0

[State 1150, Snd]
type = playsnd
trigger1 = animelem = 3
value = 5, 5

[State 1150, Snd]
type = playsnd
trigger1 = animelem = 10
value = 0, 101

[State 1150, Dust]
type = explod
trigger1 = animelem = 10
anim = 7103
ID = 7103
sprpriority = 3
postype = p1
pos = ceil(40 * const(size.xscale)), 0
vel = 1, 0
ownpal = 1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1

[State 1150, kick]
type = changestate
trigger1 = !AIlevel && animelemtime(3) > 0 && animelemtime(10) < 0
trigger1 = command = "a" || command = "b" || command = "c"
value = ifelse(command = "c", 1115, ifelse(command = "b", 1120, 1110))
[State 1150, kick]
type = changestate
trigger1 = AIlevel && animelemtime(3) > 0 && animelemtime(10) < 0
trigger1 = map(p2bodydistx) < 80 && random < 500
value = ifelse((random < 250 || p2statetype = L), 1110, ifelse((random < 666 || p2statetype = A), 1120, 1110))


[State 1150, Idle]
type = statetypeset
trigger1 = animelem = 16
movetype = I

[State 1150, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================<BUSHIN SENPUU KYAKU>=============================
[Statedef 1200]
type = S
physics = S
movetype = A
anim = 1200
ctrl = 0
velset = 0, 0
poweradd = 100 * !var(20)
facep2 = 1
sprpriority = 2

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State 1200, Strength]
type = varset
trigger1 = !AIlevel
trigger1 = time <= 0
var(10) = ifelse(map(str_c), 3, ifelse(map(str_b), 2, 1))
ignorehitpause = 1
persistent = 0

[State 1200, Strength AI]
type = varset
trigger1 = AIlevel
trigger1 = time <= 0
var(10) = ifelse((p2movetype = H || random < 500), 3, ifelse(random < 500, 2, 1))
ignorehitpause = 1

[State 1200, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1200, Anim]
type = changeanim
trigger1 = anim = 1200 && !animtime
value = 1201

[State 1200, NHB]
type = nothitby
trigger1 = anim = 1200
time = 1
value = SCA
ignorehitpause = 1

[State 1100, NHB]
type = nothitby
triggerall = var(10) = 3
trigger1 = anim = 1200
trigger2 = anim = 1201 && animelemtime(2) < 1
value = SCA
time = 1
ignorehitpause = 1

[State 1100, NHB]
type = nothitby
triggerall = var(10) = 2
trigger1 = anim = 1200
trigger2 = anim = 1201 && animelemtime(2) < 1
value = SC
time = 1
ignorehitpause = 1

[State 1100, NHB]
type = nothitby
triggerall = var(10) = 1
trigger1 = anim = 1200
trigger2 = anim = 1201 && animelemtime(2) < 1
value = C
time = 1
ignorehitpause = 1

[State 1200, Snd]
type = playsnd
trigger1 = anim = 1201 && animelem = 1
value = 3, 7
channel = 0

[State 1200, Snd]
type = playsnd
trigger1 = anim = 1201 && animelem = 1
value = 0, 40
persistent = 0
[State 1200, Dust]
type = helper
trigger1 = anim = 1201 && animelem = 1
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1
persistent = 0

[State STS]
type = statetypeset
trigger1 = anim = 1201
statetype = A
physics = N

[State 1200, Accel]
type = veladd
trigger1 = anim = 1201 && animelemtime(1) >= 1
y = 0.40

[State 1200, Accel]
type = velmul
trigger1 = vel x
x = 0.94

[State 1200, Vel]
type = velset
trigger1 = anim = 1201 && animelemtime(1) = 1
x = ifelse(var(10) = 3, 7.0, ifelse(var(10) = 2, 6.0, 5.0))
y = ifelse(var(10) = 3, -7.84, ifelse(var(10) = 2, -6.90, -5.84))

[State 1200, Vel]
type = velset
trigger1 = vel y > 0
x = 0

[State 1200, Snd]
type = playsnd
trigger1 = anim = 1201
trigger1 = animelem = 2 || animelem = 6 || animelem = 10 || animelem = 14
value = 1, 4
channel = 1

[State 1200, Anim]
type = changeanim
trigger1 = anim = 1201 && var(10) < 3 && animelemtime(11) >= 0 && animelemtime(15) < 0
value = 1201
elem = 15
persistent = 0

[State 1200, Hit]
type = hitdef
trigger1 = anim = 1201 && (animelem = 2 || animelem = 6 || animelem = 10 || animelem = 14)
trigger1 = var(15) < ifelse(var(10) = 3, 4, ifelse(var(10) = 2, 3, 2)) || var(20)
attr = A, SA
damage = ifelse(var(10) = 3, 35, ifelse(var(10) = 2, 40, 50)), ifelse(var(10) = 3, 9, ifelse(var(10) = 2, 10, 13))
dizzypoints = -ceil(ifelse(var(10) = 3, 50, ifelse(var(10) = 2, 67, 100)) * fvar(10)) * !var(20)
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 20) * (var(36) := 72), var(37) := -66
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -4.0, -5.7
air.type = Low
air.velocity = -4.0, -5.7
ground.cornerpush.veloff = 0
guard.velocity = -10.52
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
forcestand = 1
airguard.cornerpush.veloff = 0

[State Idle]
type = statetypeset
trigger1 = anim = 1201 && animelemtime(15) >= 0
movetype = I

[State Land]
type = changestate
trigger1 = anim = 1201 && vel y > 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1209


;---Land---
[Statedef 1209]
type = S
physics = S
movetype = I
anim = 48
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1
hitcountpersist = 1

[State 1209, Pos]
type = posset
trigger1 = 1
y = 0

[State 1209, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 1209, Dust]
type = explod
trigger1 = !time
anim = 7102
ID = 7100
sprpriority = -5
postype = p1
scale = 0.5, 0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 1209, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================<EX BUSHIN SENPUU KYAKU>=============================
[Statedef 1210]
type = S
physics = S
movetype = A
anim = 1200
ctrl = 0
velset = 0, 0
poweradd = -500
facep2 = 1
sprpriority = 2

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State 1210, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 1210, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1210, ExFX]
type = explod
trigger1 = !time
anim = 7210
sprpriority = 3
postype = p1
pos = ceil(0 * const(size.xscale)), ceil(-54 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1210, Anim]
type = changeanim
trigger1 = anim = 1200 && !animtime
value = 1210

[State 1210, NHB]
type = nothitby
trigger1 = anim = 1200
trigger2 = anim = 1210 && animelemtime(3) < 0
time = 1
value = SCA
ignorehitpause = 1

[State 1210, Snd]
type = playsnd
trigger1 = anim = 1210 && animelem = 1
value = 3, 7
channel = 0

[State 1210, Snd]
type = playsnd
trigger1 = anim = 1210 && animelem = 1
value = 0, 40
persistent = 0

[State 1210, Dust]
type = helper
trigger1 = anim = 1210 && animelem = 1
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1
persistent = 0

[State 1210, Type]
type = statetypeset
trigger1 = anim = 1210
statetype = A
physics = N

[State 1210, Accel]
type = veladd
trigger1 = anim = 1210 && animelemtime(1) >= 1
y = 0.40

[State 1210, Accel]
type = velmul
trigger1 = vel x
x = 0.94

[State 1210, Vel]
type = velset
trigger1 = anim = 1210 && animelemtime(1) = 1
x = 8.0
y = -9.0

[State 1210, Vel]
type = velset
trigger1 = vel y > 0
x = 0

[State 1210, Snd]
type = playsnd
trigger1 = anim = 1210
trigger1 = animelem = 2 || animelem = 6 || animelem = 10 || animelem = 14 || animelem = 18
value = 1, 4
channel = 1

[State 1210, Hit]
type = hitdef
trigger1 = anim = 1210 && (animelem = 2 || animelem = 6 || animelem = 10 || animelem = 14 || animelem = 18)
trigger1 = var(15) < 5
attr = A, SA
damage = 30, 8
dizzypoints = -ceil(40 * fvar(10)) * !var(20)
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 6, 6
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 20) * (var(36) := 72), var(37) := -66
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = High
ground.hittime = 18
ground.slidetime = 18
ground.velocity = -4.0, -7.7
air.type = Low
air.velocity = -4.0, -5.2
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = 0
givepower = 40, 40
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.4850
airguard.ctrltime = 16
airguard.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
forcestand = 1

[State 1210, Hit B]
type = hitdef
trigger1 = anim = 1210 && (animelem = 4 || animelem = 8 || animelem = 12 || animelem = 16)
trigger1 = var(15) < 5
attr = A, SA
damage = 30, 8
dizzypoints = -ceil(40 * fvar(10)) * !var(20)
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 6, 6
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := -76) * (var(36) := -20), var(37) := -94
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = High
ground.hittime = 18
ground.slidetime = 18
ground.velocity = 6.5, -5.2
air.type = Low
air.velocity = 6.5, -5.2
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = 0
givepower = 40, 40
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.4850
airguard.ctrltime = 16
airguard.cornerpush.veloff = 0
airguard.velocity = const(size.xscale) * ifelse(var(20), 4, 8), -1.5
forcestand = 1

[State Idle]
type = statetypeset
trigger1 = anim = 1210 && animelemtime(19) >= 0
movetype = I
[State Land]
type = changestate
trigger1 = anim = 1210 && animelemtime(19) >= 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1209


;======================<BUSHIN IZUNA OTOSHI>=============================
[Statedef 1300]
type = S
physics = S
movetype = A
anim = 40
ctrl = 0
velset = 0, 0
sprpriority = 2
facep2 = 1
poweradd = 100 * !var(20)

[State 1300, Strength]
type = varset
trigger1 = !AIlevel
trigger1 = time <= 0
var(10) = ifelse(map(str_z), 3, ifelse(map(str_y), 2, 1))
ignorehitpause = 1
persistent = 0

[State 1300, Strength AI]
type = varset
trigger1 = AIlevel
trigger1 = time <= 0
var(10) = ifelse(p2dist x > 240, 3, ifelse(p2dist x > 120, 2, 1))
ignorehitpause = 1

[State 1300, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1300, Snd]
type = playsnd
trigger1 = anim = 40 && !animtime
value = 0, 40
persistent = 0
[State 1300, Dust]
type = helper
trigger1 = anim = 40 && !animtime
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1
persistent = 0

[State 1300, Vel]
type = velset
trigger1 = anim = 40 && !animtime
x = ifelse(var(10) = 3, 9.31, ifelse(var(10) = 2, 6, 3))
y = ifelse(var(10) = 3, -9.3, ifelse(var(10) = 2, -9.9, -11.2))
[State 1300, Anim]
type = changeanim
trigger1 = anim = 40 && !animtime
value = 1300

[State 1300, Type]
type = statetypeset
trigger1 = anim = 1300
statetype = A
physics = N
[State Accel]
type = veladd
trigger1 = anim = 1300
y = 0.61

[State 1300, elbow]
type = changestate
triggerall = anim = 1300 && animelemtime(3) >= 0 && vel y >= -2 && pos y <= -24
trigger1 = !AIlevel && (command = "x" || command = "y" || command = "z" || command = "~x" || command = "~y" || command = "~z")
trigger2 = AIlevel && map(p2bodydistx) <= 20 && p2dist y >= -50
value = 1305

[State Land]
type = changestate
trigger1 = anim = 1300 && animelemtime(3) >= 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1301


;---Land---
[Statedef 1301]
type = S
physics = S
movetype = I
anim = 1301
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1
hitcountpersist = 1

[State 1301, Pos]
type = posset
trigger1 = 1
y = 0

[State 1301, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 1301, Dust]
type = explod
trigger1 = !time
anim = 7102
ID = 7100
sprpriority = -5
postype = p1
scale = 0.5, 0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 1301, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=========<IZUNA NO HIJI OTOSHI>==========
[Statedef 1305]
type = A
movetype = A
physics = N
anim = 1305
velset = 0, 0
sprpriority = 2
poweradd = 0
ctrl = 0

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State 1305, Snd]
type = playsnd
trigger1 = animelem = 3
value = 3, 5
channel = 0
[State 1305, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
channel = 1

[State 1305, Accel]
type = veladd
trigger1 = 1
y = 0.61

[State 1305, Grab]
type = hitdef
trigger1 = animelem = 1
trigger1 = var(15) < 1 || var(20)
trigger1 = !map(unthrowable) && numenemy
trigger1 = p2dist x >= ifelse((facing = enemynear, facing), -(enemynear, const(size.ground.front)), -(enemynear, const(size.ground.back)))
attr = A, ST
hitflag = MAF
priority = 1, Miss
sparkno = -1 + 0 * (var(33) := 0)
hitsound = -1 + 0 * (var(31) := 800)
sprpriority = 2
p1facing = 1
p2facing = 1
p1stateno = 1320
p2stateno = 1325
fall = 1
fall.recover = 0
numhits = 0

[State 1305, Hit]
type = hitdef
trigger1 = animelem = 3
trigger1 = (var(15) < 3 || var(20))
attr = A, SA
damage = 80, 20
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
animtype = Medium
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 10) * (var(36) := 25), var(37) := -53
hitsound = -1 + 0 * (var(31) := 3)
guardsound = -1
ground.type = High
ground.hittime = 18
ground.slidetime = 18
ground.velocity = -9.22
air.type = Low
air.velocity = -4, -3.7
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
air.fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.4850
forcestand = 1

[State Land]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1301


;======================<IZUNA OTOSHI>=============================
;--- PLAYER ---
[Statedef 1320]
type = A
physics = N
movetype = A
anim = 1320
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1320, Assert]
type = assertspecial
trigger1 = 1
flag = noautoturn

[State Throw]
type = targetstate
trigger1 = !time
value = 1325

[State 1320, Snd]
type = playsnd
trigger1 = !time
value = 3, 8
channel = 0

[State 1320, EX Version Flag]
type = varset
trigger1 = !time
var(0) = prevstateno = 1350

[State 1320, Vel]
type = velset
trigger1 = !time;!vel x && animelemtime(4) < 0
x = ((target, pos x -pos x) * facing + target, const(size.mid.pos.x) + 41) / 5.0
y = (target, pos y + target, const(size.mid.pos.y) - pos y + 12) / 5.0

[State 1320, Bind 1]
type = bindtotarget
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
pos = (-41 * const(size.xscale)) + (target, const(size.mid.pos.x)), 12 + (target, const(size.mid.pos.y))

[State 1320, Vel]
type = velset
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
x = 0
y = 0

[State 1320, Accel]
type = veladd
trigger1 = animelemtime(5) >= 0
y = 1

[State 1320, Vel]
type = velset
trigger1 = animelem = 5
x = 4
y = -10

[State 1320, Bind 5]
type = targetbind
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
pos = -35 * const(size.xscale), -13
[State 1320, Bind 6]
type = targetbind
trigger1 = animelemtime(6) >= 0 && animelemtime(7) < 0
pos = -49 * const(size.xscale), -31
[State 1320, Bind 7]
type = targetbind
trigger1 = animelemtime(7) >= 0 && animelemtime(8) < 0
pos = -54 * const(size.xscale), -66
[State 1320, Bind 8]
type = targetbind
trigger1 = animelemtime(8) >= 0 && animelemtime(9) < 0
pos = -44 * const(size.xscale), -94
[State 1320, Bind 9]
type = targetbind
trigger1 = animelemtime(9) >= 0
pos = -9 * const(size.xscale), -113

[State 1320, End]
type = changestate
trigger1 = animelemtime(5) > 0 && vel y > 0 && (pos y > -vel y)
value = 1321


;--- HIT FLOOR ---
[Statedef 1321]
type = C
physics = C
movetype = A
anim = 1321
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1321, Width]
type = width
trigger1 = 1
edge = ceil(100 * const(size.xscale))

[State 1321, Assert]
type = assertspecial
trigger1 = 1
flag = noautoturn

[State 1321, Throw]
type = targetstate
trigger1 = !time
value = 1326

[State 1321, Pos]
type = posadd
trigger1 = !time
x = -34 * const(size.xscale)

[State 1321, Pos]
type = posset
trigger1 = 1
y = 0

[State 1321, Dust]
type = explod
trigger1 = !time
anim = 7102
ID = 7102
sprpriority = -2
postype = p1
pos = ceil(16 * const(size.xscale)), 0
ownpal = 1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1

[State 1321, Snd]
type = playsnd
trigger1 = !time
value = 5, 1

[State 1321, Dust]
type = helper
trigger1 = time = 1
helpertype = normal
stateno = 8110
ID = 8110
name = "Impact Dust"
postype = p1
pos = ceil(88 * const(size.xscale)), 0
ownpal = 1

[State 1321, Shake]
type = envshake
trigger1 = !time
time = 18
freq = 180
ampl = 2

[State 1321, Bind 1]
type = targetbind
trigger1 = animelem = 1
pos = 88 * const(size.xscale), -4

[State 1321, Hit]
type = hitadd
trigger1 = animelem = 1
value = 1

[State 1321, Juggle]
type = varadd
trigger1 = animelem = 1
var(15) = 1

[State 1321, Damage]
type = targetlifeadd
trigger1 = animelem = 1
value = -ceil(120 * fvar(10))

;[State 1321, Stun Damage];currently redundant
;type = targetdizzypointsadd
;trigger1 = !time
;trigger1 = numtarget
;value = -ceil(150 * fvar(10)) * !var(20)

[State 1321, Damage]
type = targetpoweradd
trigger1 = animelem = 1
value = 40;givepower

[State 1321, Power]
type = poweradd
trigger1 = animelem = 1
trigger1 = !var(20)
trigger1 = !var(0);not EX version
value = 100;getpower

[State 1321, Snd]
type = playsnd
trigger1 = !time
value = 3, 6
channel = 0

[State 1321, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- TARGET ---
[Statedef 1325]
type = A
physics = N
movetype = H
velset = 0, 0
ctrl = 0
sprpriority = 0

[State 1325, Anim]
type = changeanim2
trigger1 = !time
value = 1325

[State 1325, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0

[State 1325, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


;--- TARGET HIT FLOOR ---
[Statedef 1326]
type = A
physics = N
movetype = H
velset = 0, 0
ctrl = 0
sprpriority = 0

[State 1326, Anim]
type = changeanim2
trigger1 = !time
value = 1326

[State 1326, Vel]
type = velset
trigger1 = animelem = 2
x = -4.17
y = -6.76

[State 1326, Vel]
type = velset
trigger1 = animelem = 2
trigger1 = gethitvar(chainID) = 1350
x = -2.5
y = -8.5

[State 1326, Accel]
type = veladd
trigger1 = animelemtime(2) > 0
y = 0.6

[State 1326, Stun]
type = selfstate
trigger1 = animelemtime(2) > 0
trigger1 = alive
trigger1 = dizzypoints <= 0
value = const(statedizzyfalldown_air)

[State Safe Fall]
type = selfstate
trigger1 = animelemtime(2) > 0
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 1326, End]
type = selfstate
trigger1 = animelemtime(2) > 0 && vel y > 0 && (pos y > -vel y)
value = 5100


;======================<EX BUSHIN IZUNA OTOSHI>=============================
[Statedef 1350]
type = S
physics = S
movetype = A
anim = 1350
ctrl = 0
velset = 0, 0
sprpriority = 2
facep2 = 1
poweradd = -500

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State 1350, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 1350, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1350, ExFX]
type = explod
trigger1 = !time
anim = 7210
sprpriority = 3
postype = p1
pos = ceil(4 * const(size.xscale)), ceil(-62 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1350, Snd]
type = playsnd
trigger1 = animelem = 4
value = 0, 40
persistent = 0

[State 1350, Dust]
type = helper
trigger1 = animelem = 4
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1
persistent = 0

[State 1350, Turn]
type = turn
trigger1 = animelem = 3
trigger1 = p2dist x < 0

[State Accel]
type = veladd
trigger1 = animelemtime(4) >= 0
y = 0.9

[State 1350, Vel]
type = velset
trigger1 = animelem = 4
x = 6
y = -12

[State 1350, Vel]
type = velset
trigger1 = animelem = 4
x = (p2dist x / 22.0)
y = -12

[State 1350, Vel]
type = velset
trigger1 = animelem = 4
trigger1 = numenemy
trigger1 = enemynear, movetype = H && enemynear, statetype = A
x = (p2dist x / 22.0) + ((enemynear, vel x) * (enemynear, facing) * facing)
y = -12

[State 1350, Vel]
type = velset
trigger1 = vel x > 14
x = 14

[State 1350, Vel]
type = velset
trigger1 = vel x < 0
x = 0

[State 1350, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
statetype = A
physics = N

[State 1350, Miss]
type = hitdef
trigger1 = animelemtime(7) >= 0
attr = A, ST
hitflag =

[State 1350, grab]
type = hitdef
trigger1 = animelemtime(7) >= 0
trigger1 = (var(15) < 2 || var(20))
trigger1 = !map(unthrowable) && numenemy
trigger1 = p2dist x >= ifelse((facing = enemynear, facing), -(enemynear, const(size.ground.front)), -(enemynear, const(size.ground.back)))
attr = A, ST
hitflag = MAF
priority = 1, Miss
sparkno = -1 + 0 * (var(33) := 0)
hitsound = -1 + 0 * (var(31) := 800)
sprpriority = 2
p1facing = 1
p2facing = 1
p1stateno = 1320
p2stateno = 1325
fall = 1
fall.recover = 0
numhits = 0
ID = 1350

[State Land]
type = changestate
trigger1 = animelemtime(4) >= 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1301


;=========<HASSOU KYAKU>==========
[Statedef 1400]
type = A
movetype = A
physics = N
anim = 1400
ctrl = 0
velset = 0, 0
sprpriority = 2
juggle = 7 * !var(20)

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State 1400, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1400, Turn]
type = turn
trigger1 = !time
trigger1 = frontedgedist < backedgedist

[State 1400, Pos]
type = posadd
trigger1 = animelemtime(2) < 0
trigger1 = backedgebodydist =[-80, 80]
x = backedgebodydist

[State 1400, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 1400, Dust]
type = explod
trigger1 = !time
anim = 7101
ID = 7101
sprpriority = 3
postype = p1
pos = ceil(-22 * const(size.xscale)), -33
ownpal = 1
scale = 0.66, 0.66
pausemovetime = -1
supermovetime = -1

[State 1400, Vel]
type = velset
trigger1 = animelemtime(2) >= 0
x = 9
y = 9

[State 1400, Snd]
type = playsnd
trigger1 = animelem = 3
value = 3, 8
channel = 0
[State 1400, Snd]
type = playsnd
trigger1 = animelem = 2
value = 0, 41
channel = 1

[State 1400, Hit]
type = hitdef
trigger1 = animelem = 3
trigger1 = (var(15) < 2 || var(20))
attr = A, SA
damage = 110, 28
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
animtype = Hard
guardflag = HA
hitflag = MAFD
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 20) * (var(36) := 60), var(37) := -14
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = High
ground.hittime = 18
ground.slidetime = 18
ground.velocity = -3, -4.7
air.type = Low
air.velocity = -3, -4.7
down.hittime = 20
down.velocity = 0, 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.4850
forcestand = 1

[State Land]
type = changestate
trigger1 = animelemtime(2) >= 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1401


;---Land---
[Statedef 1401]
type = S
physics = S
movetype = I
anim = 1117
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1
hitcountpersist = 1

[State 1401, Pos]
type = posset
trigger1 = 1
y = 0

[State 1401, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 1401, Dust]
type = explod
trigger1 = !time
anim = 7102
ID = 7100
sprpriority = -5
postype = p1
scale = 0.5, 0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 1401, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

