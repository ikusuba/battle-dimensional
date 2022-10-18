; ________________________________
;| Cammy by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SPECIAL MOVES>=======================================
;==============================================================================================

;========================<CANNON DRILL>=============================
[Statedef 1000]
type = S
physics = N
movetype = A
anim = 1000
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 100 * !var(20)
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1000, Strength]
type = varset
trigger1 = !AIlevel
trigger1 = time <= 0
var(10) = ifelse(map(str_c), 2, ifelse(map(str_b), 1, 0))
ignorehitpause = 1
persistent = 0

[State 1000, Strength AI]
type = varset
trigger1 = AIlevel
trigger1 = time <= 0
var(10) = ifelse((map(p2bodydistx) > 180 || p2movetype = H || var(20)), 2, ifelse(map(p2bodydistx) > 160, 1, 0))
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
value = ifelse(var(10) = 2, 1002, ifelse(var(10) = 1, 1001, 1000))

[State 1000, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 5
channel = 1

[State 1000, Snd]
type = playsnd
trigger1 = animelem = 4
value = 0, 41
[State 1000, Dust]
type = helper
trigger1 = animelem = 4
helpertype = normal
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 1000, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
statetype = A
physics = N

[State 1000, Pos]
type = posadd
trigger1 = animelem = 4
y = -16
persistent = 0

[State 1000, Accel]
type = veladd
trigger1 = animelemtime(4) >= 0
x = -0.11055625
y = 0.165834375
[State 1000, Vel]
type = velset
trigger1 = animelem = 4
x = ifelse(var(10) = 2, 9.47, ifelse(var(10) = 1, 8.37, 7.27))
y = 0

[State 1000, Snd]
type = playsnd
trigger1 = animelem = 3
value = 5, 1
channel = 0

[State 1000, Hit]
type = hitdef
trigger1 = animelem = 3 && var(10) != 2
trigger1 = var(15) < 1 || var(20)
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ifelse(var(10) = 1, 90, 83), ifelse(var(10) = 1, 23, 21)
dizzypoints = -ceil(150 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -4.32, -6.91
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.32, -6.91
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 56), var(37) := -38
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1000, Hit]
type = hitdef
trigger1 = animelem = 3 && var(10) = 2
trigger1 = var(15) < 1 || var(20)
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 20, 5
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.32, -6.91
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 56), var(37) := -38
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1000, Hit]
type = hitdef
trigger1 = animelem = 4
trigger1 = var(10) = 2 || (!movecontact && !movereversed)
trigger1 = var(15) < 1 || var(20)
attr = A, SA
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = ifelse(var(10) = 2, 90, ifelse(var(10) = 1, 83, 76)), ifelse(var(10) = 2, 23, ifelse(var(10) = 1, 21, 19))
dizzypoints = -ceil(150 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Back
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = -4.32, -6.91
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.32, -6.91
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 92), var(37) := -14
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1000, End]
type = changestate
trigger1 = animelemtime(4) >= 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1005


;--- Land ---
[Statedef 1005]
type = S
physics = N
movetype = I
ctrl = 0
sprpriority = 2
movehitpersist = 1

[State 1005, Pos]
type = posset
trigger1 = 1
y = 0

[State 1005, Anim]
type = changeanim
trigger1 = !time
value = ifelse(var(10) = 2, 1007, ifelse(var(10) = 1, 1006, 1005))

[State 1005, Accel]
type = veladd
trigger1 = vel x > 0
x = -0.33166875
[State 1005, Vel]
type = velset
trigger1 = vel x < 0
x = 0

[State 1005, Vel]
type = velset
trigger1 = !time
x = 3.95
y = 0

[State 1005, Snd]
type = playsnd
trigger1 = !time
value = 0, 101
[State 1005, Dust]
type = explod
trigger1 = !time
anim = 8104
sprpriority = 3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1005, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;========================<EX CANNON DRILL>=============================
[Statedef 1020]
type = S
physics = N
movetype = A
anim = 1020
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = -500
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1020, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1020, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 1020, ExFX]
type = varset
trigger1 = !time
var(25) = 30
[State 1020, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
[State 1020, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = ceil(24 * const(size.xscale)), ceil(-50 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1020, Dust]
type = helper
trigger1 = animelem = 4
helpertype = normal
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 1020, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
statetype = A
physics = N

[State 1020, Pos]
type = posadd
trigger1 = animelem = 4
y = -16
persistent = 0

[State 1020, Accel]
type = veladd
trigger1 = animelemtime(4) >= 0
x = -0.11055625
y = 0.125
[State 1020, Vel]
type = velset
trigger1 = animelem = 4
x = 13.85
y = 0

[State 1020, Snd]
type = playsnd
trigger1 = animelem = 3
value = 5, 1
channel = 0

[State 1020, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 5
channel = 1

[State 1020, Snd]
type = playsnd
trigger1 = animelem = 4
value = 7, 4
[State 1020, FX]
type = helper
trigger1 = animelem = 4 && !numhelper(1025)
helpertype = normal
stateno = 1025
ID = 1025
name = "EX Drill FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
ownpal = 1

[State 1020, Hit]
type = hitdef
trigger1 = var(15) < 1
trigger1 = animelem = 3
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 30, 8
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
getpower = 0, 0
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -6.48, -6.91
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 56), var(37) := -38
palfx.time = 60
palfx.mul = 128, 128, 128
palfx.sinadd = 96, 96, 96, 4
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1020, Hit]
type = hitdef
trigger1 = var(15) < 1
trigger1 = animelem = 4
attr = A, SA
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = 100, 25
dizzypoints = -ceil(150 * fvar(10)) * !var(20)
getpower = 0, 0
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Back
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = -6.48, -6.91
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -6.48, -6.91
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 92), var(37) := -14
palfx.time = 60
palfx.mul = 128, 128, 128
palfx.sinadd = 96, 96, 96, 4
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1020, Flame Particles]
type = helper
trigger1 = !numhelper(8150)
trigger1 = movehit = 1 && numtarget
trigger1 = !(target, hitshakeover)
trigger1 = var(40) := (target, ID)
helpertype = normal
stateno = 8150
ID = 8150
name = "Flame Particles"
postype = p2
ownpal = 1
ignorehitpause = 1

[State 1020, End]
type = changestate
trigger1 = animelemtime(4) >= 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1021


;--- Land ---
[Statedef 1021]
type = S
physics = N
movetype = I
anim = 1021
ctrl = 0
sprpriority = 2
movehitpersist = 1

[State 1021, Pos]
type = posset
trigger1 = 1
y = 0

[State 1021, Accel]
type = veladd
trigger1 = vel x > 0
x = -0.33166875
[State 1021, Vel]
type = velset
trigger1 = vel x < 0
x = 0

[State 1021, Vel]
type = velset
trigger1 = !time
x = 3.95
y = 0

[State 1021, Snd]
type = playsnd
trigger1 = !time
value = 0, 101
[State 1021, Dust]
type = explod
trigger1 = !time
anim = 8104
sprpriority = 3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1021, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;========================<AIR CANNON DRILL>=============================
[Statedef 1050]
type = A
physics = N
movetype = A
anim = 1050
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 100 * !var(20)

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1050, Strength]
type = varset
trigger1 = !AIlevel
trigger1 = time <= 0
var(10) = ifelse(map(str_c), 2, ifelse(map(str_b), 1, 0))
ignorehitpause = 1
persistent = 0

[State 1050, Strength AI]
type = varset
trigger1 = AIlevel
trigger1 = time <= 0
var(10) = ifelse((map(p2bodydistx) > 180 || p2movetype = H || var(20)), 2, ifelse(map(p2bodydistx) > 150, 1, 0))
ignorehitpause = 1

[State 1050, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1050, Pos]
type = posadd
trigger1 = animelem = 3
y = -16
persistent = 0

[State 1050, Accel]
type = veladd
trigger1 = animelemtime(3) >= 0
x = -0.11055625
y = 0.165834375
[State 1050, Vel]
type = velset
trigger1 = animelem = 3
x = 9.47
y = 0

[State 1050, Snd]
type = playsnd
trigger1 = animelem = 2
value = 5, 1
channel = 0
[State 1050, Snd]
type = playsnd
trigger1 = animelem = 3
value = 0, 41
channel = 1

[State 1050, Hit]
type = hitdef
trigger1 = animelem = 2
trigger1 = (var(15) < 2 || var(20))
attr = A, SA
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = 50, 13
dizzypoints = -ceil(150 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = -4.32, -6.91
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.32, -6.91
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 56), var(37) := -38
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1050, Hit]
type = hitdef
trigger1 = animelem = 3
trigger1 = (var(15) < 2 || var(20))
attr = A, SA
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = 50, 13
dizzypoints = -ceil(150 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Back
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = -4.32, -6.91
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.32, -6.91
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 92), var(37) := -14
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1050, End]
type = changestate
triggerall = animelemtime(3) >= 0
trigger1 = var(10) = 0 && time >= 17
trigger2 = var(10) = 1 && time >= 20
trigger3 = time >= 23
value = 1051

[State 1050, End]
type = changestate
trigger1 = animelemtime(3) >= 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1052


;--- Recover ---
[Statedef 1051]
type = A
physics = N
movetype = I
ctrl = 0
anim = 1051
sprpriority = 2
movehitpersist = 1

[State 1051, Vel]
type = velset
trigger1 = !time
x = 2.66
[State 1051, Accel]
type = veladd
trigger1 = 1
y = 0.6633375

[State 1051, End]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1052


;--- Land ---
[Statedef 1052]
type = S
physics = N
movetype = I
ctrl = 0
anim = 1052
velset = 0, 0
sprpriority = 2
movehitpersist = 1

[State 1052, Pos]
type = posset
trigger1 = 1
y = 0

[State 1052, Accel]
type = veladd
trigger1 = vel x > 0
x = -0.442225
[State 1052, Vel]
type = velset
trigger1 = vel x < 0
x = 0

