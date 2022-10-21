; _______________________________________
;| Geese Howard by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SPECIAL MOVES>=======================================
;==============================================================================================

;========================<REPPUKEN>=============================
[Statedef 1000]
type = S
physics = S
movetype = A
anim = 1000
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 50 * !var(20)
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
var(10) = ifelse(map(str_x), 0, 1)
ignorehitpause = 1
persistent = 0

[State 1000, Strength AI]
type = varset
trigger1 = AIlevel
trigger1 = time <= 0
var(10) = ifelse(random < 500, 1, 0)
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
value = ifelse(var(10) = 0, 1001, 1000)

[State 1000, Snd]
type = playsnd
trigger1 = animelem = 1
value = 5, 0
channel = 0
freqmul = 0.98 + (random / 25000.0)

[State 1000, Snd]
type = playsnd
trigger1 = animelem = 4
value = 7, 0

[State 1000, Correct Projectile Trade]
type = hitby
trigger1 = animelem = 4
value2 = SCA, AA, AT
time = 1

[State 1000, Reppuken]
type = helper
trigger1 = animelem = 4
helpertype = normal
stateno = 1005
ID = 1005
name = "Reppuken"
postype = p1
pos = 36, 0; 20
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1000, FX]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = anim + 3
name = "Reppuken FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
ownpal = 1

[State 1000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Double Reppuken ---
[Statedef 1010]
type = S
physics = S
movetype = A
anim = 1010
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 50 * !var(20)
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1010, Strength]
type = varset
trigger1 = !time
var(10) = 2
ignorehitpause = 1

[State 1010, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1010, Snd]
type = playsnd
trigger1 = animelem = 1
value = 5, 1
channel = 0
freqmul = 0.98 + (random / 25000.0)

[State 1010, Snd]
type = playsnd
trigger1 = animelem = 4 || animelem = 9
value = 7, 0
channel = 4

[State 1010, Correct Projectile Trade]
type = hitby
trigger1 = animelem = 4 || animelem = 9
value2 = SCA, AA, AT
time = 1

[State 1010, Reppuken]
type = helper
trigger1 = animelem = 4
helpertype = normal
stateno = 1015
ID = 1015
name = "Double Reppuken"
postype = p1
pos = 64, 0
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1010, Reppuken]
type = helper
triggerall = animelem = 9
trigger1 = numhelper(1015)
trigger1 = helper(1015), stateno = 1015
helpertype = normal
stateno = 1020
ID = 1020
name = "Double Reppuken"
postype = p1
pos = 64, 0
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1010, Reppuken]
type = helper
triggerall = animelem = 9
trigger1 = !numhelper(1015)
trigger2 = numhelper(1015)
trigger2 = helper(1015), stateno != 1015
helpertype = normal
stateno = 1005
ID = 1020
name = "Double Reppuken"
postype = p1
pos = 50, 0
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1010, FX]
type = helper
trigger1 = animelem = 3 || animelem = 8
helpertype = normal
stateno = ifelse((animelem = 8), 1004, 1003)
name = "Reppuken FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
ownpal = 1

[State 1010, Dust]
type = helper
trigger1 = animelem = 4
helpertype = normal
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
pos = 80, 0
facing = -1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 1010, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Fake ---
[Statedef 1090]
type = S
physics = S
movetype = A
anim = 1090
ctrl = 0
velset = 0, 0
sprpriority = 2
facep2 = 1