[State 1052, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 1052, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1052, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;========================<EX AIR CANNON DRILL>=============================
[Statedef 1060]
type = A
physics = N
movetype = A
anim = 1060
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = -500

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1060, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1060, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 1060, ExFX]
type = varset
trigger1 = !time
var(25) = 30
[State 1060, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
[State 1060, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = ceil(44 * const(size.xscale)), ceil(-32 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1060, Pos]
type = posadd
trigger1 = animelem = 3
y = -16
persistent = 0

[State 1060, Accel]
type = veladd
trigger1 = animelemtime(3) >= 0
x = -0.11055625
y = 0.165834375
[State 1060, Vel]
type = velset
trigger1 = animelem = 3
x = 10.5
y = 0

[State 1060, Snd]
type = playsnd
trigger1 = animelem = 2
value = 5, 1
channel = 0
[State 1060, Snd]
type = playsnd
trigger1 = animelem = 3
value = 0, 41
channel = 1

[State 1060, Snd]
type = playsnd
trigger1 = animelem = 3
value = 7, 4
[State 1060, FX]
type = helper
trigger1 = animelem = 3 && !numhelper(1025)
helpertype = normal
stateno = 1025
ID = 1025
name = "EX Drill FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
ownpal = 1

[State 1060, Hit]
type = hitdef
trigger1 = animelem = 2
trigger1 = var(15) < 2
attr = A, SA
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = 50, 13
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
getpower = 0, 0
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = -4.32, -6.91
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.32, -6.91
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 56), var(37) := -38
palfx.time = 60
palfx.mul = 128, 128, 128
palfx.sinadd = 96, 96, 96, 4
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1060, Hit]
type = hitdef
trigger1 = animelem = 3
trigger1 = var(15) < (2 + hitcount)
attr = A, SA
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = 60, 15
dizzypoints = -ceil(150 * fvar(10)) * !var(20)
getpower = 0, 0
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Back
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = -4.32, -6.91
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.32, -6.91
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 92), var(37) := -14
palfx.time = 60
palfx.mul = 128, 128, 128
palfx.sinadd = 96, 96, 96, 4
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1060, Flame Particles]
type = helper
trigger1 = !numhelper(8150)
trigger1 = movehit = 1 && numtarget
trigger1 = !(target, hitshakeover)
trigger1 = var(40) := (target, ID)
helpertype = normal
stateno = 8150
ID = 8150
name = "Flame Particles"
postype = p2
ownpal = 1
ignorehitpause = 1

[State 1060, End]
type = changestate
trigger1 = animelemtime(3) >= 0
trigger1 = time >= 26
value = 1051

[State 1060, End]
type = changestate
trigger1 = animelemtime(3) >= 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1052


;========================<CANNON SPIKE>=============================
[Statedef 1100]
type = S
physics = N
movetype = A
anim = 1100
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 100 * !var(20)
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1100, Strength]
type = varset
trigger1 = !AIlevel
trigger1 = time <= 0
var(10) = ifelse(map(str_c), 2, ifelse(map(str_b), 1, 0))
ignorehitpause = 1
persistent = 0

[State 1100, Strength AI]
type = varset
trigger1 = AIlevel
trigger1 = time <= 0
var(10) = ifelse((p2movetype = H || var(20)), 2, 0)
ignorehitpause = 1

[State 1100, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1100, 3 frames not 4]
type = changeanim
trigger1 = animelemtime(5) < 0 && !(gametime % 4)
value = 1100
elem = animelemno(0) + 1

[State 1100, NHB]
type = nothitby
trigger1 = animelemtime(5) < 0
value = SCA
time = 1

[State 1100, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 5
channel = 1

[State 1100, Snd]
type = playsnd
trigger1 = animelem = 5
value = 0, 41
[State 1100, Dust]
type = helper
trigger1 = animelem = 5
helpertype = normal
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 1100, Type]
type = statetypeset
trigger1 = animelemtime(5) >= 0
statetype = A
physics = N

[State 1100, Accel]
type = veladd
trigger1 = animelemtime(5) >= 0
x = -0.33166875

[State 1100, Accel]
type = veladd
trigger1 = animelemtime(7) >= 0
y = 0.6633375

[State 1100, Vel]
type = velset
trigger1 = animelem = 5
x = ifelse(var(10) = 2, 8.75, ifelse(var(10) = 1, 8.50, 8.11))

[State 1100, Vel]
type = velset
trigger1 = animelem = 6
y = ifelse(var(10) = 2, -13.22, ifelse(var(10) = 1, -10.56, -7.91))

[State 1100, Grounded Frame]
type = posfreeze
trigger1 = animelem = 6
value = 1

[State 1100, Snd]
type = playsnd
trigger1 = animelem = 5
value = 5, 0
channel = 0

[State 1100, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 5
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ifelse(var(10) = 2, 111, ifelse(var(10) = 1, 104, 97)), ifelse(var(10) = 2, 28, ifelse(var(10) = 1, 26, 24))
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Back
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -2.16, -8.81
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -2.16, -8.81
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 32), var(37) := -64
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1100, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 6 && !movecontact && !movereversed
attr = A, SA
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = 50, 13
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Back
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = -2.16, -8.81
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -2.16, -8.81
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 39), var(37) := -110
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1100, End]
type = changestate
trigger1 = animelemtime(5) >= 0
trigger1 = movecontact || movereversed
value = 1106

[State 1100, End]
type = changestate
triggerall = animelemtime(7) >= 0
trigger1 = var(10) = 0 && time >= 22
trigger2 = var(10) = 1 && time >= 25
trigger3 = time >= 28
value = 1105

[State 1100, End]
type = changestate
trigger1 = animelemtime(7) >= 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1107


;--- Recover ---
[Statedef 1105]
type = A
physics = N
movetype = I
ctrl = 0
anim = 1105
sprpriority = 2
movehitpersist = 1

[State 1105, Accel]
type = veladd
trigger1 = vel x > 0
x = -0.33166875

[State 1105, Accel]
type = velset
trigger1 = vel x < 0
x = 0

[State 1105, Accel]
type = veladd
trigger1 = 1
y = 0.6633375

[State 1105, End]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1107


;--- Bounce ---
[Statedef 1106]
type = A
physics = N
movetype = I
ctrl = 0
anim = 1106
sprpriority = 2
movehitpersist = 1

[State 1106, Accel]
type = veladd
trigger1 = 1
y = 0.88445

[State 1106, Vel]
type = velset
trigger1 = !time
x = -1.62
y = -13.20

[State 1106, End]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1107


;--- Land ---
[Statedef 1107]
type = S
physics = N
movetype = I
ctrl = 0
anim = 1107
velset = 0, 0
sprpriority = 2
movehitpersist = 1

[State 1107, Pos]
type = posset
trigger1 = 1
y = 0

[State 1107, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 1107, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1107, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;========================<EX CANNON SPIKE>=============================
[Statedef 1120]
type = S
physics = N
movetype = A
anim = 1120
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = -500
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1120, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1120, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 1120, ExFX]
type = varset
trigger1 = !time
var(25) = 30
[State 1120, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
[State 1120, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = ceil(27 * const(size.xscale)), ceil(-62 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1120, 3 frames not 4]
type = changeanim
trigger1 = animelemtime(5) < 0 && !(gametime % 4)
value = 1120
elem = animelemno(0) + 1

[State 1120, NHB]
type = nothitby
trigger1 = animelemtime(7) < 0
value = SCA
time = 1

[State 1120, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 5
channel = 1

[State 1120, Snd]
type = playsnd
trigger1 = animelem = 5
value = 0, 41

[State 1120, Dust]
type = helper
trigger1 = animelem = 5
helpertype = normal
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 1120, Type]
type = statetypeset
trigger1 = animelemtime(5) >= 0
statetype = A
physics = N

[State 1120, Accel]
type = veladd
trigger1 = animelemtime(5) >= 0
x = -0.33166875
[State 1120, Accel]
type = veladd
trigger1 = animelemtime(7) >= 0
y = 0.6633375

[State 1120, Vel]
type = velset
trigger1 = animelem = 5
x = 9.75

[State 1120, Vel]
type = velset
trigger1 = animelem = 6
y = -13.22

[State 1100, Grounded Frame]
type = posfreeze
trigger1 = animelem = 6
value = 1

[State 1120, Snd]
type = playsnd
trigger1 = animelem = 5
value = 5, 0
channel = 0

[State 1120, Snd]
type = playsnd
trigger1 = animelem = 5
value = 7, 4
[State 1120, FX]
type = helper
trigger1 = animelem = 5 && !numhelper(1125)
helpertype = normal
stateno = 1125
ID = 1125
name = "EX Spike FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
ownpal = 1

[State 1120, Hit]
type = hitdef
trigger1 = var(15) < 2
trigger1 = animelem = 5
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 60, 15
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
getpower = 0, 0
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -2.16, -8.81
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -2.16, -8.81
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 32), var(37) := -64
palfx.time = 60
palfx.mul = 128, 128, 128
palfx.sinadd = 96, 96, 96, 4
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1120, Hit]
type = hitdef
trigger1 = var(15) < 3
trigger1 = animelem = 6
attr = A, SA
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = 60, 15
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
getpower = 0, 0
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Back
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = -2.16, -8.81
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -2.16, -8.81
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 39), var(37) := -110
palfx.time = 60
palfx.mul = 128, 128, 128
palfx.sinadd = 96, 96, 96, 4
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1120, Flame Particles]
type = helper
trigger1 = !numhelper(8150)
trigger1 = movehit = 1 && numtarget
trigger1 = !(target, hitshakeover)
trigger1 = var(40) := (target, ID)
helpertype = normal
stateno = 8150
ID = 8150
name = "Flame Particles"
postype = p2
ownpal = 1
ignorehitpause = 1

[State 1120, End]
type = changestate
triggerall = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(5) >= 0 && var(15) >= 2
trigger2 = animelemtime(6) >= 1
value = 1122

[State 1120, End]
type = changestate
trigger1 = animelemtime(7) >= 0 && time >= 28
value = 1121
[State 1120, End]
type = changestate
trigger1 = animelemtime(7) >= 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1123


;--- Recover ---
[Statedef 1121]
type = A
physics = N
movetype = I
ctrl = 0
anim = 1105
sprpriority = 2
movehitpersist = 1

[State 1121, Accel]
type = veladd
trigger1 = vel x > 0
x = -0.33166875
[State 1121, Accel]
type = velset
trigger1 = vel x < 0
x = 0
[State 1121, Accel]
type = veladd
trigger1 = 1
y = 0.6633375

[State 1121, End]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1123


;--- Bounce ---
[Statedef 1122]
type = A
physics = N
movetype = I
ctrl = 0
anim = 1106
sprpriority = 2
movehitpersist = 1

[State 1122, Accel]
type = veladd
trigger1 = 1
y = 0.88445
[State 1122, Vel]
type = velset
trigger1 = !time
x = -1.62
y = -13.20

[State 1122, End]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1123


;--- Land ---
[Statedef 1123]
type = S
physics = N
movetype = I
ctrl = 0
anim = 1107
velset = 0, 0
sprpriority = 2
movehitpersist = 1

[State 1123, Pos]
type = posset
trigger1 = 1
y = 0

[State 1123, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 1123, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1123, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;========================<AXLE SPIN KNUCKLE>=============================
[Statedef 1200]
type = S
physics = N
movetype = A
anim = 1200
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 100 * !var(20)
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1200, Strength]
type = varset
trigger1 = !AIlevel
trigger1 = time <= 0
var(10) = ifelse(map(str_z), 2, ifelse(map(str_y), 1, 0))
ignorehitpause = 1
persistent = 0

[State 1200, Strength AI]
type = varset
trigger1 = AIlevel
trigger1 = time <= 0
var(10) = ifelse(map(p2bodydistx) > 152, 2, ifelse(map(p2bodydistx) > 128, 1, 0))
ignorehitpause = 1

[State 1200, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1200, NHB]
type = nothitby
trigger1 = animelemtime(2) < 0
value = SCA
time = 1

[State 1200, Spr]
type = sprpriority
trigger1 = animelemtime(3) >= 0
value = -1

[State 1200, Snd]
type = playsnd
trigger1 = animelemtime(4) = 2
value = 0, 102
[State 1200, Dust]
type = helper
trigger1 = animelemtime(4) = 2
helpertype = normal
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 1200, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 2
statetype = A
physics = N

[State 1200, Accel]
type = veladd
trigger1 = animelemtime(4) >= 2
x = ifelse(var(10) = 2, -0.2211125, ifelse(var(10) = 1, -0.1934734, -0.1243758))
y = ifelse(var(10) = 2, 0.9950063, ifelse(var(10) = 1, 0.8291719, 0.7738938))

[State 1200, Push]
type = playerpush
trigger1 = var(10) = 2
trigger1 = animelemtime(4) >= 2 && numenemy
trigger1 = enemynear, backedgebodydist >= 8
value = 0

[State 1200, Vel]
type = velset
trigger1 = animelemtime(4) = 2
x = ifelse(var(10) = 2, 9.61, ifelse(var(10) = 1, 9.10, 7.28))
y = ifelse(var(10) = 2, -7.53, ifelse(var(10) = 1, -5.55, -5.22))

[State 1200, Snd]
type = playsnd
trigger1 = animelem = 5
value = 4, 0
channel = 0

[State 1200, End]
type = changestate
trigger1 = animelemtime(4) >= 2
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1201


;--- Punch ---
[Statedef 1201]
type = S
physics = S
movetype = A
anim = 1201
ctrl = 0
velset = 0, 0
facep2 = 1
sprpriority = 2

[State 1201, Pos]
type = posset
trigger1 = !time
y = 0

[State 1201, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 1201, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1201, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
channel = 1

[State 1201, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 4
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ifelse(var(10) = 2, 75, ifelse(var(10) = 2, 65, 60)), ifelse(var(10) = 2, 19, ifelse(var(10) = 2, 17, 15))
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 8, 8
guard.pausetime = 8, 8
animtype = Back
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -5.32, -7.24
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 62), var(37) := -52
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1201, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 5
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 40, 10
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Back
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -5.32, -7.24
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -5.32, -7.24
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 90), var(37) := -64
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1201, Anim]
type = changeanim
trigger1 = movecontact = 1 && hitpausetime
trigger1 = animelemtime(5) >= 0 && animelemtime(6) <= 0
trigger1 = hitpausetime <= ifelse(var(20), 4, 10)
value = 1201
elem = 6
ignorehitpause = 1

[State 1201, Type]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I
[State 1201, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;========================<EX AXLE SPIN KNUCKLE>=============================
[Statedef 1220]
type = S
physics = N
movetype = A
anim = 1220
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = -500
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1220, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1220, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 1220, ExFX]
type = varset
trigger1 = !time
var(25) = 30
[State 1220, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
[State 1220, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = ceil(0 * const(size.xscale)), ceil(-64 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1220, NHB]
type = nothitby
trigger1 = animelemtime(2) < 0
value = SCA
time = 1

[State 1220, Spr]
type = sprpriority
trigger1 = animelemtime(3) >= 0
value = -1

[State 1220, Snd]
type = playsnd
trigger1 = animelemtime(4) = 2
value = 0, 102
[State 1220, Dust]
type = helper
trigger1 = animelemtime(4) = 2
helpertype = normal
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 1220, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 2
statetype = A
physics = N

[State 1220, Accel]
type = veladd
trigger1 = animelemtime(4) >= 2
x = -0.25
y = 1

[State 1220, Vel]
type = velset
trigger1 = animelemtime(4) = 2
x = 12
y = -6

[State 1220, Snd]
type = playsnd
trigger1 = animelem = 5
value = 4, 0
channel = 0

[State 1220, End]
type = changestate
trigger1 = animelemtime(4) >= 2
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1221


;--- Punch ---
[Statedef 1221]
type = S
physics = S
movetype = A
anim = 1221
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1221, Pos]
type = posset
trigger1 = !time
y = 0

[State 1221, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 1221, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1221, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
channel = 1

[State 1221, Snd]
type = playsnd
trigger1 = animelem = 2
value = 7, 4
[State 1221, FX]
type = helper
trigger1 = animelem = 2 && !numhelper(1225)
helpertype = normal
stateno = 1225
ID = 1225
name = "EX Knuckle FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
ownpal = 1

[State 1221, Hit]
type = hitdef
trigger1 = var(15) < 1
trigger1 = animelem = 4
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 60, 15
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
getpower = 0, 0
givepower = 40, 40
pausetime = 4, 4
guard.pausetime = 4, 4
animtype = Back
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -5.32, -7.24
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 62), var(37) := -52
palfx.time = 60
palfx.mul = 128, 128, 128
palfx.sinadd = 96, 96, 96, 4
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1221, Hit]
type = hitdef
trigger1 = var(15) < 1
trigger1 = animelem = 5
ID = 1221
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 40, 10
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
getpower = 0, 0
givepower = 40, 40
pausetime = 8, 8
guard.pausetime = 8, 8
animtype = Back
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -12, -4.25
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -12, -4.25
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 90), var(37) := -64
palfx.time = 60
palfx.mul = 128, 128, 128
palfx.sinadd = 96, 96, 96, 4
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1221, Wall Bounce]
type = targetstate
trigger1 = !map(wallbounce)
trigger1 = movehit && numtarget(1221)
trigger1 = target(1221), dizzypoints > 0
trigger1 = (target(1221), stateno = 5000) || (target(1221), stateno = 5010) || (target(1221), stateno = 5020)
value = 1230
ID = 1221
ignorehitpause = 1

[State 1221, Wall Bounce Limit]
type = mapset
map = "wallbounce"
trigger1 = numtarget(1221)
trigger1 = target(1221), stateno = 1230
value = 1
ignorehitpause = 1

[State 1221, Juggle]
type = varset
trigger1 = movehit = 1
trigger1 = numtarget(1221)
trigger1 = target(1221), stateno = 1230
var(15) = 0
ignorehitpause = 1

[State 1221, Flame Particles]
type = helper
trigger1 = !numhelper(8150)
trigger1 = movehit = 1 && numtarget
trigger1 = !(target, hitshakeover)
trigger1 = var(40) := (target, ID)
helpertype = normal
stateno = 8150
ID = 8150
name = "Flame Particles"
postype = p2
ownpal = 1
ignorehitpause = 1

[State 1221, Type]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I
[State 1221, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Target Hit Pause ---
[Statedef 1230]
type = A
movetype = H
physics = N
velset = 0, 0

[State 1230, Anim]
type = changeanim
trigger1 = 1
value = 5012

[State 1230, End]
type = changestate
trigger1 = hitshakeover
value = 1231


;--- Target Falling ---
[Statedef 1231]
type = A
movetype = H
physics = N

[State 1231, Accel]
type = veladd
trigger1 = 1
y = gethitvar(yaccel) * 0.67

[State 1231, Vel]
type = hitvelset
trigger1 = !time
x = 1
y = 1

[State 1231, Push]
type = screenbound
trigger1 = 1
value = 1
movecamera = (vel y < 0), 0

[State 1231, Push]
type = playerpush
trigger1 = 1
value = 0

[State 1231, Anim]
type = changeanim
trigger1 = !time
value = 5030

[State 1231, Bounce]
type = changestate
trigger1 = time >= 4
trigger1 = backedgebodydist <= 10 || frontedgebodydist <= 10
value = 1232

[State 1231, End]
type = selfstate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 5100


;--- Target Hitting Wall ---
[Statedef 1232]
type = A
movetype = H
physics = N

[State 1232, Turn]
type = turn
trigger1 = !time
trigger1 = frontedgedist < backedgedist

[State 1232, Pos]
type = posadd
trigger1 = 1
x = -backedgebodydist

[State 1232, Pos]
type = posfreeze
trigger1 = 1
x = 1
y = 1

[State 1232, Push]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 1
[State 1232, Push]
type = playerpush
trigger1 = 1
value = 1

[State 1232, Anim]
type = changeanim
trigger1 = 1
value = 5000

[State 1232, FX]
type = playsnd
trigger1 = !time
value = F7, 2

[State 1232, FX]
type = explod
trigger1 = !time
anim = F72
postype = p1
pos = -15, const(size.mid.pos.y)
sprpriority = -5
ownpal = 1

[State 1232, End]
type = changestate
trigger1 = time >= 4
value = 1233


;--- Target Falling ---
[Statedef 1233]
type = A
movetype = H
physics = N

[State 1233, Turn]
type = turn
trigger1 = !time

[State 1233, Accel]
type = veladd
trigger1 = 1
y = 0.4850;yaccel

[State 1233, Vel]
type = velset
trigger1 = !time
x = ((enemynear, pos x - pos x) * facing + 40) / 36.0
y = (pos y + 0.5 * 0.4850 * 36 ** 2) / -36.0

[State 1233, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5051), 5051, 5030)
[State 1233, Anim]
type = changeanim
trigger1 = anim = 5030 && !animtime
value = 5050
[State 1233, Anim]
type = changeanim
trigger1 = vel y > -3 && anim = 5051
value = 5061

[State 1233, Push]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0
[State 1233, Push]
type = playerpush
trigger1 = 1
value = 0

[State 1233, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 1233, End]
type = selfstate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 5100


;========================<HOOLIGAN COMBINATION>=============================
[Statedef 1300]
type = S
physics = N
movetype = A
anim = 1300
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 100 * !var(20)
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1300, Strength]
type = varset
trigger1 = !AIlevel
trigger1 = time <= 0
var(10) = ifelse(map(str_z), 2, ifelse(map(str_y), 1, 0))
ignorehitpause = 1
persistent = 0

[State 1300, Strength AI]
type = varset
trigger1 = AIlevel
trigger1 = time <= 0
var(10) = ifelse(map(p2bodydistx) < 40, 0, ifelse(map(p2bodydistx) < 72, 1, 2))
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
trigger1 = animelem = 6
value = 0, 40
[State 1300, Dust]
type = helper
trigger1 = animelem = 6
helpertype = normal
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 1300, Type]
type = statetypeset
trigger1 = animelemtime(2) >= 0
statetype = A
physics = N

[State 1300, Pos]
type = posadd
trigger1 = animelem = 6
y = -40
persistent = 0

[State 1300, Accel]
type = veladd
trigger1 = animelemtime(6) >= 1
y = 0.608059375

[State 1300, Vel]
type = velset
trigger1 = animelemtime(6) = 1
x = ifelse(var(10) = 2, 7.315, ifelse(var(10) = 1, 4.99, 2.66))
y = ifelse(var(10) = 2, -7.24, ifelse(var(10) = 1, -8.20, -9.24))