[State 1090, Snd]
type = playsnd
trigger1 = animelem = 3
value = 4, 6
channel = 0
[State 1090, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
channel = 1

[State 1090, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;========================<EX REPPUKEN>=============================
[Statedef 1030]
type = S
physics = N
movetype = A
anim = 1030
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

[State 1030, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1030, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 1030, ExFX]
type = varset
trigger1 = !time
var(25) = 30
[State 1030, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
[State 1030, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = -4, -126
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1030, Snd]
type = playsnd
trigger1 = animelem = 1
value = 5, 0
channel = 0
[State 1030, Snd]
type = playsnd
trigger1 = animelem = 4
value = 7, 0
channel = 4

[State 1030, Correct Projectile Trade]
type = hitby
trigger1 = animelem = 4
value2 = SCA, AA, AT
time = 1

[State 1030, Reppuken]
type = helper
trigger1 = animelem = 4
helpertype = normal
stateno = 1035
ID = 1035
name = "EX Reppuken"
postype = p1
pos = 38, 0
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1030, FX]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 1003
name = "Reppuken FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
ownpal = 1

[State 1030, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;========================<JAEIKEN>=============================
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
var(10) = ifelse(map(p2bodydistx) > 170, 2, ifelse(map(p2bodydistx) > 140, 1, 0))
ignorehitpause = 1

[State 1100, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1100, Anim]
type = changeanim
trigger1 = !time
value = ifelse(var(10) = 2, 1102, ifelse(var(10) = 1, 1101, 1100))

[State 1100, Snd]
type = playsnd
trigger1 = animelem = 5
value = 7, 1
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

[State 1100, Vel]
type = velset
trigger1 = animelemtime(5) >= 0
x = ifelse(var(10) = 2, 7.8333, ifelse(var(10) = 1, 7.675, 7.4375))
y = 0

[State 1100, Snd]
type = playsnd
trigger1 = animelem = 4
value = 5, 2
channel = 0

[State 1100, FX]
type = helper
trigger1 = animelem = 4
helpertype = normal
stateno = 1105
ID = 1105
name = "Jaeiken FX"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1100, Attack]
type = changestate
trigger1 = animelemtime(5) > 0
trigger1 = map(p2bodydistx) <= 24
value = 1110

[State 1100, End];16 -20 -24
type = changestate
triggerall = animelemtime(5) >= 0
trigger1 = var(10) = 0 && time >= 21
trigger2 = var(10) = 1 && time >= 29
trigger3 = time >= 37
value = 1103


;--- Miss ---
[Statedef 1103]
type = S
physics = N
movetype = I
anim = 1103
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1

[State 1103, Snd]
type = playsnd
trigger1 = !time
value = 0, 103
[State 1103, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1103, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Attack ---
[Statedef 1110]
type = S
physics = N
movetype = A
anim = 1110
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1110, Vel]
type = velset
trigger1 = animelem = 1
x = ifelse(var(10) = 2, 4.31, ifelse(var(10) = 1, 4.01, 3.77))
[State 1110, Vel]
type = velset
trigger1 = animelem = 9
x = 0

[State 1110, Snd]
type = playsnd
trigger1 = animelem = 9
value = 4, 3
channel = 0
[State 1110, Snd]
type = playsnd
trigger1 = animelem = 1 || animelem = 3
value = 1, 2
channel = 1
[State 1110, Snd]
type = playsnd
trigger1 = animelem = 9
value = 7, 3

[State 1110, Hit]
type = hitdef
trigger1 = animelem = 2
trigger1 = var(15) < 1 || var(20)
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ifelse(var(10) = 2, 40, ifelse(var(10) = 1, 35, 30)), ifelse(var(10) = 2, 10, ifelse(var(10) = 1, 9, 8))
dizzypoints = -ceil(ifelse(var(10) = 2, 67, ifelse(var(10) = 1, 50, 34)) * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -4.49, 0
ground.cornerpush.veloff = 0
guard.velocity = -4.49
guard.cornerpush.veloff = 0
air.velocity = -4.31, -7.24
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120;37
forcestand = 1
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 38), var(37) := -64
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1110, Hit]
type = hitdef
trigger1 = animelem = 5
trigger1 = var(15) < 1 || var(20)
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ifelse(var(10) = 2, 40, ifelse(var(10) = 1, 35, 30)), ifelse(var(10) = 2, 10, ifelse(var(10) = 1, 9, 8))
dizzypoints = -ceil(ifelse(var(10) = 2, 67, ifelse(var(10) = 1, 50, 34)) * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -4.49, 0
ground.cornerpush.veloff = 0
guard.velocity = -4.49
guard.cornerpush.veloff = 0
air.velocity = -4.31, -7.24
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120;37
forcestand = 1
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 48), var(37) := -64
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1110, Hit]
type = hitdef
trigger1 = animelem = 9
trigger1 = var(15) < 1 || var(20)
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ifelse(var(10) = 2, 70, ifelse(var(10) = 1, 65, 60)), ifelse(var(10) = 2, 18, ifelse(var(10) = 1, 16, 15))
dizzypoints = -ceil(ifelse(var(10) = 2, 67, ifelse(var(10) = 1, 50, 34)) * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -4.49, -7.24
ground.cornerpush.veloff = 0
guard.velocity = -4.49
guard.cornerpush.veloff = 0
air.velocity = -4.31, -7.24
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120;37
forcestand = 1
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 40), var(37) := -61
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1110, Anim]
type = changeanim
trigger1 = movecontact = 1 && hitpausetime
trigger1 = animelemtime(9) >= 0 && animelemtime(10) <= 0
trigger1 = hitpausetime <= ifelse(var(20), 2, 8)
value = 1110
elem = 10
ignorehitpause = 1

[State 1110, Type]
type = statetypeset
trigger1 = animelemtime(11) >= 0
movetype = I
[State 1110, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;========================<EX JAEIKEN>=============================
[Statedef 1130]
type = S
physics = N
movetype = A
anim = 1130
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

[State 1130, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1130, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 1130, ExFX]
type = varset
trigger1 = !time
var(25) = 30
[State 1130, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
[State 1130, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = -11, -83
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1130, Snd]
type = playsnd
trigger1 = animelem = 5
value = 7, 1
[State 1130, Dust]
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

[State 1130, Vel]
type = velset
trigger1 = 0;animelemtime(5) >= 0
x = 10
y = 0

[State 1140, Vel]
type = velmul
trigger1 = animelemtime(5) >= 0
x = 0.9
[State 1140, Vel]
type = velset
trigger1 = animelem = 5
x = 24

[State 1130, Snd]
type = playsnd
trigger1 = animelem = 4
value = 5, 2
channel = 0

[State 1130, FX]
type = helper
trigger1 = animelem = 4
helpertype = normal
stateno = 1135
ID = 1135
name = "EX Jaeiken FX"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1130, Hit]
type = hitdef
trigger1 = animelem = 4
trigger1 = var(15) < 2
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 20, 5
dizzypoints = -ceil(25 * fvar(10)) * !var(20)
getpower = 0, 0
givepower = 40, 40
pausetime = 4, 4
guard.pausetime = 4, 4
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -4.49, 0
ground.cornerpush.veloff = 0
guard.velocity = -4.49
guard.cornerpush.veloff = 0
air.velocity = -3.12, -4.25
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120;37
forcestand = 1
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 44), var(37) := -58
palfx.time = 60
palfx.mul = 128, 128, 128
palfx.sinadd = 96, 96, 96, 4
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1130, Flame Particles]
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

[State 1130, Attack]
type = changestate
trigger1 = movecontact = 1
value = 1140

[State 1130, End]
type = changestate
trigger1 = time >= 33
value = 1131


;--- Miss ---
[Statedef 1131]
type = S
physics = N
movetype = I
anim = 1103
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1

[State 1131, Snd]
type = playsnd
trigger1 = !time
value = 0, 103
[State 1131, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1131, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Attack ---
[Statedef 1140]
type = S
physics = N
movetype = A
anim = 1140
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1140, Vel]
type = velset
trigger1 = animelem = 1
x = 5
[State 1140, Vel]
type = velset
trigger1 = animelem = 8
x = 0

[State 1140, Snd]
type = playsnd
trigger1 = animelem = 8
value = 7, 3

[State 1140, Hit]
type = hitdef
trigger1 = animelem = 2 || animelem = 4 || animelem = 6
trigger1 = var(15) < 2
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 20, 5
dizzypoints = -ceil(25 * fvar(10)) * !var(20)
getpower = 0, 0
givepower = 40, 40
pausetime = 4, 4
guard.pausetime = 4, 4
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = 0, 0
ground.cornerpush.veloff = 0
guard.velocity = -4.49
guard.cornerpush.veloff = 0
air.velocity = -3.12, -4.25
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120;37
forcestand = 1
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 44), var(37) := -58
palfx.time = 60
palfx.mul = 128, 128, 128
palfx.sinadd = 96, 96, 96, 4
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1140, Hit]
type = hitdef
trigger1 = animelem = 8
trigger1 = var(15) < 3
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
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -8.62, -5.25
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -8.62, -5.25
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 0
forcestand = 1
hitsound = -1 + 0 * (var(31) := 8)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 60), var(37) := -62
palfx.time = 60
palfx.mul = 128, 128, 128
palfx.sinadd = 96, 96, 96, 4
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
ID = 1140

[State 1140, Burned]
type = targetstate
trigger1 = movehit
trigger1 = numtarget(1140)
trigger1 = target, selfanimexist(7697)
trigger1 = (target(1140), stateno = 5000) || (target(1140), stateno = 5010) || (target(1140), stateno = 5020)
value = 7697
ID = 1140
ignorehitpause = 1

[State 1140, Flame Particles]
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

[State 1140, Type]
type = statetypeset
trigger1 = animelemtime(10) >= 0
movetype = I
[State 1140, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;========================<BURNED>=============================
[Statedef 7697]
type = A
physics = N
movetype = H
velset = 0, 0

[State 7697, End]
type = selfstate
trigger1 = !selfanimexist(7697)
value = 5020

[state 7697, Anim]
type = changeanim
trigger1 = !time
trigger1 = gethitvar(animtype) != [3,5]
value = ifelse((gethitvar(airtype) = 1), 5000, 5010) + gethitvar(animtype)

[state 7697, Anim]
type = changeanim
trigger1 = !time
trigger1 = gethitvar(animtype) = [3,5]
value = 5030

[state 7697, Anim]
type = changeanim
trigger1 = !time
trigger1 = (gethitvar(animtype) = [4,5]) && (selfanimexist(5047 + gethitvar(animtype)))
value = 5047 + gethitvar(animtype)

[state 7697, Anim]
type = changeanim
trigger1 = !hitshakeover
value = anim

[State 7697, Anim]
type = changeanim
trigger1 = hitshakeover
trigger1 = anim != 7697
value = 7697

[State 7697, Accel]
type = veladd
trigger1 = hitshakeover
y = gethitvar(yaccel)

[State 7697, Vel]
type = hitvelset
trigger1 = hitshakeover
x = 1
y = 1
persistent = 0

[State 7697, End]
type = selfstate
trigger1 = hitshakeover
trigger1 = vel y > 0
trigger1 = !hitfall
value = 5040

[State 7697, Recover]
type = selfstate
triggerall = vel y > 0
triggerall = pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
triggerall = alive
triggerall = canrecover
trigger1 = command = "recovery"
value = 5200

[State 7697, End]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.air.gethit.groundlevel)
value = 5100


;========================<JOUDAN ATEMI NAGE>=============================
[Statedef 1200]
type = S
physics = S
movetype = I
anim = 1200
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 100 * !var(20)
facep2 = 1

[State 1200, Snd]
type = playsnd
trigger1 = animelem = 1
value = 4, ifelse(random < 500, 0, 1)
channel = 0
[State 1200, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 0
channel = 1

[State 1200, Reversal]
type = reversaldef
trigger1 = map(parrynowalk) <= 0
trigger1 = animelemtime(2) < 0
attr = S, ST
reversal.attr = SCA, SA, HA
pausetime = 0, 0
sparkno = -1 + 0 * (var(33) := -1)
sparkxy = 0, 0
hitsound = s3, 0
p1stateno = 1210
p2stateno = 1213
fall = 1
fall.recover = 1
numhits = 0
persistent = 0

[State 1200, Safety]
type = superpause
trigger1 = !time
time = 0
p2defmul = 1
anim = -1
sound = -1
darken = 0

[State 1200, Reversal]
type = reversaldef
trigger1 = map(parrynowalk) <= 0
trigger1 = animelemtime(2) < 0
trigger1 = p2statetype = A
attr = S, ST
reversal.attr = A, NA, SA, HA
pausetime = 0, 0
sparkno = -1 + 0 * (var(33) := -1)
sparkxy = 0, 0
hitsound = s3, 0
p1stateno = 1210
p2stateno = 1213
fall = 1
fall.recover = 1
numhits = 0
persistent = 0

[State 1200, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Success ---
[Statedef 1210]
type = S
physics = S
movetype = A
anim = 1210
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 100 * !var(20)

[State 1210, Safety]
type = changestate
trigger1 = !time
trigger1 = !numtarget
value = 0
ctrl = 1

[State 1210, Spark]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8020
ID = 8000
name = "Spark"
postype = p1
pos = 32, -116
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1210, Turn]
type = turn
trigger1 = animelem = 2

[State 1210, Throw]
type = targetstate
trigger1 = numtarget
trigger1 = animelem = 2
value = 1215
[State 1210, Throw]
type = targetfacing
trigger1 = numtarget
trigger1 = animelemtime(2) >= 0
value = 1

[State 1210, Width]
type = width
trigger1 = animelemtime(5) >= 0 && animelemtime(7) < 0
edge = 32, 0
[State 1210, Width]
type = width
trigger1 = animelemtime(7) >= 0 && animelemtime(10) < 0
edge = 64, 0

[State 1210, Bind 2]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = -40, 0
[State 1210, Bind 3]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = -36, -124
[State 1210, Bind 4]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
pos = 31, -115
[State 1210, Bind 5]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
pos = 35, -95
[State 1210, Bind 6]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(6) >= 0 && animelemtime(7) < 0
pos = 40, -75
[State 1210, Bind 7]
type = targetbind
trigger1 = numtarget
trigger1 = animelem = 7
pos = 45, 0

[State 1210, Power]
type = targetpoweradd
trigger1 = numtarget && !time
value = 40;givepower

[State 1210, Power]
type = targetpoweradd
trigger1 = numtarget && animelem = 7
value = 40;givepower

[State 1210, Damage]
type = targetlifeadd
trigger1 = numtarget && animelem = 7
value = floor(-130 * fvar(10))

;[State 1210, Stun Damage];currently redundant
;type = targetdizzypointsadd
;trigger1 = numtarget
;trigger1 = animelem = 7
;value = -ceil(200 * fvar(10)) * !var(20)

[State 1210, Hit]
type = hitadd
trigger1 = numtarget && animelem = 7
value = 1

[State 1210, Juggle]
type = varadd
trigger1 = numtarget && animelem = 7
var(15) = 1

[State 1210, Throw]
type = targetstate
trigger1 = numtarget && animelem = 7
value = 1216

[State 1210, Sound]
type = playsnd
trigger1 = animelem = 2
value = 5, 7 + (random % 3)
channel = 0

[State 1210, Sound]
type = playsnd
trigger1 = numtarget && animelem = 7
value = 7, 8

[State 1210, Shake]
type = envshake
trigger1 = numtarget && animelem = 7
time = 12
ampl = 2
freq = 180

[State 1210, Dust]
type = helper
trigger1 = numtarget && animelem = 7
helpertype = normal
stateno = 8110
ID = 8100
name = "Impact Dust"
postype = p1
pos = 45, 0
ownpal = 1

[State 1210, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Target Paused ---
[Statedef 1213]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 3

[State 1213, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 1213, Push]
type = playerpush
trigger1 = 1
value = 0

[State 1213, Freeze]
type = posfreeze
trigger1 = 1
value = 1

[State 1213, Anim]
type = changeanim
trigger1 = 1
value = anim
elem = animelemno(0)

[State 1213, End]
type = selfstate
trigger1 = time >= 24
value = 5040


;--- Target ---
[Statedef 1215]
type = S
movetype = H
physics = N
velset = 0, 0
sprpriority = 1

[State 1215, Anim]
type = changeanim2
trigger1 = !time
value = 1215

[State 1215, Sound]
type = stopsnd
trigger1 = !time
channel = 0

[State 1215, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 1215, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 1216]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 1216, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 1216, Anim]
type = changeanim
trigger1 = !time
value = 5100

[State 1216, End]
type = changestate
trigger1 = time >= 6
value = 1217


[Statedef 1217]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 1217, Pos]
type = posset
trigger1 = !time
y = 0
[State 1217, Accel]
type = veladd
trigger1 = time
y = 0.4850;yaccel
[State 1217, Vel]
type = velset
trigger1 = time = 1
x = 3
y = -8