[State 1300, Kick]
type = changestate
triggerall = animelemtime(6) >= 1
triggerall = vel y >= 0 && pos y <= -48
trigger1 = !AIlevel && (command = "a" || command = "b" || command = "c")
trigger2 = AIlevel
trigger2 = (map(p2bodydistx) = [-8, 50]) && p2statetype = C
value = 1315

[State 1300, Throw]
type = changestate
triggerall = animelemtime(6) >= 1
triggerall = vel y >= 0 && pos y <= -18
trigger1 = !AIlevel && (command = "x" || command = "y" || command = "z")
trigger2 = AIlevel && (p2stateno = [120, 142]) && (map(p2bodydistx) = [-20, 24])
trigger3 = AIlevel && (map(p2bodydistx) = [-20, 24]) && random < 50
value = 1320

[State 1300, End]
type = changestate
trigger1 = animelemtime(6) >= 1
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1310


;--- Razor Edge Slicer ---
[Statedef 1310]
type = C
physics = N
movetype = A
ctrl = 0
sprpriority = 2

[State 1310, Pos]
type = posset
trigger1 = 1
y = 0
[State 1310, Vel]
type = velset
trigger1 = !time
y = 0

[State 1310, Anim]
type = changeanim
trigger1 = !time
value = ifelse(var(10) = 2, 1312, ifelse(var(10) = 1, 1311, 1310))

[State 1310, Accel]
type = veladd
trigger1 = vel x > 0 && time
x = ifelse(var(10) = 2, -0.60805938, ifelse(var(10) = 1, -0.49750313, -0.38694688))
[State 1310, Vel]
type = velset
trigger1 = vel x < 0
x = 0

[State 1310, Snd]
type = playsnd
trigger1 = !time
value = 4, 4
channel = 0

[State 1310, Snd]
type = playsnd
trigger1 = !time
value = 0, 101
[State 1310, Dust]
type = explod
trigger1 = !time
anim = 8104
sprpriority = 3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1310, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 2
attr = C, SA
hitflag = MAF
guardflag = L
priority = 4, Hit
damage = ifelse(var(10) = 2, 90, ifelse(var(10) = 1, 83, 76)), ifelse(var(10) = 2, 23, ifelse(var(10) = 1, 21, 19))
dizzypoints = -ceil(150 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Back
air.animtype = Back
fall.animtype = Back
ground.type = Trip
air.type = Trip
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -1, -8.24
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -1, -8.24
air.cornerpush.veloff = 0
yaccel = 0.677
fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 78), var(37) := -6
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1310, Type]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I
[State 1310, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Kick ---
[Statedef 1315]
type = A
physics = N
movetype = A
anim = 1315
ctrl = 0
velset = (vel x * 0.5), -3
sprpriority = 2
juggle = 7 * !var(20)

[State 1315, Snd]
type = playsnd
trigger1 = animelem = 2
value = 4, 1
channel = 0
[State 1315, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 5
channel = 1

[State 1315, Pos]
type = posadd
trigger1 = !time
y = 40
[State 1315, Accel]
type = veladd
trigger1 = time
y = 0.608059375

[State 1315, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 3
ID = 1315
attr = A, SA
hitflag = MAFD
guardflag = HA
priority = 4, Hit
damage = 60, 15
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
airguard.ctrltime = 16
down.hittime = 20
ground.velocity = -6.48, -5.25
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -6.48, -5.25
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
down.velocity = 0, 0
down.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 66), var(37) := -30
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
down.bounce = 1
fall.xvelocity = -4
fall.yvelocity = -4.5

[State 1315, P2 State]
type = targetstate
trigger1 = movehit && numtarget(1315)
trigger1 = !(target(1315), time)
trigger1 = (target(1315), stateno = 5000) || (target(1315), stateno = 5010)
value = 5980
ID = 1315
ignorehitpause = 1

[State 1315, End]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1316


;--- Land ---
[Statedef 1316]
type = S
physics = N
movetype = I
ctrl = 0
anim = 1316
velset = 0, 0
sprpriority = 2
movehitpersist = 1

[State 1316, Pos]
type = posset
trigger1 = 1
y = 0

[State 1316, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 1316, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1316, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Target Slammed Against Ground ---
[Statedef 5980]
type = A
movetype = H
physics = N
velset = 0, 0

[State 5980, Anim]
type = changeanim
trigger1 = 1
value = ifelse(selfanimexist(5420), 5420, 5012)

[State 5980, End]
type = selfstate
trigger1 = hitshakeover && pos y < 0
value = 5030

[State 5980, End]
type = changestate
trigger1 = hitshakeover && pos y >= 0
value = 5981


[Statedef 5981]
type = L
movetype = H
physics = N
velset = 0, 0

[State 5981, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5101), 5101, 5100)

[State 5981, Pos]
type = posset
trigger1 = 1
y = 0

[State 5981, Damage]
type = hitfalldamage
trigger1 = !time

[State 5981, Shake]
type = envshake
trigger1 = !time
time = 12
ampl = 2
freq = 180

[State 5981, Snd]
type = playsnd
trigger1 = !time
value = F7, 1

[State 5981, FX]
type = explod
trigger1 = !time
anim = F61
postype = p1
pos = 0, 0
sprpriority = -3

[State 5981, End]
type = selfstate
trigger1 = !animtime
value = 5101


;--- Throw Attempt ---
[Statedef 1320]
type = A
physics = N
movetype = A
anim = 1320
ctrl = 0
sprpriority = 2

[State 1320, Guard Dist]
type = attackdist
trigger1 = 1
value = 0

[State 1320, Hit]
type = hitdef
triggerall = animelem = 1
triggerall = var(15) < 1 || var(20)
triggerall = !map(unthrowable) && numenemy
triggerall = p2dist x >= ifelse((facing = enemynear, facing), -(enemynear, const(size.ground.front)), -(enemynear, const(size.ground.back)))
trigger1 = !AIlevel
trigger1 = (command = "holdfwd" || command = "holdback") && (command = "x" || command = "y" || command = "z")
trigger2 = AIlevel
attr = A, ST
hitflag = M
priority = 1, Miss
getpower = 72 * !var(20), 0
givepower = 0, 0
sparkno = -1 + 0 * (var(33) := 0)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 40), var(37) := -16
hitsound = -1 + 0 * (var(31) := 800)
guardsound = -1 + 0 * (var(32) := 0)
fall = 1
fall.recover = 1
fall.xvelocity = 3.325
fall.yvelocity = -3.85
numhits = 0
p1stateno = 1330
p2stateno = 1335

[State 1320, Hit]
type = hitdef
triggerall = animelem = 1
triggerall = var(15) < 1 || var(20)
triggerall = enemynear, statetype = A || p2dist y < - enemynear, const(size.mid.pos.y)
triggerall = !map(unthrowable) && numenemy
triggerall = p2dist x >= ifelse((facing = enemynear, facing), -(enemynear, const(size.ground.front)), -(enemynear, const(size.ground.back)))
trigger1 = !AIlevel
trigger1 = (command = "holdfwd" || command = "holdback") && (command = "x" || command = "y" || command = "z")
trigger2 = AIlevel
attr = A, ST
hitflag = MAF
priority = 1, Miss
getpower = 72 * !var(20), 0
givepower = 0, 0
sparkno = -1 + 0 * (var(33) := 0)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 40), var(37) := -16
hitsound = -1 + 0 * (var(31) := 800)
guardsound = -1 + 0 * (var(32) := 0)
fall = 1
fall.recover = 1
fall.xvelocity = -3.325
fall.yvelocity = -3.85
numhits = 0
p1stateno = 1340
p2stateno = 1345

[State 1320, Accel]
type = veladd
trigger1 = 1
y = 0.608059375

[State 1320, Type]
type = statetypeset
trigger1 = animelemtime(2) >= 0
movetype = I
[State 1320, End]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1321


;--- Land ---
[Statedef 1321]
type = S
physics = S
movetype = I
anim = 1321
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1321, Pos]
type = posset
trigger1 = 1
y = 0

[State 1321, Ctrl]
type = ctrlset
trigger1 = time >= 3
value = 1

[State 1321, Assert]
type = assertspecial
trigger1 = 1
flag = noautoturn

[State 1321, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 1321, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1321, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;========================<FATAL LEG TWISTER>=============================
[Statedef 1330]
type = A
physics = N
movetype = A
anim = 1330
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1330, Safety]
type = changestate
trigger1 = !time
trigger1 = !numtarget
value = 0
ctrl = 1

[State 1330, Throw]
type = targetstate
trigger1 = !time
trigger1 = numtarget
value = 1335
[State 1330, Throw]
type = targetfacing
trigger1 = time <= 3
value = -1

[State 1330, Width]
type = width
trigger1 = animelemtime(7) >= 0
edge = ceil(33 * const(size.xscale)), 0

[State 1330, Spr]
type = sprpriority
trigger1 = 1
value = 1
[State 1330, spr]
type = sprpriority
trigger1 = animelemtime(2) >= 0 && animelemtime(4) < 0
value = -1

[State 1330, Bind 1]
type = bindtotarget
trigger1 = numtarget = 1
trigger1 = animelemtime(2) < 0
pos = (-12 * const(size.xscale)), 70, Head

[State 1330, Bind 2]
type = bindtotarget
trigger1 = numtarget = 1
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 0, 64, Head

[State 1330, Bind 3]
type = bindtotarget
trigger1 = numtarget = 1
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = (32 * const(size.xscale)), 72, Head

[State 1330, Bind 1]
type = bindtotarget
trigger1 = numtarget = 1
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
pos = (24 * const(size.xscale)), 86, Head

[State 1330, Bind 5]
type = bindtotarget
trigger1 = numtarget = 1
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
pos = (18 * const(size.xscale)), 90, Head

[State 1330, Bind 6]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(6) >= 0 && animelemtime(7) < 0
pos = 24 * const(size.xscale), -68 * const(size.yscale)

[State 1330, Bind 7]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(7) >= 0
pos = -32 * const(size.yscale), 0

[State 1330, Bind Fix]
type = posset
trigger1 = pos y > 65 && animelemtime(6) < 0
y = 65
[State 1330, Bind Fix]
type = posset
trigger1 = pos y > 0
trigger1 = animelemtime(6) = 0
y = 0

[State 1330, Accel]
type = veladd
trigger1 = animelemtime(6) >= 0
y = 0.77389375
[State 1330, Vel]
type = velset
trigger1 = animelem = 6
x = 1.579375
y = -5.25

[State 1330, Snd]
type = playsnd
trigger1 = animelem = 1
value = 4, 0
channel = 0
[State 1330, Snd]
type = playsnd
trigger1 = animelem = 2
value = 7, 3

[State 1330, End]
type = changestate
trigger1 = animelemtime(6) >= 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1331


;--- Slam ---
[Statedef 1331]
type = A
physics = N
movetype = A
anim = 1331
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1331, Width]
type = width
trigger1 = animelemtime(2) < 0
edge = ceil(33 * const(size.xscale)), 0
[State 1331, Pos]
type = posset
trigger1 = animelemtime(2) < 0
y = 0

[State 1331, Bind 1]
type = targetbind
trigger1 = animelemtime(2) < 0
pos = -32 * const(size.xscale), 0

[State 1331, Damage]
type = targetlifeadd
trigger1 = numtarget && !time
value = floor(-130 * fvar(10))
kill = 1

;[State 1331, Stun Damage];currently redundant
;type = targetdizzypointsadd
;trigger1 = !time
;trigger1 = numtarget
;value = -ceil(140 * fvar(10)) * !var(20)

[State 1331, Power]
type = targetpoweradd
trigger1 = numtarget && !time
value = 40;givepower

[State 1331, Hit]
type = hitadd
trigger1 = numtarget && !time
value = 1

[State 1331, Juggle]
type = varadd
trigger1 = numtarget && !time
var(15) = 1
ignorehitpause = 1

[State 1331, Throw]
type = targetstate
trigger1 = numtarget && !time
value = 1336

[State 1331, Throw]
type = targetstate
trigger1 = numtarget && animelem = 2
value = 1337

[State 1331, Snd]
type = playsnd
trigger1 = !time
value = 4, 1
channel = 0

[State 1331, Sound]
type = playsnd
trigger1 = numtarget && !time
value = 0, 5100

[State 1331, Shake]
type = envshake
trigger1 = numtarget && !time
time = 12
ampl = 2
freq = 180

[State 1331, Dust]
type = helper
trigger1 = numtarget && !time
helpertype = normal
stateno = 8110
ID = 8110
name = "Impact Dust"
postype = p1
pos = ceil(-40 * const(size.xscale)), 0
ownpal = 1

[State 1331, Accel]
type = veladd
trigger1 = animelemtime(2) >= 0
y = 1.21611875
[State 1331, Vel]
type = velset
trigger1 = animelem = 2
x = 1.579375
y = -6.91

[State 1331, End]
type = changestate
trigger1 = animelemtime(2) >= 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1332


;--- Land ---
[Statedef 1332]
type = S
physics = N
movetype = I
ctrl = 0
anim = 1332
velset = 0, 0
sprpriority = 2
movehitpersist = 1

[State 1332, Pos]
type = posset
trigger1 = 1
y = 0

[State 1332, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 1332, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1332, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Target ---
[Statedef 1335]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0

[State 1335, Anim]
type = changeanim2
trigger1 = !time
value = 1335

[State 1335, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 1335, Pos]
type = posset
trigger1 = !time
y = 0

[State 1335, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 1336]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 1336, Anim]
type = changeanim2
trigger1 = !time
value = 1336
[State 1336, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 1336, End]
type = selfstate
trigger1 = time >= 60
value = 5040


[Statedef 1337]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 1337, Anim]
type = changeanim2
trigger1 = !time
value = 1337
[State 1337, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 1337, Accel]
type = veladd
trigger1 = 1
y = 0.4850;yaccel
[State 1337, Vel]
type = velset
trigger1 = !time
x = 5.32
y = -6.91

[State 1337, Stun]
type = selfstate
trigger1 = !time
trigger1 = alive
trigger1 = dizzypoints <= 0
value = const(statedizzyfalldown_air)

[State 1337, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 1337, End]
type = selfstate
trigger1 = vel y > 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 5100


;========================<CROSS SCISSOR PRESSURE>=============================
[Statedef 1340]
type = A
physics = N
movetype = A
anim = 1340
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1340, Safety]
type = changestate
trigger1 = !time
trigger1 = !numtarget
value = 0
ctrl = 1

[State 1340, Throw]
type = targetstate
trigger1 = !time
trigger1 = numtarget
value = 1345
[State 1340, Throw]
type = targetfacing
trigger1 = time <= 3
value = -1

[State 1340, Width]
type = width
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
edge = ceil(26 * const(size.xscale)), 0
[State 1340, Width]
type = width
trigger1 = animelemtime(6) >= 0
edge = ceil(50 * const(size.xscale)), 0

[State 1340, Bind 1]
type = bindtotarget
trigger1 = numtarget = 1
trigger1 = animelemtime(2) < 0
pos = (24 * const(size.xscale)), 38, Mid

[State 1340, Bind 2]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 12 * const(size.xscale), -36 * const(size.yscale)

[State 1340, Bind 3]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = -10 * const(size.xscale), -54 * const(size.yscale)

[State 1340, Bind 1]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
pos = 4 * const(size.xscale), -74 * const(size.yscale)

[State 1340, Bind 5]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
pos = 24 * const(size.xscale), -38 * const(size.yscale)

[State 1340, Bind 6]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(6) >= 0
pos = 54 * const(size.xscale), -6 * const(size.yscale)


[State 1340, Bind Fix]
type = posset
trigger1 = pos y > 0 && animelemtime(2) < 0
y = 0

[State 1340, Accel]
type = veladd
trigger1 = animelemtime(2) >= 0
y = 0.386946875
[State 1340, Accel]
type = veladd
trigger1 = animelemtime(2) >= 0 && vel x > 0
x = -0.055278125
[State 1340, Vel]
type = velset
trigger1 = vel x < 0
x = 0

[State 1340, Vel]
type = velset
trigger1 = animelem = 2
x = 4.53
y = -5.94

[State 1340, Snd]
type = playsnd
trigger1 = animelem = 1
value = 4, 0
channel = 0

[State 1340, End]
type = changestate
trigger1 = animelemtime(2) >= 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1341


;--- Slam ---
[Statedef 1341]
type = A
physics = N
movetype = A
anim = 1341
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1341, Width]
type = width
trigger1 = animelemtime(2) < 0
edge = ceil(50 * const(size.xscale)), 0
[State 1341, Pos]
type = posset
trigger1 = animelemtime(2) < 0
y = 0

[State 1341, Bind 1]
type = targetbind
trigger1 = animelemtime(2) < 0
pos = 52 * const(size.xscale), 0

[State 1341, Damage]
type = targetlifeadd
trigger1 = numtarget && !time
value = floor(-140 * fvar(10))
kill = 1

;[State 1341, Stun Damage];currently redundant
;type = targetdizzypointsadd
;trigger1 = !time
;trigger1 = numtarget
;value = -ceil(150 * fvar(10)) * !var(20)

[State 1341, Power]
type = targetpoweradd
trigger1 = numtarget && !time
value = 40;givepower

[State 1341, Hit]
type = hitadd
trigger1 = numtarget && !time
value = 1

[State 1341, Juggle]
type = varadd
trigger1 = numtarget && !time
var(15) = 1
ignorehitpause = 1

[State 1341, Throw]
type = targetstate
trigger1 = numtarget && !time
value = 1346

[State 1341, Throw]
type = targetstate
trigger1 = numtarget && animelem = 2
value = 1347

[State 1341, Snd]
type = playsnd
trigger1 = !time
value = 4, 2
channel = 0

[State 1341, Sound]
type = playsnd
trigger1 = numtarget && !time
value = 0, 5100

[State 1341, Shake]
type = envshake
trigger1 = numtarget && !time
time = 12
ampl = 2
freq = 180

[State 1341, Dust]
type = helper
trigger1 = numtarget && !time
helpertype = normal
stateno = 8110
ID = 8110
name = "Impact Dust"
postype = p1
pos = ceil(52 * const(size.xscale)), 0
ownpal = 1

[State 1341, Accel]
type = veladd
trigger1 = animelemtime(2) >= 0
y = 0.41458598
[State 1341, Vel]
type = velset
trigger1 = animelem = 2
x = -2.66
y = -6.59

[State 1341, End]
type = changestate
trigger1 = animelemtime(2) >= 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1342


;--- Land ---
[Statedef 1342]
type = S
physics = N
movetype = I
ctrl = 0
anim = 1342
velset = 0, 0
sprpriority = 2
movehitpersist = 1

[State 1342, Pos]
type = posset
trigger1 = 1
y = 0

[State 1342, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 1342, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1342, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Target ---
[Statedef 1345]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0

[State 1345, Anim]
type = changeanim2
trigger1 = !time
value = 1345

[State 1345, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 1345, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 1346]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 1346, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 1346, Anim]
type = changeanim
trigger1 = 1
value = 5080

[State 1346, Push]
type = playerpush
trigger1 = 1
value = 0
[State 1346, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 1346, End]
type = selfstate
trigger1 = time >= 60
value = 5040


[Statedef 1347]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 1347, Anim]
type = changeanim
trigger1 = !time
value = 5160
[State 1347, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 1347, Accel]
type = veladd
trigger1 = 1
y = 0.4850;yaccel
[State 1347, Vel]
type = velset
trigger1 = !time
x = -5.32
y = -6.91

[State 1347, Stun]
type = selfstate
trigger1 = !time
trigger1 = alive
trigger1 = dizzypoints <= 0
value = const(statedizzyfalldown_air)

[State 1347, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 1347, End]
type = selfstate
trigger1 = vel y > 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 5100


;========================<CANNON STRIKE>=============================
[Statedef 1400]
type = A
physics = N
movetype = A
anim = 1400
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 100 * !var(20)
juggle = 7 * !var(20)

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1400, Strength]
type = varset
trigger1 = !AIlevel
trigger1 = time <= 0
var(10) = ifelse(map(str_c), 2, ifelse(map(str_b), 1, 0))
ignorehitpause = 1
persistent = 0

[State 1400, Strength AI]
type = varset
trigger1 = AIlevel
trigger1 = time <= 0
var(10) = 2
ignorehitpause = 1

[State 1400, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1400, Accel]
type = veladd
trigger1 = animelemtime(4) >= 0 && vel x > 0
x = -0.033166875
[State 1400, Accel]
type = velset
trigger1 = vel x < 0
x = 0
[State 1400, Accel]
type = veladd
trigger1 = animelemtime(4) >= 0
y = 0.6633375

[State 1400, Vel]
type = velset
trigger1 = animelem = 4
x = ifelse(var(10) = 2, 6.65, ifelse(var(10) = 1, 5.49, 4.32))
y = 4

[State 1400, Snd]
type = playsnd
trigger1 = animelem = 3
value = 4, 2
channel = 0
[State 1400, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 5
channel = 1

[State 1400, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 4
ID = 1400
attr = A, SA
hitflag = MAFD
guardflag = HA
priority = 4, Hit
damage = 55, 14
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Back
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12
ground.slidetime = 12
guard.hittime = 12
air.hittime = 120
airguard.ctrltime = 16
down.hittime = 20
ground.velocity = -5.41, 0
ground.cornerpush.veloff = 0
guard.velocity = -5.41
guard.cornerpush.veloff = 0
air.velocity = -4.32, -7.25
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
down.velocity = 0, 0
down.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 36), var(37) := 2
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1400, OTG - Stay Down]
redirectID = target(1400), ID
type = selfstate
trigger1 = movehit = 1
trigger1 = numtarget(1400)
trigger1 = target(1400), pos y >= -24
trigger1 = target(1400), stateno = 5020 || target(1400), stateno = 5070
trigger1 = target(1400), prevstateno = [5100, 5101]
trigger1 = target(1400), alive && target, hitfall
value = 5080
ignorehitpause = 1