[State 1217, Anim]
type = changeanim
trigger1 = !time
value = 5050

[State 1217, Stun]
type = selfstate
trigger1 = !time
trigger1 = alive
trigger1 = dizzypoints <= 0
value = const(statedizzyfalldown_air)

[State 1217, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 1217, End]
type = selfstate
trigger1 = time >= 8 && vel y > 0 && pos y >= 25
value = 5110


;========================<CHUUDAN ATEMI NAGE>=============================
[Statedef 1220]
type = S
physics = S
movetype = I
anim = 1220
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 100 * !var(20)
facep2 = 1

[State 1220, Snd]
type = playsnd
trigger1 = animelem = 1
value = 4, ifelse(random < 500, 0, 1)
channel = 0
[State 1220, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 0
channel = 1

[State 1220, Safety]
type = superpause
trigger1 = !time
time = 0
p2defmul = 1
anim = -1
sound = -1
darken = 0

[State 1220, Reversal]
type = reversaldef
trigger1 = map(parrynowalk) <= 0
trigger1 = animelemtime(2) < 0
attr = S, ST
reversal.attr = SC, NA
pausetime = 0, 0
sparkno = -1 + 0 * (var(33) := -1)
sparkxy = 0, 0
hitsound = s3, 0
p1stateno = 1230
p2stateno = 1213
fall = 1
fall.recover = 1
numhits = 0
persistent = 0

[State 1220, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Success ---
[Statedef 1230]
type = S
physics = S
movetype = A
anim = 1230
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 100 * !var(20)

[State 1230, Safety]
type = changestate
trigger1 = !time
trigger1 = !numtarget
value = 0
ctrl = 1

[State 1230, Spark]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8020
ID = 8000
name = "Spark"
postype = p1
pos = 22, -75
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1230, Throw]
type = targetstate
trigger1 = numtarget
trigger1 = animelem = 2
value = 1235
[State 1230, Throw]
type = targetfacing
trigger1 = numtarget
trigger1 = animelemtime(2) >= 0
value = -1

[State 1230, Width]
type = width
trigger1 = animelemtime(5) >= 0 && animelemtime(7) < 0
edge = 32, 0
[State 1230, Width]
type = width
trigger1 = animelemtime(7) >= 0 && animelemtime(10) < 0
edge = 64, 0

[State 1230, Bind 2]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 42, 0
[State 1230, Bind 3]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 22, 0
[State 1230, Bind 4]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
pos = 12, 0
[State 1230, Bind 5]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
pos = 6, 0
[State 1230, Bind 6]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(6) >= 0 && animelemtime(7) < 0
pos = 0, -76
[State 1230, Bind 7]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(7) >= 0 && animelemtime(8) < 0
pos = 56, -160
[State 1230, Bind 8]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(8) >= 0 && animelemtime(9) < 0
pos = 38, -150
[State 1230, Bind 9]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(9) >= 0 && animelemtime(10) < 0
pos = 42, -140
[State 1230, Bind 10]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(10) >= 0 && animelemtime(11) < 0
pos = 56, -122
[State 1230, Bind 11]
type = targetbind
trigger1 = numtarget
trigger1 = animelem = 11
pos = 50, 0

[State 1230, Power]
type = targetpoweradd
trigger1 = numtarget && !time
value = 40;givepower

[State 1230, Power]
type = targetpoweradd
trigger1 = numtarget && animelem = 11
value = 40;givepower

[State 1230, Damage]
type = targetlifeadd
trigger1 = numtarget && animelem = 11
value = floor(-150 * fvar(10))

;[State 1230, Stun Damage];currently redundant
;type = targetdizzypointsadd
;trigger1 = numtarget
;trigger1 = animelem = 11
;value = -ceil(200 * fvar(10)) * !var(20)

[State 1230, Hit]
type = hitadd
trigger1 = numtarget && animelem = 11
value = 1

[State 1230, Juggle]
type = varadd
trigger1 = numtarget && animelem = 11
var(15) = 1

[State 1230, Throw]
type = targetstate
trigger1 = numtarget && animelem = 11
value = 1236

[State 1230, Sound]
type = playsnd
trigger1 = animelem = 2
value = 5, 7 + (random % 3)
channel = 0

[State 1230, Sound]
type = playsnd
trigger1 = numtarget && animelem = 11
value = 7, 8

[State 1230, Shake]
type = envshake
trigger1 = numtarget && animelem = 11
time = 12
ampl = 2
freq = 180

[State 1230, Dust]
type = helper
trigger1 = numtarget && animelem = 11
helpertype = normal
stateno = 8110
ID = 8100
name = "Impact Dust"
postype = p1
pos = 45, 0
ownpal = 1

[State 1230, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Target ---
[Statedef 1235]
type = S
movetype = H
physics = N
velset = 0, 0
sprpriority = 1

[State 1235, Anim]
type = changeanim2
trigger1 = !time
value = 1235

[State 1235, Sound]
type = stopsnd
trigger1 = !time
channel = 0

[State 1235, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 1235, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 1236]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 1236, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 1236, Anim]
type = changeanim
trigger1 = !time
value = 5100

[State 1236, End]
type = changestate
trigger1 = time >= 6
value = 1237


[Statedef 1237]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 1237, Pos]
type = posset
trigger1 = !time
y = 0
[State 1237, Accel]
type = veladd
trigger1 = time
y = 0.4850;yaccel
[State 1237, Vel]
type = velset
trigger1 = time = 1
x = -3
y = -8