[State 1400, OTG - Stay Down]
redirectID = target(1400), ID
type = posset
trigger1 = numtarget(1400)
trigger1 = target(1400), pos y
trigger1 = target(1400), stateno = 5080
y = 0
ignorehitpause = 1

[State 1400, End]
type = changestate
trigger1 = animelemtime(4) >= 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1403


;--- Land ---
[Statedef 1403]
type = S
physics = N
movetype = I
ctrl = 0
anim = 1403
velset = 0, 0
sprpriority = 2
movehitpersist = 1

[State 1403, Pos]
type = posset
trigger1 = 1
y = 0

[State 1403, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 1403, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1403, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;========================<EX CANNON STRIKE>=============================
[Statedef 1420]
type = A
physics = N
movetype = A
anim = 1420
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = -500
juggle = 7 * !var(20)

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1420, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1420, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 1420, ExFX]
type = varset
trigger1 = !time
var(25) = 30
[State 1420, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
[State 1420, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = ceil(14 * const(size.xscale)), ceil(-24 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1420, Accel]
type = veladd
trigger1 = animelemtime(4) >= 0 && vel x > 0
x = -0.033166875
[State 1420, Accel]
type = velset
trigger1 = vel x < 0
x = 0
[State 1420, Accel]
type = veladd
trigger1 = animelemtime(4) >= 0
y = 0.6633375

[State 1420, Vel]
type = velset
trigger1 = animelem = 4
x = 7.81
y = 4

[State 1420, Snd]
type = playsnd
trigger1 = animelem = 3
value = 4, 2
channel = 0

[State 1420, Snd]
type = playsnd
trigger1 = animelem = 3
value = 7, 4
[State 1420, FX]
type = helper
trigger1 = animelem = 3 && !numhelper(1425)
helpertype = normal
stateno = 1425
ID = 1425
name = "EX Strike FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
ownpal = 1

[State 1420, Hit]
type = hitdef
trigger1 = (var(15) < 2 || var(20))
trigger1 = animelem = 4
ID = 1420
attr = A, SA
hitflag = MAFD
guardflag = HA
priority = 4, Hit
damage = 75, 19
dizzypoints = -ceil(150 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Back
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12
ground.slidetime = 12
guard.hittime = 12
air.hittime = 120
airguard.ctrltime = 16
down.hittime = 20
ground.velocity = -4.32, -7.25
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.32, -7.25
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
down.velocity = 0, 0
down.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 36), var(37) := 2
palfx.time = 60
palfx.mul = 128, 128, 128
palfx.sinadd = 96, 96, 96, 4
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1420, OTG - Stay Down]
redirectID = target(1420), ID
type = selfstate
trigger1 = movehit = 1
trigger1 = numtarget(1420)
trigger1 = target(1420), pos y >= -24
trigger1 = target(1420), stateno = 5020 || target(1420), stateno = 5070
trigger1 = target(1420), prevstateno = [5100, 5101]
trigger1 = target(1420), alive && target, hitfall
value = 5080
ignorehitpause = 1

[State 1420, OTG - Stay Down]
redirectID = target(1420), ID
type = posset
trigger1 = numtarget(1420)
trigger1 = target(1420), pos y
trigger1 = target(1420), stateno = 5080
y = 0
ignorehitpause = 1

[State 1420, Flame Particles]
type = helper
trigger1 = !numhelper(8150)
trigger1 = movehit = 1 && numtarget
trigger1 = !(target, hitshakeover)
trigger1 = var(40) := (target, ID)
helpertype = normal
stateno = 8150
ID = 8150
name = "Flame Particles"
postype = p2
ownpal = 1
ignorehitpause = 1

[State 1420, End]
type = changestate
trigger1 = animelemtime(4) >= 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1421


;--- Land ---
[Statedef 1421]
type = S
physics = N
movetype = I
ctrl = 0
anim = 1421
velset = 0, 0
sprpriority = 2
movehitpersist = 1

[State 1421, Pos]
type = posset
trigger1 = 1
y = 0

[State 1421, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 1421, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1421, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;========================<CANNON REVENGE>=============================
;--- High ---
[Statedef 1500]
type = S
physics = S
movetype = I
anim = 1500
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 100 * !var(20)
facep2 = 1

[State 1500, Snd]
type = playsnd
trigger1 = animelem = 1
value = 4, 0
channel = 0
[State 1500, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 0
channel = 1

[State 1500, Reversal]
type = reversaldef
trigger1 = map(parrynowalk) <= 0
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
attr =
reversal.attr = SC, NA
pausetime = 0, 16
sparkno = ifelse(map(mysparks), -1, 40) + 0 * (var(33) := -1)
sparkxy = 20, 0
hitsound = s3, 0
p1stateno = 1505
fall = 1
fall.recover = 1
fall.recovertime = 120
numhits = 0
persistent = 0

[State 1500, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- High Counter ---
[Statedef 1505]
type = S
physics = S
movetype = A
anim = 1505
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1505, Spark]
type = helper
trigger1 = map(mysparks)
trigger1 = !time
trigger1 = numenemy
helpertype = normal
stateno = ifelse((enemynear, hitdefattr = SCA, NA), 8000, 8001)
ID = 8000
name = "Spark"
postype = p1
pos = ceil(25 * const(size.xscale)), ceil(-76 * const(size.yscale))
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1505, Snd]
type = playsnd
trigger1 = animelem = 4 || animelem = 11
value = 1, 2
channel = 1

[State 1505, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 5
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 50, 13
dizzypoints = 0
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 8, 8
guard.pausetime = 8, 8
animtype = Diagup
air.animtype = Diagup
fall.animtype = Diagup
ground.type = High
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = 0, -5.53
ground.cornerpush.veloff = 0
guard.velocity = -5.41
guard.cornerpush.veloff = 0
air.velocity = 0, -5.53
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 78), var(37) := -66
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1505, Hit]
type = hitdef
trigger1 = (var(15) < (1 + hitcount) || var(20))
trigger1 = animelem = 13
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 50, 13
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 8, 8
guard.pausetime = 8, 8
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -8.0, -5.0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -8.0, -5.0
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 90), var(37) := -64
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1505, Anim]
type = changeanim
trigger1 = movecontact = 1 && hitpausetime
trigger1 = anim = 1505 && animelemtime(13) >= 0 && animelemtime(14) <= 0
trigger1 = hitpausetime <= ifelse(var(20), 2, 6)
value = 1505
elem = 14
ignorehitpause = 1

[State 1505, Type]
type = statetypeset
trigger1 = animelemtime(16) >= 0
movetype = I
[State 1505, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Low ---
[Statedef 1510]
type = S
physics = S
movetype = I
anim = 1510
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 100 * !var(20)
facep2 = 1

[State 1510, Snd]
type = playsnd
trigger1 = animelem = 1
value = 4, 0
channel = 0
[State 1510, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 0
channel = 1

[State 1510, Reversal]
type = reversaldef
trigger1 = map(parrynowalk) <= 0
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
attr =
reversal.attr = SC, NA
pausetime = 0, 16
sparkno = ifelse(map(mysparks), -1, 40) + 0 * (var(33) := -1)
sparkxy = 20, 0
hitsound = s3, 0
p1stateno = 1515
fall = 1
fall.recover = 1
fall.recovertime = 120
numhits = 0
persistent = 0

[State 1510, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Low Counter ---
[Statedef 1515]
type = S
physics = S
movetype = A
anim = 1515
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1515, Spark]
type = helper
trigger1 = map(mysparks)
trigger1 = !time
trigger1 = numenemy
helpertype = normal
stateno = ifelse((enemynear, hitdefattr = SCA, NA), 8000, 8001)
ID = 8000
name = "Spark"
postype = p1
pos = ceil(25 * const(size.xscale)), ceil(-18 * const(size.yscale))
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1515, Snd]
type = playsnd
trigger1 = animelem = 3 || animelem = 9
value = 1, 5
channel = 1

[State 1515, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 4
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 35, 9
dizzypoints = 0
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 8, 8
guard.pausetime = 8, 8
animtype = Diagup
air.animtype = Diagup
fall.animtype = Diagup
ground.type = High
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = 1.50, -6
ground.cornerpush.veloff = 0
guard.velocity = -5.41
guard.cornerpush.veloff = 0
air.velocity = 1.50, -6
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 107), var(37) := -13
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1515, Hit]
type = hitdef
trigger1 = (var(15) < (1 + hitcount) || var(20))
trigger1 = animelem = 10
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 35, 9
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 8, 8
guard.pausetime = 8, 8
animtype = Up
air.animtype = Up
fall.animtype = Up
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -1.0, -10.0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -1.0, -10.0
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 52), var(37) := -114
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1515, Juggle]
type = varset
trigger1 = movehit = 1
trigger1 = animelemtime(10) >= 0
var(15) = 0

[State 1515, Anim]
type = changeanim
trigger1 = movecontact = 1 && hitpausetime
trigger1 = anim = 1515 && animelemtime(10) >= 0 && animelemtime(11) <= 0
trigger1 = hitpausetime <= ifelse(var(20), 2, 6)
value = 1515
elem = 11
ignorehitpause = 1

[State 1515, Type]
type = statetypeset
trigger1 = animelemtime(12) >= 0
movetype = I
[State 1515, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;========================<SNIPING ARROW>=============================
[Statedef 1600]
type = S
physics = N
movetype = A
anim = 1600
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 100 * !var(20)
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1600, Strength]
type = varset
trigger1 = !AIlevel
trigger1 = time <= 0
var(10) = ifelse(map(str_c), 2, ifelse(map(str_b), 1, 0))
ignorehitpause = 1
persistent = 0

[State 1600, Strength AI]
type = varset
trigger1 = AIlevel
trigger1 = time <= 0
var(10) = ifelse(map(p2bodydistx) > 240, 2, ifelse(map(p2bodydistx) > 206, 1, 0))
ignorehitpause = 1

[State 1600, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1600, Startup]
type = changeanim
trigger1 = var(10) = 0
trigger1 = animelemtime(2) = -1 || animelemtime(3) = -1 || animelemtime(4) = -1 || animelemtime(5) = -1
trigger2 = var(10) = 1
trigger2 = animelemtime(2) = -1 || animelemtime(4) = -1
value = 1600
elem = animelemno(0) + 1

[State 1600, Snd]
type = playsnd
trigger1 = animelem = 6
value = 0, 41
[State 1600, Dust]
type = helper
trigger1 = animelem = 6
helpertype = normal
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 1600, Pos]
type = posadd
trigger1 = animelem = 5
x = ceil(ifelse((map(p2bodydistx) = [0, 32]), map(p2bodydistx), 32) * const(size.xscale))

[State 1600, Type]
type = statetypeset
trigger1 = animelemtime(6) >= 0
statetype = A
physics = N

[State 1600, Accel]
type = veladd
trigger1 = animelemtime(6) >= 1
x = 0.11055625
y = 0.6633375

[State 1600, Vel]
type = velset
trigger1 = animelemtime(6) = 1
x = ifelse(var(10) = 2, 9.83, ifelse(var(10) = 1, 7.68, 5.54))
y = -5.24

[State 1600, Snd]
type = playsnd
trigger1 = animelem = 5
value = 4, 4
channel = 0

[State 1600, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 6
attr = A, SA
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = ifelse(var(10) = 2, 104, ifelse(var(10) = 1, 97, 90)), ifelse(var(10) = 2, 26, ifelse(var(10) = 1, 24, 23))
dizzypoints = -ceil(150 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Back
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = -5.32, -7.25
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -5.32, -7.25
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 84), var(37) := -61
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1600, End]
type = changestate
trigger1 = animelemtime(6) >= 1
trigger1 = (pos y -8) > -vel y
value = 1603


;--- Land ---
[Statedef 1603]
type = S
physics = N
movetype = I
ctrl = 0
anim = 1603
velset = 0, 0
sprpriority = 2
movehitpersist = 1

[State 1603, Pos]
type = posset
trigger1 = 1
y = 0

[State 1603, Snd]
type = playsnd
trigger1 = animelem = 2
value = 0, 52
[State 1603, Dust]
type = explod
trigger1 = animelem = 2
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1603, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;========================<EX SNIPING ARROW>=============================
[Statedef 1620]
type = S
physics = N
movetype = A
anim = 1620
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = -500
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1620, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1620, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 1620, ExFX]
type = varset
trigger1 = !time
var(25) = 30
[State 1620, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
[State 1620, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = ceil(24 * const(size.xscale)), ceil(-53 * const(size.xscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1620, Dust]
type = helper
trigger1 = animelem = 6
helpertype = normal
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 1620, Pos]
type = posadd
trigger1 = animelem = 5
x = ceil(ifelse((map(p2bodydistx) = [0, 32]), map(p2bodydistx), 32) * const(size.xscale))

[State 1620, Type]
type = statetypeset
trigger1 = animelemtime(6) >= 0
statetype = A
physics = N

[State 1620, Accel]
type = veladd
trigger1 = animelemtime(6) >= 1
x = 0.11055625
y = 0.6633375

[State 1620, Vel]
type = velset
trigger1 = animelemtime(6) = 1
x = 9.83
y = -5.24

[State 1620, Snd]
type = playsnd
trigger1 = animelem = 5
value = 4, 5
channel = 0

[State 1620, Snd]
type = playsnd
trigger1 = animelem = 6
value = 7, 4
[State 1620, FX]
type = helper
trigger1 = animelem = 6 && !numhelper(1025)
helpertype = normal
stateno = 1025
ID = 1025
name = "EX Drill FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
ownpal = 1

[State 1620, Hit]
type = hitdef
trigger1 = var(15) < 1
trigger1 = animelem = 5
attr = S, SA
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = 35, 9
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
getpower = 0, 0
givepower = 40, 40
pausetime = 8, 8
guard.pausetime = 8, 8
animtype = Back
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -5.32, -7.25
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 45), var(37) := -52
palfx.time = 60
palfx.mul = 128, 128, 128
palfx.sinadd = 96, 96, 96, 4
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1620, Hit]
type = hitdef
trigger1 = var(15) < 1
trigger1 = animelem = 6
attr = A, SA
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = 90, 23
dizzypoints = -ceil(150 * fvar(10)) * !var(20)
getpower = 0, 0
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Back
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = -5.32, -10.0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -5.32, -10.0
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 84), var(37) := -61
palfx.time = 60
palfx.mul = 128, 128, 128
palfx.sinadd = 96, 96, 96, 4
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1620, Flame Particles]
type = helper
trigger1 = !numhelper(8150)
trigger1 = animelemtime(6) >= 0
trigger1 = movehit = 1 && numtarget
trigger1 = !(target, hitshakeover)
trigger1 = var(40) := (target, ID)
helpertype = normal
stateno = 8150
ID = 8150
name = "Flame Particles"
postype = p2
ownpal = 1
ignorehitpause = 1

[State 1620, End]
type = changestate
trigger1 = animelemtime(6) >= 1
trigger1 = (pos y -8) > -vel y
value = 1603


;========================<EARTH DIRECT>=============================
[Statedef 1700]
type = S
physics = S
movetype = A
anim = 1700
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 100 * !var(20)
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1700, Strength]
type = varset
trigger1 = !AIlevel
trigger1 = time <= 0
var(10) = ifelse(map(str_z), 2, ifelse(map(str_y), 1, 0))
ignorehitpause = 1
persistent = 0

[State 1700, Strength AI]
type = varset
trigger1 = AIlevel
trigger1 = time <= 0
var(10) = ifelse(map(p2bodydistx) <= 24, 2, ifelse(map(p2bodydistx) <= 28, 1, 0))
ignorehitpause = 1

[State 1700, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1700, Guard Dist]
type = attackdist
trigger1 = 1
value = 0

[State 1700, Hit]
type = hitdef
triggerall = animelem = 3
triggerall = !map(unthrowable) && numenemy
triggerall = p2dist x >= ifelse((facing = enemynear, facing), -(enemynear, const(size.ground.front)), -(enemynear, const(size.ground.back)))
trigger1 = var(10) = 0 && p2dist x >= 0 && map(p2bodydistx) <= 32
trigger2 = var(10) = 1 && p2dist x >= 0 && map(p2bodydistx) <= 28
trigger3 = var(10) = 2 && p2dist x >= 0 && map(p2bodydistx) <= 24
attr = S, ST
hitflag = M
priority = 7, Miss
getpower = 0, 0
givepower = 0, 0
sparkno = -1 + 0 * (var(33) := 0)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 40), var(37) := -50
hitsound = -1 + 0 * (var(31) := 800)
guardsound = -1 + 0 * (var(32) := 0)
fall = 1
fall.recover = 1
fall.xvelocity = -3.325
fall.yvelocity = -3.85
numhits = 0
p1stateno = 1710
p2stateno = 1715

[State 1700, Snd]
type = playsnd
trigger1 = animelem = 4
value = 4, 8
channel = 0
[State 1700, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 0
channel = 1

[State 1700, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
[State 1700, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Throw ---
[Statedef 1710]
type = A
physics = N
movetype = A
anim = 1710
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1710, Safety]
type = changestate
trigger1 = !time
trigger1 = !numtarget
value = 0
ctrl = 1

[State 1710, Throw]
type = targetstate
trigger1 = !time
trigger1 = numtarget
value = 1715

[State 1710, Throw]
type = targetfacing
trigger1 = time <= 3
value = -1

[State 1710, Bind 1]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(2) < 0
pos = 0, 0

[State 1710, Bind 2]
type = targetbind
triggerall = numtarget
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
trigger2 = animelemtime(6) >= 0 && animelemtime(7) < 0
trigger3 = animelemtime(10) >= 0 && animelemtime(11) < 0
pos = 18 * const(size.xscale), -40 * const(size.yscale)

[State 1710, Bind 3]
type = targetbind
triggerall = numtarget
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
trigger2 = animelemtime(7) >= 0 && animelemtime(8) < 0
trigger3 = animelemtime(11) >= 0 && animelemtime(12) < 0
pos = -12 * const(size.xscale), -48 * const(size.yscale)

[State 1710, Bind 4]
type = targetbind
triggerall = numtarget
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
trigger2 = animelemtime(8) >= 0 && animelemtime(9) < 0
trigger3 = animelemtime(12) >= 0 && animelemtime(13) < 0
pos = -24 * const(size.xscale), -21 * const(size.yscale)

[State 1710, Bind 5]
type = targetbind
triggerall = numtarget
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
trigger2 = animelemtime(9) >= 0 && animelemtime(10) < 0
trigger3 = animelemtime(13) >= 0 && animelemtime(14) < 0
pos = 14 * const(size.xscale), -4 * const(size.yscale)

[State 1710, Bind 14]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(14) >= 0
pos = 12 * const(size.xscale), -20 * const(size.yscale)

[State 1710, Accel]
type = veladd
trigger1 = animelemtime(2) >= 0
x = 0
y = 0.88445
[State 1710, Vel]
type = velset
trigger1 = animelem = 2
x = -3.325
y = ifelse(var(10) = 2, -18.52, ifelse(var(10) = 1, -16.09, -15.44))

[State 1710, Snd]
type = playsnd
trigger1 = animelem = 10
value = 4, 6
channel = 0
[State 1710, Snd]
type = playsnd
trigger1 = animelem = 3 || animelem = 7 || animelem = 11
value = 1, 5
channel = 1

[State 1710, Snd]
type = playsnd
trigger1 = animelem = 2
value = 0, 41
[State 1710, Dust]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 1710, End]
type = changestate
trigger1 = animelemtime(2) >= 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1711


;--- Slam ---
[Statedef 1711]
type = A
physics = N
movetype = A
anim = 1711
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1711, Pos]
type = posset
trigger1 = animelemtime(2) < 0
y = 0

[State 1711, Bind 1]
type = targetbind
trigger1 = animelemtime(2) < 0
pos = 0, 0

[State 1711, Damage]
type = targetlifeadd
trigger1 = numtarget && !time
value = floor(fvar(10) * ifelse(var(10) = 2, -160, ifelse(var(10) = 1, -150, -140)))
kill = 1

;[State 1711, Stun Damage];currently redundant
;type = targetdizzypointsadd
;trigger1 = !time
;trigger1 = numtarget
;value = -ceil(150 * fvar(10)) * !var(20)

[State 1711, Power]
type = targetpoweradd
trigger1 = numtarget && !time
value = 40;givepower

[State 1711, Power]
type = poweradd
trigger1 = !time
trigger1 = !var(20)
value = 100;getpower

[State 1711, Hit]
type = hitadd
trigger1 = numtarget && !time
value = 1

[State 1711, Juggle]
type = varadd
trigger1 = numtarget && !time
var(15) = 1
ignorehitpause = 1

[State 1711, Throw]
type = targetstate
trigger1 = numtarget && !time
value = 1716

[State 1711, Throw]
type = targetstate
trigger1 = numtarget && animelem = 2
value = 1717

[State 1711, Sound]
type = playsnd
trigger1 = numtarget && !time
value = 2, 5
channel = 2

[State 1711, Spark]
type = helper
trigger1 = map(mysparks)
trigger1 = numtarget && !time
helpertype = normal
stateno = 8012
ID = 8000
name = "Spark"
postype = p1
pos = ceil(6 * const(size.xscale)), ceil(-8 * const(size.yscale))
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1711, Spark]
type = explod
trigger1 = !map(mysparks)
trigger1 = numtarget && !time
anim = F3
ID = 8000
postype = p1
pos = ceil(6 * const(size.xscale)), ceil(-8 * const(size.yscale))
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 1711, Sound]
type = playsnd
trigger1 = numtarget && !time
value = 0, 5100