[State 1237, Anim]
type = changeanim
trigger1 = !time
value = 5050

[State 1237, Stun]
type = selfstate
trigger1 = !time
trigger1 = alive
trigger1 = dizzypoints <= 0
value = const(statedizzyfalldown_air)

[State 1237, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 1237, End]
type = selfstate
trigger1 = time >= 8 && vel y > 0 && pos y >= 25
value = 5110


;========================<GEDAN ATEMI NAGE>=============================
[Statedef 1240]
type = S
physics = S
movetype = I
anim = 1240
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 100 * !var(20)
facep2 = 1

[State 1240, Snd]
type = playsnd
trigger1 = animelem = 1
value = 4, ifelse(random < 500, 0, 1)
channel = 0
[State 1240, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 0
channel = 1

[State 1240, Safety]
type = superpause
trigger1 = !time
time = 0
p2defmul = 1
anim = -1
sound = -1
darken = 0

[State 1240, Reversal]
type = reversaldef
trigger1 = map(parrynowalk) <= 0
trigger1 = animelemtime(3) < 0
attr = S, ST
reversal.attr = SC, NA
pausetime = 0, 0
sparkno = -1 + 0 * (var(33) := -1)
sparkxy = 0, 0
hitsound = s3, 0
p1stateno = 1250
p2stateno = 1213
fall = 1
fall.recover = 1
numhits = 0
persistent = 0

[State 1240, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Success ---
[Statedef 1250]
type = S
physics = S
movetype = A
anim = 1250
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 100 * !var(20)

[State 1250, Safety]
type = changestate
trigger1 = !time
trigger1 = !numtarget
value = 0
ctrl = 1

[State 1250, Spark]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8020
ID = 8000
name = "Spark"
postype = p1
pos = 26, -33
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1250, Throw]
type = targetstate
trigger1 = numtarget && animelem = 2
value = 1255
[State 1250, Throw]
type = targetstate
trigger1 = numtarget && animelem = 3
value = 1256
[State 1250, Throw]
type = targetfacing
trigger1 = numtarget && animelem = 2
value = -1

[State 1250, Width]
type = width
trigger1 = animelemtime(2) >= 0 && animelemtime(7) < 0
edge = 24, 0
[State 1250, Width]
type = width
trigger1 = animelemtime(7) >= 0 && animelemtime(11) < 0
edge = 48, 0

[State 1250, Pull]
type = targetfacing
trigger1 = numtarget && animelem = 3
value = -1
[State 1250, Pull]
type = targetvelset
trigger1 = numtarget && animelem = 3
x = ((target, pos x - pos x - (22 * facing)) / 19.0) * facing

[State 1250, Bind 2]
type = targetbind
trigger1 = numtarget && animelem = 8
pos = 40, -27

[State 1250, Power]
type = targetpoweradd
trigger1 = numtarget && !time
value = 40;givepower

[State 1250, Power]
type = targetpoweradd
trigger1 = numtarget && animelem = 8
value = 40;givepower

[State 1250, Damage]
type = targetlifeadd
trigger1 = numtarget && animelem = 8
value = floor(-140 * fvar(10))

;[State 1250, Stun Damage];currently redundant
;type = targetdizzypointsadd
;trigger1 = numtarget
;trigger1 = animelem = 8
;value = -ceil(200 * fvar(10)) * !var(20)

[State 1250, Hit]
type = hitadd
trigger1 = numtarget && animelem = 8
value = 1

[State 1250, Juggle]
type = varadd
trigger1 = numtarget && animelem = 8
var(15) = 1

[State 1250, Throw]
type = targetstate
trigger1 = numtarget && animelem = 8
value = 1257

[State 1250, Sound]
type = playsnd
trigger1 = animelem = 2
value = 5, 7 + (random % 3)
channel = 0

[State 1250, Sound]
type = playsnd
trigger1 = numtarget && animelem = 8
value = 2, 2
channel = 2

[State 1250, Shake]
type = envshake
trigger1 = numtarget && animelem = 8
time = 12
ampl = 2
freq = 180

[State 1250, Spark]
type = helper
trigger1 = map(mysparks)
trigger1 = numtarget && animelem = 8
helpertype = normal
stateno = 8013
ID = 8000
name = "Spark"
postype = p1
pos = 22, -58
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1250, Spark]
type = explod
trigger1 = !map(mysparks)
trigger1 = numtarget && animelem = 8
anim = F2
ID = 8000
postype = p1
pos = 22, -58
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 1250, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Target ---
[Statedef 1255]
type = S
movetype = H
physics = N
velset = 0, 0
sprpriority = 1