[State 1711, Shake]
type = envshake
trigger1 = numtarget && !time
time = 12
ampl = 2
freq = 180

[State 1711, Dust]
type = helper
trigger1 = numtarget && !time
helpertype = normal
stateno = 8110
ID = 8110
name = "Impact Dust"
postype = p1
pos = 0, 0
ownpal = 1

[State 1711, Accel]
type = veladd
trigger1 = animelemtime(2) >= 0
y = 0.34375
[State 1711, Vel]
type = velset
trigger1 = animelem = 2
x = -2.66
y = -6.00

[State 1711, End]
type = changestate
trigger1 = animelemtime(2) >= 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1712


;--- Land ---
[Statedef 1712]
type = S
physics = N
movetype = I
ctrl = 0
anim = 1712
velset = 0, 0
sprpriority = 2
movehitpersist = 1

[State 1712, Pos]
type = posset
trigger1 = 1
y = 0

[State 1712, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 1712, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1712, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Target ---
[Statedef 1715]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0

[State 1715, Anim]
type = changeanim2
trigger1 = !time
value = 1715

[State 1715, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 1715, Pos]
type = posset
trigger1 = !time
y = 0

[State 1715, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 1716]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 1716, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1
[State 1716, Push]
type = playerpush
trigger1 = 1
value = 0

[State 1716, Anim]
type = changeanim
trigger1 = !time
value = 5080
[State 1716, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 1716, End]
type = selfstate
trigger1 = time >= 60
value = 5040


[Statedef 1717]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 1717, Anim]
type = changeanim2
trigger1 = !time
value = 1717
[State 1717, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 1717, Accel]
type = veladd
trigger1 = 1
y = 0.4850;yaccel
[State 1717, Vel]
type = velset
trigger1 = !time
x = -5.32
y = -6.91

[State 1717, Stun]
type = selfstate
trigger1 = !time
trigger1 = alive
trigger1 = dizzypoints <= 0
value = const(statedizzyfalldown_air)

[State 1717, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 1717, End]
type = selfstate
trigger1 = vel y > 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 5100


;========================<EX EARTH DIRECT>=============================
[Statedef 1730]
type = S
physics = S
movetype = A
anim = 1730
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = -500
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1730, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1730, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 1730, ExFX]
type = varset
trigger1 = !time
var(25) = 30
[State 1730, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
[State 1730, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = ceil(16 * const(size.xscale)), ceil(-58 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1730, Guard Dist]
type = attackdist
trigger1 = 1
value = 0

[State 1730, Hit]
type = hitdef
trigger1 = animelem = 3
trigger1 = !map(unthrowable) && numenemy
trigger1 = map(p2bodydistx) <= 32
trigger1 = p2dist x >= ifelse((facing = enemynear, facing), -(enemynear, const(size.ground.front)), -(enemynear, const(size.ground.back)))
attr = S, ST
hitflag = M
priority = 7, Miss
getpower = 0, 0
givepower = 0, 0
sparkno = -1 + 0 * (var(33) := 0)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 40), var(37) := -50
hitsound = -1 + 0 * (var(31) := 800)
guardsound = -1 + 0 * (var(32) := 0)
fall = 1
fall.recover = 1
fall.xvelocity = -3.325
fall.yvelocity = -3.85
numhits = 0
p1stateno = 1740
p2stateno = 1745

[State 1730, Snd]
type = playsnd
trigger1 = animelem = 4
value = 4, 8
channel = 0
[State 1730, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 0
channel = 1

[State 1730, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
[State 1730, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Throw ---
[Statedef 1740]
type = A
physics = N
movetype = A
anim = 1740
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1740, Safety]
type = changestate
trigger1 = !time
trigger1 = !numtarget
value = 0
ctrl = 1

[State 1740, Throw]
type = targetstate
trigger1 = !time
trigger1 = numtarget
value = 1745
[State 1740, Throw]
type = targetfacing
trigger1 = time <= 3
value = -1

[State 1740, Bind 1]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(2) < 0
pos = 0, 0

[State 1740, Bind 2]
type = targetbind
triggerall = numtarget
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
trigger2 = animelemtime(6) >= 0 && animelemtime(7) < 0
trigger3 = animelemtime(10) >= 0 && animelemtime(11) < 0
trigger4 = animelemtime(14) >= 0 && animelemtime(15) < 0
pos = 18 * const(size.xscale), -40 * const(size.yscale)

[State 1740, Bind 3]
type = targetbind
triggerall = numtarget
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
trigger2 = animelemtime(7) >= 0 && animelemtime(8) < 0
trigger3 = animelemtime(11) >= 0 && animelemtime(12) < 0
trigger4 = animelemtime(15) >= 0 && animelemtime(16) < 0
pos = -12 * const(size.xscale), -48 * const(size.yscale)

[State 1740, Bind 4]
type = targetbind
triggerall = numtarget
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
trigger2 = animelemtime(8) >= 0 && animelemtime(9) < 0
trigger3 = animelemtime(12) >= 0 && animelemtime(13) < 0
trigger4 = animelemtime(16) >= 0 && animelemtime(17) < 0
pos = -24 * const(size.xscale), -21 * const(size.yscale)

[State 1740, Bind 5]
type = targetbind
triggerall = numtarget
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
trigger2 = animelemtime(9) >= 0 && animelemtime(10) < 0
trigger3 = animelemtime(13) >= 0 && animelemtime(14) < 0
trigger4 = animelemtime(17) >= 0 && animelemtime(18) < 0
pos = 14 * const(size.xscale), -4 * const(size.yscale)

[State 1740, Bind 18]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(18) >= 0
pos = 12 * const(size.xscale), -20 * const(size.yscale)

[State 1740, Accel]
type = veladd
trigger1 = animelemtime(2) >= 0
x = 0
y = 0.88445
[State 1740, Vel]
type = velset
trigger1 = animelem = 2
x = -3.325
y = -21

[State 1740, Snd]
type = playsnd
trigger1 = animelem = 10
value = 4, 6
channel = 0
[State 1740, Snd]
type = playsnd
trigger1 = animelem = 3 || animelem = 7 || animelem = 11 || animelem = 15
value = 1, 5
channel = 1

[State 1740, Snd]
type = playsnd
trigger1 = animelem = 2
value = 0, 41
[State 1740, Dust]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 1740, End]
type = changestate
trigger1 = animelemtime(2) >= 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1741


;--- Slam ---
[Statedef 1741]
type = A
physics = N
movetype = A
anim = 1741
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1741, Pos]
type = posset
trigger1 = animelemtime(2) < 0
y = 0

[State 1741, Bind 1]
type = targetbind
trigger1 = animelemtime(2) < 0
pos = 0, 0

[State 1741, Damage]
type = targetlifeadd
trigger1 = numtarget
trigger1 = !time
value = floor(fvar(10) * -160)
kill = 1

;[State 1741, Stun Damage];currently redundant
;type = targetdizzypointsadd
;trigger1 = !time
;trigger1 = numtarget
;value = -ceil(200 * fvar(10)) * !var(20)

[State 1741, Power]
type = targetpoweradd
trigger1 = numtarget
trigger1 = !time
value = 40;givepower

[State 1741, Hit]
type = hitadd
trigger1 = numtarget
trigger1 = !time
value = 1

[State 1741, Juggle]
type = varadd
trigger1 = numtarget
trigger1 = time = 0 || time = 8
var(15) = 1
ignorehitpause = 1

[State 1741, Throw]
type = targetstate
trigger1 = numtarget && !time
value = 1716

[State 1741, Throw]
type = targetstate
trigger1 = numtarget && animelem = 2
value = 1717

[State 1741, Sound]
type = playsnd
trigger1 = numtarget
trigger1 = !time
value = 2, 5
channel = 2

[State 1741, Shake]
type = envshake
trigger1 = numtarget
trigger1 = !time
time = 12
ampl = 2
freq = 180

[State 1741, Spark]
type = helper
trigger1 = map(mysparks)
trigger1 = numtarget
trigger1 = !time
helpertype = normal
stateno = 8012
ID = 8000
name = "Spark"
postype = p1
pos = ceil(6 * const(size.xscale)), ceil(-8 * const(size.yscale))
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1741, Spark]
type = explod
trigger1 = !map(mysparks)
trigger1 = numtarget && !time
anim = F3
ID = 8000
postype = p1
pos = ceil(6 * const(size.xscale)), ceil(-8 * const(size.yscale))
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 1741, Sound]
type = playsnd
trigger1 = numtarget && !time
value = 0, 5100

[State 1741, Shake]
type = envshake
trigger1 = numtarget && !time
time = 12
ampl = 2
freq = 180

[State 1741, Dust]
type = helper
trigger1 = numtarget && !time
helpertype = normal
stateno = 8110
ID = 8110
name = "Impact Dust"
postype = p1
pos = 0, 0
ownpal = 1

[State 1741, Accel]
type = veladd
trigger1 = animelemtime(2) >= 0
y = 0.34375
[State 1741, Vel]
type = velset
trigger1 = animelem = 2
x = -2.66
y = -6.00

[State 1741, End]
type = changestate
trigger1 = animelemtime(2) >= 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1712


;--- Target ---
[Statedef 1745]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0
[State 1745, Anim]
type = changeanim2
trigger1 = !time
value = 1745
[State 1745, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0
[State 1745, Pos]
type = posset
trigger1 = !time
y = 0


;========================<PUNCH ZERO COUNTER>=============================
[Statedef 2900]
type = S
physics = N
movetype = A
anim = 2900
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 0

[State 2900, NHB]
type = nothitby
trigger1 = animelemtime(4) < 0
value = SCA
time = 1
ignorehitpause = 1

[State 2900, Snd]
type = playsnd
trigger1 = animelem = 4
value = 4, 1
channel = 0
[State 2900, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 2
channel = 1

[State 2900, Hit]
type = hitdef
trigger1 = animelem = 4
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 50, 13
dizzypoints = 0
getpower = 0, 0
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Diagup
air.animtype = Diagup
fall.animtype = Diagup
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -5.54, -5.25
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -5.54, -5.25
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 70), var(37) := -64
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
kill = 0

[State 2900, Type]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
[State 2900, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;========================<KICK ZERO COUNTER>=============================
[Statedef 2910]
type = S
physics = N
movetype = A
anim = 2910
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 0

[State 2910, NHB]
type = nothitby
trigger1 = animelemtime(3) < 0
value = SCA
time = 1
ignorehitpause = 1

[State 2910, Snd]
type = playsnd
trigger1 = animelem = 3
value = 4, 1
channel = 0
[State 2910, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
channel = 1

[State 2910, Hit]
type = hitdef
trigger1 = animelem = 3
attr = C, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 50, 13
dizzypoints = 0
getpower = 0, 0
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Diagup
air.animtype = Diagup
fall.animtype = Diagup
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -5.54, -5.25
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -5.54, -5.25
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 70), var(37) := -44
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
kill = 0

[State 2910, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
[State 2910, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1