[State 1255, Anim]
type = changeanim
trigger1 = 1
value = anim
elem = animelemno(0)

[State 1255, Sound]
type = stopsnd
trigger1 = !time
channel = 0

[State 1255, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 1255, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 1256]
type = A
movetype = H
physics = N
sprpriority = 1

[State 1256, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 1256, Push]
type = playerpush
trigger1 = 1
value = 0

[State 1256, Anim]
type = changeanim
trigger1 = !time
value = 5070

[State 1256, Accel]
type = veladd
trigger1 = time
y = 1
[State 1256, Vel]
type = velset
trigger1 = time = 1
y = -10

[State 1256, End]
type = selfstate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 5100


[Statedef 1257]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 3

[State 1257, Push]
type = playerpush
trigger1 = 1
value = 0
[State 1257, Freeze]
type = posfreeze
trigger1 = 1
value = 1

[State 1257, Anim]
type = changeanim
trigger1 = 1
value = 5012

[State 1257, End]
type = changestate
trigger1 = time >= 12
value = 1258


[Statedef 1258]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 1258, Accel]
type = veladd
trigger1 = 1
y = 0.4850;yaccel
[State 1258, Vel]
type = velset
trigger1 = !time
x = -7.54
y = -3

[State 1258, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5035), 5035, 5050)
[State 1258, Anim]
type = changeanim
trigger1 = anim != 5050 && !animtime
value = 5050

[State 1258, Stun]
type = selfstate
trigger1 = !time
trigger1 = alive
trigger1 = dizzypoints <= 0
value = const(statedizzyfalldown_air)

[State 1258, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 1258, End]
type = selfstate
trigger1 = time >= 8 && vel y > 0 && pos y >= 25
value = 5100


;========================<EX ATEMI NAGE>=============================
[Statedef 1260]
type = S
physics = S
movetype = I
anim = 1260
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = -500
facep2 = 1

[State 1160, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1160, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 1260, ExFX]
type = varset
trigger1 = !time
var(25) = 30
[State 1260, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
[State 1260, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = 22, -76
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1260, Snd]
type = playsnd
trigger1 = animelem = 1
value = 4, ifelse(random < 500, 0, 1)
channel = 0
[State 1260, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 0
channel = 1

[State 1260, Safety]
type = superpause
trigger1 = !time
time = 0
p2defmul = 1
anim = -1
sound = -1
darken = 0

[State 1260, Reversal]
type = reversaldef
trigger1 = map(parrynowalk) <= 0
trigger1 = animelemtime(2) < 0
attr = S, ST
reversal.attr = SC, NA, SA, HA
pausetime = 0, 0
sparkno = -1 + 0 * (var(33) := -1)
sparkxy = 0, 0
hitsound = s3, 0
p1stateno = 1270
p2stateno = 1213
fall = 0
numhits = 0
persistent = 0

[State 1260, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Success ---
[Statedef 1270]
type = S
physics = S
movetype = A
anim = 1270
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1270, Safety]
type = changestate
trigger1 = !time
trigger1 = !numtarget
value = 0
ctrl = 1

[State 1270, Spark]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8020
ID = 8000
name = "Spark"
postype = p1
pos = 22, -75
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1270, Turn]
type = turn
trigger1 = animelem = 2

[State 1270, Throw]
type = targetstate
trigger1 = numtarget
trigger1 = animelem = 2
value = 1275
[State 1270, Throw]
type = targetfacing
trigger1 = numtarget
trigger1 = animelemtime(2) >= 0
value = -1

[State 1270, Width]
type = width
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
edge = 32, 0

[State 1270, Bind 2]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = -28, 4
[State 1270, Bind 3]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 0, 8
[State 1270, Bind 4]
type = targetbind
trigger1 = numtarget
trigger1 = animelem = 4
pos = 26, 0

[State 1270, Power]
type = targetpoweradd
trigger1 = numtarget && !time
value = 40;givepower

[State 1270, Power]
type = targetpoweradd
trigger1 = numtarget && animelem = 4
value = 40;givepower

[State 1270, Hit]
type = hitadd
trigger1 = numtarget && animelem = 4
value = 1

[State 1270, Throw]
type = targetstate
trigger1 = numtarget && animelem = 4
value = 1276

[State 1270, Sound]
type = playsnd
trigger1 = animelem = 2
value = 6, 17
channel = 0
[State 1270, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
channel = 1
[State 1270, Sound]
type = playsnd
trigger1 = animelem = 4
value = 0, 101

[State 1270, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Target ---
[Statedef 1275]
type = S
physics = N
movetype = H
velset = 0, 0
sprpriority = 3

[State 1275, Anim]
type = changeanim2
trigger1 = !time
value = 1275

[State 1275, Sound]
type = stopsnd
trigger1 = !time
channel = 0

[State 1275, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 1275, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 1276]
type = S
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 1276, Anim]
type = changeanim
trigger1 = !time
value = 5012
[State 1276, Anim]
type = changeanim
trigger1 = anim = 5012 && !animtime
value = 5017

[State 1276, Pos]
type = posset
trigger1 = 1
y = 0

[State 1276, Vel]
type = velmul
trigger1 = 1
x = 0.85
[State 1276, Vel]
type = velset
trigger1 = !time
x = -8

[State 1276, End]
type = selfstate
trigger1 = time >= 32
value = 0
ctrl = 1


;========================<SHIPPUKEN>=============================
[Statedef 1300]
type = A
physics = N
movetype = A
anim = 1300
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 50 * !var(20)

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
var(10) = ifelse(random < 333, 2, ifelse(random < 500, 1, 0))
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
trigger1 = animelem = 2
value = 5, 3
channel = 0
[State 1300, Snd]
type = playsnd
trigger1 = animelem = 5
value = 7, 3

[State 1300, Correct Projectile Trade]
type = hitby
trigger1 = animelem = 5
value2 = SCA, AA, AT
time = 1

[State 1300, Shippuken]
type = helper
trigger1 = animelem = 5
helpertype = normal
stateno = 1305
ID = 1305
name = "Shippuken"
postype = p1
pos = 71, -42
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1300, FX]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 1304
name = "Shippuken FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
ownpal = 1

[State 1300, Type]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I

[State 1300, Accel]
type = veladd
trigger1 = animelemtime(5) >= 1 && vel x <= -0.0553
x = ifelse(var(10) = 2, 0.0553, ifelse(var(10) = 1, 0.04837, 0.0415))
[State 1300, Accel]
type = veladd
trigger1 = animelemtime(5) >= 1
y = 0.5528
[State 1300, Vel]
type = velset
trigger1 = animelemtime(5) = 1
x = ifelse(var(10) = 2, -3.43, ifelse(var(10) = 1, -2.88, -2.34))
y = ifelse(var(10) = 2, -7.91, ifelse(var(10) = 1, -6.58, -5.25))

[State 1300, End]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1301


;--- Land ---
[Statedef 1301]
type = S
physics = S
movetype = A
anim = 1301
ctrl = 0
velset = 0, 0
sprpriority = 2

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
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1301, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;========================<EX SHIPPUKEN>=============================
[Statedef 1320]
type = A
physics = N
movetype = A
anim = 1320
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

[State 1320, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1320, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 1320, ExFX]
type = varset
trigger1 = !time
var(25) = 30
[State 1320, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
[State 1320, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = 25, -76
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1320, Snd]
type = playsnd
trigger1 = animelem = 2
value = 5, 13
channel = 0
[State 1320, Snd]
type = playsnd
trigger1 = animelem = 3 || animelem = 8
value = 7, 3

[State 1320, Correct Projectile Trade]
type = hitby
trigger1 = animelem = 3 || animelem = 8
value2 = SCA, AA, AT
time = 1

[State 1320, Shippuken]
type = helper
trigger1 = animelem = 3 || animelem = 8
helpertype = normal
stateno = 1325
ID = 1325
name = "EX Shippuken"
postype = p1
pos = ifelse((animelem = 3), 69, 71), ifelse((animelem = 3), -50, -42)
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1320, FX]
type = helper
trigger1 = animelem = 6
helpertype = normal
stateno = 1304
name = "Shippuken FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
ownpal = 1

[State 1320, Type]
type = statetypeset
trigger1 = animelemtime(11) >= 0
movetype = I

[State 1320, Accel]
type = veladd
trigger1 = animelemtime(8) >= 1 && vel x <= -0.0553
x = 0.0553
[State 1320, Accel]
type = veladd
trigger1 = animelemtime(8) >= 1
y = 0.5528
[State 1320, Vel]
type = velset
trigger1 = animelemtime(8) = 1
x = -3.43
y = -7.91

[State 1320, Follow-up]
type = changestate
triggerall = animelemtime(11) >= 0
trigger1 = !AIlevel
trigger1 = map(cmd_root214p)
trigger2 = AIlevel
value = 1321

[State 1320, Follow-up]
type = changestate
trigger1 = animelemtime(11) >= 0
trigger1 = !AIlevel
trigger1 = map(cmd_a) || map(cmd_b) || map(cmd_c) || map(cmd_x) || map(cmd_y) || map(cmd_z)
value = 1322

[State 1320, End]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1301


;--- Repeat ---
[Statedef 1321]
type = A
physics = N
movetype = A
anim = 1320
ctrl = 0
sprpriority = 2

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1321, Snd]
type = playsnd
trigger1 = animelem = 2
value = 5, 3
channel = 0
lowpriority = 1
[State 1321, Snd]
type = playsnd
trigger1 = animelem = 3 || animelem = 8
value = 7, 3

[State 1321, Correct Projectile Trade]
type = hitby
trigger1 = animelem = 3 || animelem = 8
value2 = SCA, AA, AT
time = 1

[State 1321, Shippuken]
type = helper
trigger1 = animelem = 3 || animelem = 8
helpertype = normal
stateno = 1325
ID = 1325
name = "EX Shippuken"
postype = p1
pos = ifelse((animelem = 3), 69, 71), ifelse((animelem = 3), -50, -42)
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1321, FX]
type = helper
trigger1 = animelem = 5
helpertype = normal
stateno = 1304
name = "Shippuken FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
ownpal = 1

[State 1321, Type]
type = statetypeset
trigger1 = animelemtime(11) >= 0
movetype = I

[State 1321, Accel]
type = veladd
trigger1 = vel x <= -0.0553
x = 0.0553
[State 1321, Accel]
type = veladd
trigger1 = 1
y = 0.5528

[State 1321, End]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1323


;----- Kick -----
[Statedef 1322]
type = A
physics = N
movetype = A
anim = 1322
ctrl = 0
sprpriority = 2

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 1322, Snd]
type = playsnd
trigger1 = animelem = 2 && random < 500
value = 4, ifelse(random < 500, 1, 2)
channel = 0
lowpriority = 1
[State 1322, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 5
channel = 1

[State 1322, Hit]
type = hitdef
trigger1 = var(15) < 1 || var(20)
trigger1 = animelem = 3
ID = 200 * !var(20)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = 90, 23
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
getpower = 0, 0
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12
ground.slidetime = 12
guard.hittime = 18
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = -4.49, 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -6.46, -5.25
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
fall.recover = 1
fall.recovertime = 120;28
forcestand = 1
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 77), var(37) := -63

[State 1322, Type]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I

[State 1322, Accel]
type = veladd
trigger1 = 1
y = 0.5528
[State 1322, End]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1323


;--- Land ---
[Statedef 1323]
type = S
physics = S
movetype = A
anim = 1323
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1323, Pos]
type = posset
trigger1 = 1
y = 0

[State 1323, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 1323, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1323, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;========================<HISHOU NICHIRIN ZAN>=============================
[Statedef 1400]
type = S
physics = N
movetype = A
anim = 1400
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
var(10) = ifelse(map(p2bodydistx) > 66, 2, ifelse(map(p2bodydistx) > 48, 1, 0))
ignorehitpause = 1

[State 1400, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1400, Anim]
type = changeanim
trigger1 = !time
value = ifelse(var(10) = 2, 1402, ifelse(var(10) = 1, 1401, 1400))

[State 1400, Snd]
type = playsnd
trigger1 = animelem = 6
value = 0, 40
[State 1400, Dust]
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

[State 1400, Vel]
type = velset
trigger1 = animelem = 2
x = ifelse(anim = 1402, 6, ifelse(anim = 1401, 5, 4))
[State 1400, Vel]
type = velset
trigger1 = animelem = 5
x = 0

[State 1400, Type]
type = statetypeset
trigger1 = animelemtime(6) >= 0
statetype = A
physics = N
[State 1400, Accel]
type = veladd
trigger1 = animelemtime(6) >= 0
y = 0.55
[State 1400, Vel]
type = velset
trigger1 = animelem = 6
x = ifelse(anim = 1402, 4, ifelse(anim = 1401, 3.5, 3))
y = ifelse(anim = 1402, -9, ifelse(anim = 1401, -8, -7))

[State 1400, Snd]
type = playsnd
trigger1 = animelem = 4
value = 4, 1
channel = 0
[State 1400, Snd]
type = playsnd
trigger1 = animelem = 7
value = 4, 2
channel = 0

[State 1400, Snd]
type = playsnd
trigger1 = animelem = 7
value = 7, 3
[State 1400, FX]
type = helper
trigger1 = animelem = 7
helpertype = normal
stateno = 1405
ID = 1405
name = "Zan FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
ownpal = 1

[State 1400, Hit]
type = hitdef
trigger1 = animelem = 5
trigger1 = var(15) < 1 || var(20)
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ifelse(var(10) = 2, 40, ifelse(var(10) = 1, 35, 30)), ifelse(var(10) = 2, 10, ifelse(var(10) = 1, 9, 8))
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
ground.velocity = ifelse(var(10) = 2, -4, ifelse(var(10) = 1, -3.5, -3)), ifelse(var(10) = 2, -8.0, ifelse(var(10) = 1, -7.0, -6.0))
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4, -8
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120;45
forcestand = 1
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 36), var(37) := -62
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1400, Hit]
type = hitdef
trigger1 = animelem = 8
trigger1 = (var(15) < (1 + hitcount) || var(20))
attr = A, SA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = ifelse(var(10) = 2, 90, ifelse(var(10) = 1, 80, 70)), ifelse(var(10) = 2, 23, ifelse(var(10) = 1, 20, 18))
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -6.46, ifelse(var(10) = 2, 4.25, ifelse(var(10) = 1, 1.0, -2.0))
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120;24
forcestand = 1
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 72), var(37) := -48
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1400, Type]
type = statetypeset
trigger1 = animelemtime(9) >= 0
movetype = I
[State 1400, End]
type = changestate
trigger1 = animelemtime(6) > 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1403


;--- Land ---
[Statedef 1403]
type = S
physics = S
movetype = A
anim = 103
ctrl = 0
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


;========================<EX HISHOU NICHIRIN ZAN>=============================
[Statedef 1420]
type = S
physics = N
movetype = A
anim = 1420
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
pos = 15, -70
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1420, Snd]
type = playsnd
trigger1 = animelem = 6
value = 0, 40
[State 1420, Dust]
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

[State 1420, Vel]
type = velset
trigger1 = animelem = 2
x = 8
[State 1420, Vel]
type = velset
trigger1 = animelem = 5
x = 0

[State 1420, Type]
type = statetypeset
trigger1 = animelemtime(6) >= 0
statetype = A
physics = N

[State 1420, Accel]
type = veladd
trigger1 = animelemtime(6) >= 1
y = 0.55

[State 1420, Vel]
type = velset
trigger1 = animelemtime(6) = [0, 1]
x = 4
y = -9

[State 1420, Grounded Frame]
type = posfreeze
trigger1 = animelemtime(6) = 0
value = 1

[State 1420, Snd]
type = playsnd
trigger1 = animelem = 4
value = 4, 1
channel = 0
[State 1420, Snd]
type = playsnd
trigger1 = animelem = 8
value = 4, 2
channel = 0

[State 1420, Snd]
type = playsnd
trigger1 = animelem = 8
value = 7, 3
[State 1420, FX]
type = helper
trigger1 = animelem = 8
helpertype = normal
stateno = 1405
ID = 1405
name = "Zan FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
ownpal = 1

[State 1420, Hit]
type = hitdef
trigger1 = animelem = 5
trigger1 = var(15) < 1
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
ground.velocity = 0, 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4, -8.0
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120;45
forcestand = 1
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 36), var(37) := -62
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1420, Hit]
type = hitdef
trigger1 = animelem = 6
trigger1 = var(15) < 1
attr = A, SA
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
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -4, -8.0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4, -8.0
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120;45
forcestand = 1
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 36), var(37) := -62
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1420, Hit]
type = hitdef
trigger1 = animelem = 9
trigger1 = var(15) < 2
attr = A, SA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = 80, 20
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
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
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -3.5, -5.5
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 0
forcestand = 1
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 72), var(37) := -48
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180

[State 1420, Juggle]
type = varset
trigger1 = movehit = 1
trigger1 = animelemtime(6) >= 0 && animelemtime(7) < 1
var(15) = 0
ignorehitpause = 1

[State 1420, Type]
type = statetypeset
trigger1 = animelemtime(10) >= 0
movetype = I
[State 1420, End]
type = changestate
trigger1 = animelemtime(6) > 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1403


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
trigger1 = animelemtime(3) < 0
value = SCA
time = 1
ignorehitpause = 1

[State 2900, Snd]
type = playsnd
trigger1 = animelem = 2
value = 4, 2
channel = 0
[State 2900, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
channel = 1

[State 2900, Hit]
type = hitdef
trigger1 = animelem = 3
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
fall.recovertime = 120;24
forcestand = 1
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 46), var(37) := -99
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
trigger1 = animelem = 1
value = 4, 2
channel = 0
[State 2910, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 5
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
fall.recovertime = 120;24
forcestand = 1
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 100), var(37) := -29
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
