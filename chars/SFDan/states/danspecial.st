; ______________________________
;| Dan by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;============================================================================================
;=====================================<SPECIAL STATES>=======================================
;============================================================================================

;======================<GADOU KEN>=============================
[Statedef 1000]
type = S
physics = S
movetype = A
anim = 1000
ctrl = 0
velset = 0, 0
poweradd = 50 * !var(20)
sprpriority = 2
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
var(10) = ifelse(random < 250 || p2stateno = 5120, 1, ifelse(random < 333, 2, 3))
ignorehitpause = 1
persistent = 0

[State 1000, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1000, Width]
type = width
trigger1 = animelemtime(4) = -1
value = floor(30 * const(size.xscale))

[State 1000, Correct Projectile Trade]
type = hitby
trigger1 = animelem = 4
value2 = SCA, AA, AT
time = 1

[State 1000, Gadouken]
type = helper
trigger1 = animelem = 4
helpertype = normal
stateno = 1005
ID = 1005
name = "Gadouken"
postype = p1
pos = floor(120 * const(size.xscale)), floor(-124 * const(size.yscale))
size.xscale = 0.667
size.yscale = 0.333
ownpal = 1

[State 1000, Snd]
type = playsnd
trigger1 = animelem = 2
value = 4, 19
channel = 0
freqmul = 0.98 + (random / 25000.0)

[State 1000, Snd]
type = playsnd
trigger1 = animelem = 4
value = 5, 0

[State 1000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================<EX GADOU KEN>=============================
[Statedef 1010]
type = S
physics = S
movetype = A
anim = 1010
ctrl = 0
velset = 0, 0
poweradd = -500
sprpriority = 2
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
pos = ceil(-65 * const(size.xscale)), ceil(-153 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1010, Width]
type = width
trigger1 = animelemtime(4) = -1
value = floor(30 * const(size.xscale))

[State 1010, Correct Projectile Trade]
type = hitby
trigger1 = animelem = 4
value2 = SCA, AA, AT
time = 1

[State 1010, Gadouken]
type = helper
trigger1 = animelem = 4
helpertype = normal
stateno = 1015
ID = 1015
name = "Gadouken"
postype = p1
pos = floor(120 * const(size.xscale)), floor(-126 * const(size.yscale))
size.xscale = 0.75
size.yscale = 0.75
ownpal = 1

[State 1010, Snd]
type = playsnd
trigger1 = animelem = 2
value = 4, 19
channel = 0

[State 1010, Snd]
type = playsnd
trigger1 = animelem = 4
value = 5, 0

[State 1010, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================<KOURYUU KEN>=============================
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

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State 1100, Strength]
type = varset
trigger1 = !AIlevel
trigger1 = time <= 0
var(10) = ifelse(map(str_z), 3, ifelse(map(str_y), 2, 1))
ignorehitpause = 1
persistent = 0

[State 1100, Strength AI]
type = varset
trigger1 = AIlevel
trigger1 = time <= 0
var(10) = ifelse(random < 500, 3, ifelse(random < 666, 2, 1))

[State 1100, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1100, Shiny Kouryuken]
type = varset
trigger1 = !time
var(0) = ifelse(random < 67, 1, 0)

[State 1100, NHB]
type = nothitby
trigger1 = var(0)
trigger1 = anim = 1100 && animelemtime(3) < 0
value = SCA
time = 1
ignorehitpause = 1

[State 1100, Blink]
type = palfx
trigger1 = var(0)
trigger1 = anim = 1100 && animelemtime(3) < -1
add = 255, 255, 255
time = 1
ignorehitpause = 1

[State 1100, Combo]
type = posadd
trigger1 = anim = 1100
trigger1 = animelem = 1 || animelem = 2
trigger1 = prevstateno = [200, 499]
x = ifelse(var(10) = 3, 6, ifelse(var(10) = 2, 2, 0))

[State 1100, Accel]
type = veladd
trigger1 = anim = 1100 && animelemtime(3) >= 1
trigger2 = anim = 1101
y = ifelse(var(10) = 3, 0.533, ifelse(var(10) = 2, 0.500, 0.486))

[State 1100, Vel]
type = velmul
trigger1 = 1
x = 0.9

[State 1100, Vel]
type = velset
trigger1 = anim = 1100
trigger1 = animelemtime(3) = [0, 1]
x = ifelse(var(10) = 3, 6.00, ifelse(var(10) = 2, 4.25, 2.50))
y = ifelse(var(10) = 3, -10.67, ifelse(var(10) = 2, -8.00, -5.60))

[State 1100, Grounded Frame]
type = posfreeze
trigger1 = anim = 1100 && animelemtime(3) = 0
value = 1

[State 1100, Vel]
type = velset
trigger1 = vel y > 0
x = 0

[State 1100, Snd]
type = playsnd
trigger1 = anim = 1100 && animelem = 3
value = 0, ifelse(var(10) = 1, 40, 41)

[State 1100, Dust]
type = helper
trigger1 = anim = 1100 && animelem = 3
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 1100, Snd]
type = playsnd
trigger1 = anim = 1100 && animelem = 2
value = 4, 8
channel = 0

[State 1100, Hit]
type = hitdef
trigger1 = animelem = 2 && anim = 1100
trigger1 = (var(15) < 1 || var(20) || var(0))
attr = S, SA
damage = ifelse(var(10) = 3, 120, ifelse(var(10) = 2, 110, 100)), ifelse(var(10) = 3, 30, ifelse(var(10) = 2, 28, 25))
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
animtype = Back
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 50) * (var(36) := 90), var(37) := -136
hitsound = -1 + 0 * (var(31) := 3)
guardsound = -1
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = ifelse(var(10) = 3, -4, ifelse(var(10) = 2, -3.5, -3)), ifelse(var(10) = 3, -10.0, ifelse(var(10) = 2, -8.0, -6.0))
air.type = Low
air.velocity = ifelse(var(10) = 3, -4, ifelse(var(10) = 2, -3.5, -3)), ifelse(var(10) = 3, -10.0, ifelse(var(10) = 2, -8.0, -6.0))
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
fall = 1
fall.recover = 1
fall.recovertime = 120
fall.animtype = Medium
yaccel = 0.4850
forcestand = 1

[State 1100, Hit 2]
type = hitdef
trigger1 = animelem = 3 && anim = 1100 && !movecontact && !movereversed
trigger1 = var(15) < 1 || var(20)
attr = A, SA
damage = 50, 13
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
animtype = Back
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 77), var(37) := -164
hitsound = -1 + 0 * (var(31) := 3)
guardsound = -1
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = ifelse(var(10) = 3, -4, ifelse(var(10) = 2, -3.5, -3)), ifelse(var(10) = 3, -10.0, ifelse(var(10) = 2, -8.0, -6.0))
air.type = Low
air.velocity = ifelse(var(10) = 3, -4, ifelse(var(10) = 2, -3.5, -3)), ifelse(var(10) = 3, -10.0, ifelse(var(10) = 2, -8.0, -6.0))
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
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

[State 1100, Type]
type = statetypeset
trigger1 = anim = 1100 && animelemtime(3) >= 0
trigger2 = anim = 1101
statetype = A
physics = N

[State 1100, Anim]
type = changeanim
trigger1 = anim = 1100 && animelemtime(3) > 0 && vel y > -3
value = 1101

[State Idle]
type = statetypeset
trigger1 = anim != 1100
movetype = I

[State Land]
type = changestate
trigger1 = statetype = A
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1102


;---Land---
[Statedef 1102]
type = S
physics = S
movetype = I
anim = 1102
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1
hitcountpersist = 1

[State 1102, Pos]
type = posset
trigger1 = 1
y = 0

[State 1102, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 1102, Dust]
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

[State 1102, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================<EX KOURYUU KEN>=============================
[Statedef 1110]
type = S
physics = S
movetype = A
anim = 1100
ctrl = 0
velset = 0, 0
poweradd = -500
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State 1110, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 1110, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1110, ExFX]
type = explod
trigger1 = !time
anim = 7210
sprpriority = 3
postype = p1
pos = ceil(32 * const(size.xscale)), ceil(-98 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1110, Startup]
type = changeanim
trigger1 = anim = 1100
trigger1 = animelemtime(2) = -1
value = 1100
elem = 2

[State 1110, NHB]
type = nothitby
trigger1 = anim = 1100 && animelemtime(3) < 0
value = SCA, AP
time = 1
ignorehitpause = 1

[State 1110, Combo]
type = posadd
trigger1 = anim = 1100
trigger1 = animelem = 1 || animelem = 2
x = 8

[State 1110, Type]
type = veladd
trigger1 = anim = 1100 && animelemtime(3) >= 1
trigger2 = anim = 1101
y = 0.533

[State 1110, Vel]
type = velmul
trigger1 = 1
x = 0.9

[State 1110, Vel]
type = velset
trigger1 = anim = 1100
trigger1 = animelemtime(3) = [0, 1]
x = 7.50
y = -10.67

[State 1110, Grounded Frame]
type = posfreeze
trigger1 = anim = 1100 && animelemtime(3) = 0
value = 1

[State 1110, Vel]
type = velset
trigger1 = vel y > 0
x = 0

[State 1110, Snd]
type = playsnd
trigger1 = anim = 1100 && animelem = 2
value = 1, 3

[State 1110, Snd]
type = playsnd
trigger1 = anim = 1100 && animelem = 3
value = 0, 41

[State 1110, Dust]
type = helper
trigger1 = anim = 1100 && animelem = 3
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 1110, Snd]
type = playsnd
trigger1 = anim = 1100 && animelem = 2
value = 4, 8
channel = 0

[State 1110, Hit]
type = hitdef
trigger1 = animelem = 2 && anim = 1100
trigger1 = var(15) < 2
attr = S, SA
damage = 70, 18
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
animtype = Medium
fall.animtype = Medium
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 50) * (var(36) := 90), var(37) := -136
hitsound = -1 + 0 * (var(31) := 3)
guardsound = -1
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -4, -10
air.type = Low
air.velocity = -4, -10
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
forcestand = 1

[State 1110, Hit 2]
type = hitdef
trigger1 = animelem = 3 && anim = 1100
trigger1 = var(15) < 2
attr = A, SA
damage = 70, 18
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
animtype = Up
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 76), var(37) := -164
hitsound = -1 + 0 * (var(31) := 3)
guardsound = -1
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -4, -10
air.type = Low
air.velocity = -4, -10
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

[State 1110, Type]
type = statetypeset
trigger1 = anim = 1100 && animelemtime(3) >= 0
trigger2 = anim = 1101
statetype = A
physics = N

[State 1110, Anim]
type = changeanim
trigger1 = anim = 1100 && animelemtime(3) > 0 && vel y > -3
value = 1101

[State Idle]
type = statetypeset
trigger1 = anim != 1100
movetype = I


[State Land]
type = changestate
trigger1 = statetype = A
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1102


;======================<EX TAUNT>=============================
[Statedef 1150]
type = S
physics = S
movetype = A
anim = 1150
ctrl = 0
velset = 0, 0
poweradd = -500
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State 1150, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 1150, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1150, ExFX]
type = explod
trigger1 = !time
anim = 7210
sprpriority = 3
postype = p1
pos = ceil(18 * const(size.xscale)), ceil(-88 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1150, NHB]
type = nothitby
trigger1 = animelemtime(4) < 1
value = SCA, AA, AP, AT
time = 1
ignorehitpause = 1

[State 1150, Snd]
type = playsnd
trigger1 = animelem = 4
value = 4, 21
channel = 0

[State 1150, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 3
channel = 1

[State 1150, Tears]
type = explod
trigger1 = !(time % 2)
trigger1 = animelemtime(4) >= 0
trigger1 = animelemtime(12) < 0
anim = 4009
ID = 4009
sprpriority = 2
postype = p1
pos = floor(48 * const(size.xscale)), floor(-180 * const(size.yscale))
vel = -1 -(random / 1000.0), -(random / 1000.0)
accel = 0, 0.1 + (random / 10000.0)
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
scale = 0.05 + (random / 20000.0), 0.05 + (random / 20000.0)
ownpal = 1

[State 1150, Hit]
type = hitdef
trigger1 = animelem = 4
trigger1 = var(15) < 2
attr = C, SA
damage = 100, 25
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
animtype = Hard
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 98), var(37) := -186
hitsound = -1 + 0 * (var(31) := 3)
guardsound = -1
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -10, 0
air.type = Low
air.velocity = -4, -6
ground.cornerpush.veloff = 0
getpower = 0
givepower = 40, 40
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
yaccel = 0.4850

[State 1150, Hit]
type = hitdef
trigger1 = animelem = 4 && map(counterhit)
trigger1 = var(15) < 2
ID = 1150
attr = C, SA
damage = 100, 25
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
animtype = Up
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 4, 4
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 98), var(37) := -186
hitsound = -1 + 0 * (var(31) := 3)
guardsound = -1
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -0.5, -15.0
air.type = Low
air.velocity = -0.5, -15.0
getpower = 0
givepower = 40, 40
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.4850
forcestand = 1

[State 1150, P2 State]
type = targetstate
trigger1 = movehit = 1 && numtarget(1150)
trigger1 = (target(1150), stateno = 5000) || (target(1150), stateno = 5010) || (target(1150), stateno = 5020)
value = 1111150
ID = 1150
ignorehitpause = 1

[State 1150, Juggle Reset]
type = varset
trigger1 = movehit = 1
trigger1 = numtarget(1150)
trigger1 = target(1150), stateno = 1111150
var(15) = 0
ignorehitpause = 1

[State 1150, Snd]
type = playsnd
trigger1 = movehit && numtarget(1150)
value = 5, 9
ignorehitpause = 1
persistent = 0

[State Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I

[State 1150, Anim]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Target ---
[Statedef 1111150]
type = A
movetype = H
physics = N
velset = 0, 0
anim = 5030

[State 1111150, Anim]
type = changeanim2
trigger1 = !time
value = 1111150

[State 1111150, Vel]
type = hitvelset
trigger1 = !time
x = 1
y = 1

[State 1111150, Accel]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[State 1111150, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 1111150, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 1111150, End]
type = selfstate
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundlevel)
value = 5100

[State 1111150, Offset]
type = offset
trigger1 = 1
y = const(size.mid.pos.y)


;======================<DANKUU KYAKU>=============================
[Statedef 1200]
type = S
physics = S
movetype = A
anim = 1200
ctrl = 0
velset = 0, 0
poweradd = 100 * !var(20)
sprpriority = 2
facep2 = 1

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
var(10) = ifelse(random < 500, 3, ifelse(random < 666, 2, 1))

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
trigger1 = !time
value = 1199 + var(10)

[State 1200, Accel]
type = veladd
trigger1 = animelemtime(3) >= 1
y = ifelse(var(10) = 3, 0.178, ifelse(var(10) = 2, 0.461, 0.717))

[State 1200, Vel]
type = velset
trigger1 = animelemtime(3) = 1
x = ifelse(var(10) = 3, 4.90, ifelse(var(10) = 2, 4.72, 4.132))
y = ifelse(var(10) = 3, -3.83, ifelse(var(10) = 2, -6.00, -8.61))

[State 1200, Type]
type = statetypeset
triggerall = animelemtime(2) >= 0
trigger1 = anim = 1200 && animelemtime(5) < 0
trigger2 = anim = 1201 && animelemtime(9) < 0
trigger3 = anim = 1202 && animelemtime(13) < 0
statetype = A
physics = N

[State 1200, Snd]
type = playsnd
trigger1 = animelem = 2
value = 0, 40

[State 1200, Dust]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 7104
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 1200, Snd]
type = playsnd
trigger1 = animelem = 4 || animelem = 7
value = 3, 0
channel = 0

[State 1200, Snd]
type = playsnd
trigger1 = animelem = 11
value = 3, 2
channel = 0

[State 1200, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 6
channel = 1
freqmul = ifelse((anim = 1202), 1.2, ifelse((anim = 1201), 1.1, 1.0))

[State 1200, Snd]
type = playsnd
trigger1 = animelem = 7
value = 1, 6
channel = 1
freqmul = ifelse((anim = 1202), 1.1, 1.0)

[State 1200, Snd]
type = playsnd
trigger1 = animelem = 11
value = 1, 6
channel = 1

[State 1200, Hit]
type = hitdef
trigger1 = (anim = [1201, 1202]) && animelem = 4
trigger1 = (var(15) < var(10) || var(20))
trigger2 = anim = 1202 && animelem = 7
trigger2 = (var(15) < var(10) || var(20))
attr = A, SA
damage = ifelse(var(10) = 3, 46, 55), ifelse(var(10) = 3, 12, 14)
dizzypoints = -ceil(ifelse(var(10) = 3, 67, ifelse(var(10) = 2, 75, 100)) * fvar(10)) * !var(20)
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 128), var(37) := ifelse((animelem = 4), -130, -98)
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -10, 0
air.type = Low
air.velocity = -4.17, -5.0
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
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

[State 1200, Hit Kockdown]
type = hitdef
trigger1 = anim = 1200 && animelem = 4
trigger1 = (var(15) < var(10) || var(20))
trigger2 = anim = 1201 && animelem = 7
trigger2 = (var(15) < var(10) || var(20))
trigger3 = anim = 1202 && animelem = 11
trigger3 = (var(15) < var(10) || var(20))
attr = A, SA
damage = ifelse(var(10) = 1, 90, 50), ifelse(var(10) = 1, 23, 13)
dizzypoints = -ceil(ifelse(var(10) = 3, 67, ifelse(var(10) = 2, 75, 100)) * fvar(10)) * !var(20)
animtype = Back
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 128), var(37) := ifelse((animelem = 4), -130, ifelse((animelem = 7), -98, -108))
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -4.17, -5.0
air.type = Low
air.velocity = -4.17, -5.0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
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

[State 1200, Type]
type = statetypeset
trigger1 = anim = 1200 && animelemtime(5) >= 0
trigger2 = anim = 1201 && animelemtime(9) >= 0
trigger3 = anim = 1202 && animelemtime(13) >= 0
statetype = A
physics = N
movetype = I

[State Land]
type = changestate
trigger1 = statetype = A
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1203


;---Land---
[Statedef 1203]
type = S
physics = S
movetype = I
anim = 1203
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1
hitcountpersist = 1

[State 1203, Pos]
type = posset
trigger1 = 1
y = 0

[State 1203, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 1203, Dust]
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

[State 1203, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================<EX DANKUU KYAKU>=============================
[Statedef 1210]
type = S
physics = S
movetype = A
anim = 1210
ctrl = 0
velset = 0, 0
poweradd = -500
facep2 = 1

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
pos = ceil(0 * const(size.xscale)), ceil(-116 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1210, Vel]
type = velset
trigger1 = animelem = 3
x = 5
y = -3
[State 1210, Type]
type = statetypeset
trigger1 = animelemtime(2) >= 0 && animelemtime(20) < 0
statetype = A
physics = N
[State 1210, Accel]
type = veladd
trigger1 = animelemtime(3) >= 0 && animelemtime(20) < 0
y = 0.1

[State 1210, Type]
type = statetypeset
trigger1 = animelemtime(20) >= 0
statetype = A
physics = N
[State 1210, Type]
type = veladd
trigger1 = animelemtime(20) >= 0
y = 0.5

[State 1210, Snd]
type = playsnd
trigger1 = animelem = 3
value = 0, 40
[State 1210, Dust]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 7104
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 1210, Snd]
type = playsnd
trigger1 = animelem = 4 || animelem = 11
value = 3, 8
channel = 0

[State 1210, Snd]
type = playsnd
trigger1 = animelem = 7 || animelem = 14
value = 3, 0
channel = 0

[State 1210, Snd]
type = playsnd
trigger1 = animelem = 18
value = 3, 2
channel = 0

[State 1210, Snd]
type = playsnd
trigger1 = animelem = 4 || animelem = 7 || animelem = 11 || animelem = 14 || animelem = 18
value = 1, 6
channel = 1
freqmul = ifelse((animelem = 18), 1.00, ifelse((animelem = 14), 1.05, ifelse((animelem = 11), 1.10, ifelse((animelem = 7), 1.15, 1.20))))

[State 1210, Hit]
type = hitdef
trigger1 = animelem = 4 || animelem = 7 || animelem = 11 || animelem = 14
trigger1 = var(15) < (2 + hitcount)
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
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 128), var(37) := ifelse((animelem = 4 || animelem = 11), -130, -98)
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -10, 0
air.type = Low
air.velocity = -4.17, -6.0
getpower = 0
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
airguard.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00

[State 1210, Hit]
type = hitdef
trigger1 = animelem = 18
trigger1 = var(15) < (2 + hitcount)
attr = A, SA
damage = 30, 8
dizzypoints = -ceil(40 * fvar(10)) * !var(20)
animtype = Back
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 128), var(37) := -108
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -4.17, -6.0
air.type = Low
air.velocity = -4.17, -6.0
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

[State Idle]
type = statetypeset
trigger1 = animelemtime(19) >= 0
movetype = I

[State 1210, End]
type = changestate
trigger1 = statetype = A
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1203


;======================<AIR DANKUU KYAKU>=============================
[Statedef 1250]
type = A
physics = N
movetype = A
anim = 1200
ctrl = 0
poweradd = 100 * !var(20)
sprpriority = 2

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State 1250, Strength]
type = varset
trigger1 = !AIlevel
trigger1 = time <= 0
var(10) = ifelse(map(str_c), 3, ifelse(map(str_b), 2, 1))
ignorehitpause = 1
persistent = 0

[State 1250, Strength AI]
type = varset
trigger1 = AIlevel
trigger1 = time <= 0
var(10) = ifelse(random < 500, 3, ifelse(random < 666, 2, 1))

[State 1250, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1250, Anim]
type = changeanim
trigger1 = !time
value = ifelse(var(10) = 3, 1202, ifelse(var(10) = 2, 1201, 1200))
elem = 2

[State 1250, Accel]
type = veladd
trigger1 = !time
trigger1 = prevstateno != 1250 && prevstateno != 1260
x = ifelse(var(10) = 3, 2, ifelse(var(10) = 2, 1.5, 1))

[State 1250, Vel]
type = velset
trigger1 = !time
y = -3.5

[State 1250, Accel]
type = veladd
trigger1 = anim != 41
y = ifelse(var(10) = 3, 0.195, ifelse(var(10) = 2, 0.347, 0.617))

[State 1250, Snd]
type = playsnd
trigger1 = (anim = [1200, 1202]) && (animelem = 4 || animelem = 7)
value = 3, 0
channel = 0

[State 1250, Snd]
type = playsnd
trigger1 = (anim = [1200, 1202]) && animelem = 11
value = 3, 2
channel = 0

[State 1250, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 6
channel = 1
freqmul = ifelse((anim = 1202), 1.2, ifelse((anim = 1201), 1.1, 1.0))

[State 1250, Snd]
type = playsnd
trigger1 = animelem = 7
value = 1, 6
channel = 1
freqmul = ifelse((anim = 1202), 1.1, 1.0)

[State 1250, Snd]
type = playsnd
trigger1 = animelem = 11
value = 1, 6
channel = 1

[State 1250, Hit]
type = hitdef
trigger1 = (anim = [1201, 1202]) && animelem = 4
trigger1 = (var(15) < var(10) || var(20))
trigger2 = anim = 1202 && animelem = 7
trigger2 = (var(15) < var(10) || var(20))
attr = A, SA
damage = ifelse(var(10) = 3, 46, 55), ifelse(var(10) = 3, 12, 14)
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 128), var(37) := ifelse((animelem = 4), -130, -98)
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -10, 0
air.type = Low
air.velocity = -4.17, -4.0
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
air.fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.4850
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
forcestand = 1
airguard.cornerpush.veloff = 0

[State 1250, Hit Knockdown]
type = hitdef
trigger1 = anim = 1200 && animelem = 4
trigger1 = (var(15) < var(10) || var(20))
trigger2 = anim = 1201 && animelem = 7
trigger2 = (var(15) < var(10) || var(20))
trigger3 = anim = 1202 && animelem = 11
trigger3 = (var(15) < var(10) || var(20))
attr = A, SA
damage = ifelse(var(10) = 1, 90, 50), ifelse(var(10) = 1, 23, 13)
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
animtype = Back
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 128), var(37) := ifelse((animelem = 4), -130, ifelse((animelem = 7), -98, -108))
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -4.17, -5.0
air.type = Low
air.velocity = -4.17, -5.0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
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

[State 1250, End]
type = changeanim
trigger1 = anim = 1200 && animelemtime(5) >= 5
trigger2 = anim = 1201 && animelemtime(9) >= 5
trigger3 = anim = 1202 && animelemtime(13) >= 5
value = 41
elem = 6

[State 1250, Type]
type = statetypeset
trigger1 = anim = 41
physics = N
[State 1250, Type]
type = veladd
trigger1 = anim = 41
y = 0.5

[State Idle]
type = statetypeset
trigger1 = anim = 1200 && animelemtime(5) >= 0
trigger2 = anim = 1201 && animelemtime(8) >= 0
trigger3 = anim = 1202 && animelemtime(12) >= 0
trigger4 = anim = 41
movetype = I

[State 1250, End]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1253



;---Land---
[Statedef 1253]
type = S
physics = S
movetype = I
anim = 1253
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1
hitcountpersist = 1

[State 1253, Pos]
type = posset
trigger1 = 1
y = 0

[State 1253, Snd]
type = playsnd
trigger1 = !time
value = 0, 52

[State 1253, Dust]
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

[State 1253, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================<EX KUUCHUU DANKUU KYAKU>=============================
[Statedef 1260]
type = A
physics = N
movetype = A
anim = 1210
ctrl = 0
poweradd = -500

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State 1260, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 1260, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1260, ExFX]
type = explod
trigger1 = !time
anim = 7210
sprpriority = 3
postype = p1
pos = ceil(0 * const(size.xscale)), ceil(-116 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1260, Anim]
type = changeanim
trigger1 = !time
value = 1210
elem = 2

[State 1260, Vel]
type = velset
trigger1 = !time
x = ifelse(vel x > 0, 6, ifelse(vel x < 0, -4.5, 3))
y = -4.5
[State 1260, Accel]
type = veladd
trigger1 = anim != 41
y = 0.167

[State 1260, Snd]
type = playsnd
trigger1 = anim = 1210
trigger1 = animelem = 4 || animelem = 11
value = 3, 8
channel = 0

[State 1260, Snd]
type = playsnd
trigger1 = anim = 1210
trigger1 = animelem = 7 || animelem = 14
value = 3, 0
channel = 0

[State 1260, Snd]
type = playsnd
trigger1 = anim = 1210
trigger1 = animelem = 18
value = 3, 2
channel = 0

[State 1260, Snd]
type = playsnd
trigger1 = animelem = 4 || animelem = 7 || animelem = 11 || animelem = 14 || animelem = 18
value = 1, 6
channel = 1
freqmul = ifelse((animelem = 18), 1.00, ifelse((animelem = 14), 1.05, ifelse((animelem = 11), 1.10, ifelse((animelem = 7), 1.15, 1.20))))

[State 1260, Hit]
type = hitdef
trigger1 = anim = 1210
trigger1 = (animelem = 4 || animelem = 11 || animelem = 7 || animelem = 14)
trigger1 = var(15) < 5
attr = A, SA
damage = 30, 8
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 6, 6
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 128), var(37) := ifelse((animelem = 4 || animelem = 7), -130, -98)
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -10, 0
air.type = Low
air.velocity = -4.17, -2.5 + vel y
getpower = 0
givepower = 40, 40
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
air.fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.4850
airguard.ctrltime = 16
airguard.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
forcestand = 1

[State 1260, Hit]
type = hitdef
trigger1 = anim = 1210
trigger1 = animelem = 18
trigger1 = var(15) < 5
attr = A, SA
damage = 30, 8
dizzypoints = -ceil(50 * fvar(10)) * !var(20)
animtype = Back
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 128), var(37) := -108
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -4.17, -5.0
air.type = Low
air.velocity = -4.17, -5.0
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

[State 1260, End]
type = changeanim
trigger1 = anim = 1210
trigger1 = animelemtime(20) >= 5
value = 41
elem = 6

[State 1260, Type]
type = statetypeset
trigger1 = anim = 41
physics = N
[State 1260, Type]
type = veladd
trigger1 = anim = 41
y = 0.5

[State Idle]
type = statetypeset
trigger1 = anim = 1210
trigger1 = animelemtime(19) >= 0
trigger2 = anim = 41
movetype = I

[State 1260, End]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1253


;======================<PREMIUM SIGN>=============================
[Statedef 1300]
type = S
physics = S
movetype = A
anim = 1300
ctrl = 0
velset = 0, 0
poweradd = 100 * !var(20)
sprpriority = 2
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State 1300, Strength]
type = varset
trigger1 = !AIlevel
trigger1 = time <= 0
var(10) = ifelse(map(str_c), 3, ifelse(map(str_b), 2, 1))
ignorehitpause = 1
persistent = 0

[State 1300, Strength AI]
type = varset
trigger1 = AIlevel
trigger1 = time <= 0
var(10) = ifelse((p2movetype = H || random < 500), 1, ifelse(random < 500, 2, 3))

[State 1300, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1300, Anim]
type = changeanim
trigger1 = !time
value = 1299 + var(10)

[State 1300, Width]
type = width
trigger1 = anim = 1300 && animelemtime(11) = -1
trigger2 = anim = 1301 && animelemtime(17) = -1
trigger3 = anim = 1302 && animelemtime(25) = -1
value = floor(40 * const(size.xscale))

[State 1300, Hit]
type = hitdef
trigger1 = anim = 1300 && animelem = 6
trigger1 = (var(15) < 2 || var(20))
trigger2 = anim = 1301 && animelem = 12
trigger2 = (var(15) < 4 || var(20))
trigger3 = anim = 1302 && animelem = 20
trigger3 = (var(15) < 6 || var(20))
attr = S, SA
damage = 30, 8
dizzypoints = -ceil(100 * fvar(10)) * !var(20)
animtype = Medium
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 117), var(37) := -170
hitsound = -1 + 0 * (var(31) := 1)
guardsound = -1
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -10.52, 0
air.type = Low
air.velocity = -6, -6
forcenofall = 1
ground.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
yaccel = 0.4850
forcestand = 1

[State 1300, Correct Projectile Trade]
type = hitby
trigger1 = anim = 1300 && animelem = 11
trigger2 = anim = 1301 && animelem = 17
trigger3 = anim = 1302 && animelem = 25
value2 = SCA, AA, AT
time = 1

[State 1300, autograph]
type = helper
trigger1 = anim = 1300 && animelem = 11
trigger2 = anim = 1301 && animelem = 17
trigger3 = anim = 1302 && animelem = 25
helpertype = normal
stateno = 1305
ID = 1305
name = "Autograph"
postype = p1
pos = floor(120 * const(size.xscale)), floor(-132 * const(size.yscale))
size.xscale = 1
size.yscale = 1
size.height = numhelper(1305)
ownpal = 1

[State 1300, Snd]
type = playsnd
trigger1 = (anim = [1300, 1302]) && animelem = 3
value = 5, 12
channel = 0

[State 1300, Snd]
type = playsnd
trigger1 = anim = 1300 && animelem = 6
trigger2 = anim = 1301 && animelem = 12
trigger3 = anim = 1302 && animelem = 20
value = 4, 30
channel = 0

[State 1300, Snd]
type = playsnd
trigger1 = anim = 1300 && animelem = 11
trigger2 = anim = 1301 && animelem = 17
trigger3 = anim = 1302 && animelem = 25
value = 4, 31
channel = 0

[State 1300, Snd]
type = playsnd
trigger1 = anim = 1300 && animelem = 11
trigger2 = anim = 1301 && animelem = 17
trigger3 = anim = 1302 && animelem = 25
value = 1, 2
channel = 1

[State 1300, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================<SAIKYOU-RYUU BOUGYO>=============================
;--- STANDING ---
[Statedef 1500]
type = S
physics = S
movetype = I
anim = 1500
velset = 0, 0
ctrl = 0
facep2 = 1
sprpriority = 2

[State 1500, Strength]
type = varset
trigger1 = var(10) != 2
var(10) = 2

[State 1500, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1500, NHB]
type = nothitby
trigger1 = animelemtime(3) < 0
time = 1
value = SCA

[State 1500, Snd]
type = playsnd
trigger1 = !time
value = 3, 5
channel = 0

[State 1500, Pusher]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 1505
ID = 1505
name = "Pusher"
postype = p1
size.xscale = 1
size.yscale = 1
size.ground.back = 20
size.ground.front = 20
size.height = 240
ownpal = 1

[State 1500, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- CROUCHING ---
[Statedef 1501]
type = C
physics = C
movetype = I
anim = 1501
velset = 0, 0
ctrl = 0
facep2 = 1
sprpriority = 2

[State 1500, Strength]
type = varset
trigger1 = var(10) != 2
var(10) = 2

[State 1500, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1501, NHB]
type = nothitby
trigger1 = animelemtime(3) < 0
time = 1
value = SCA

[State 1501, Snd]
type = playsnd
trigger1 = !time
value = 3, 5
channel = 0

[State 1501, Pusher]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 1505
ID = 1505
name = "Pusher"
postype = p1
size.xscale = 1
size.yscale = 1
size.ground.back = 20
size.ground.front = 20
size.height = 240
ownpal = 1

[State 1501, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;--- AERIAL ---
[Statedef 1502]
type = A
physics = N
movetype = I
anim = 1502
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 2

[State 1500, Strength]
type = varset
trigger1 = var(10) != 2
var(10) = 2

[State 1502, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1502, NHB]
type = nothitby
trigger1 = animelemtime(3) < 0
time = 1
value = SCA

[State 1502, Stop]
type = posfreeze
trigger1 = animelemtime(3) < 0
value = 1

[State 1502, Snd]
type = playsnd
trigger1 = !time
value = 3, 5
channel = 0

[State 1502, Pusher]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 1505
ID = 1505
name = "Pusher"
postype = p1
pos = 0, floor(-158 * const(size.yscale))
size.xscale = 1
size.yscale = 1
size.ground.back = 20
size.ground.front = 20
size.height = 240
ownpal = 1

[State 1502, Accel]
type = veladd
trigger1 = animelemtime(3) >= 0
y = 0.5

[State 1502, Vel]
type = velset
trigger1 = animelem = 3
x = 0
y = -2

[State Land]
type = changestate
trigger1 = statetype = A
trigger1 = vel y > 0 && (pos y > -vel y)
value = 52


;======================<EX SAIKYOU-RYUU BOUGYO>=============================
;--- STANDING ---
[Statedef 1510]
type = S
physics = S
movetype = I
anim = 1500
velset = 0, 0
ctrl = 0
facep2 = 1
poweradd = -500
sprpriority = 2

[State 1510, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 1510, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1510, ExFX]
type = explod
trigger1 = !time
anim = 7210
sprpriority = 3
postype = p1
pos = ceil(-4 * const(size.xscale)), ceil(-136 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1510, NHB]
type = nothitby
trigger1 = animelemtime(3) < 0
time = 1
value = SCA

[State 1510, Snd]
type = playsnd
trigger1 = !time
value = 3, 5
channel = 0

[State 1510, Pusher]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 1505
ID = 1505
name = "Pusher"
postype = p1
size.xscale = 1
size.yscale = 1
size.ground.back = 20
size.ground.front = 20
size.height = 240
ownpal = 1
[State 1510, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- CROUCHING ---
[Statedef 1511]
type = C
physics = C
movetype = I
anim = 1501
velset = 0, 0
ctrl = 0
facep2 = 1
poweradd = -500
sprpriority = 2

[State 1511, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 1511, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1511, ExFX]
type = explod
trigger1 = !time
anim = 7210
sprpriority = 3
postype = p1
pos = ceil(-2 * const(size.xscale)), ceil(-89 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1511, NHB]
type = nothitby
trigger1 = animelemtime(3) < 0
time = 1
value = SCA

[State 1511, Snd]
type = playsnd
trigger1 = !time
value = 3, 5
channel = 0

[State 1511, Pusher]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 1505
ID = 1505
name = "Pusher"
postype = p1
size.xscale = 1
size.yscale = 1
size.ground.back = 20
size.ground.front = 20
size.height = 240
ownpal = 1

[State 1511, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;--- AERIAL ---
[Statedef 1512]
type = A
physics = N
movetype = I
anim = 1502
ctrl = 0
facep2 = 1
velset = 0, 0
poweradd = -500
sprpriority = 2

[State 1512, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 1512, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1512, ExFX]
type = explod
trigger1 = !time
anim = 7210
sprpriority = 3
postype = p1
pos = ceil(20 * const(size.xscale)), ceil(-178 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1512, NHB]
type = nothitby
trigger1 = animelemtime(3) < 0
time = 1
value = SCA

[State 1512, Stop]
type = posfreeze
trigger1 = animelemtime(3) < 0
value = 1

[State 1512, Snd]
type = playsnd
trigger1 = !time
value = 3, 5
channel = 0

[State 1512, Pusher]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 1505
ID = 1505
name = "Pusher"
postype = p1
pos = 0, floor(-158 * const(size.yscale))
size.xscale = 1
size.yscale = 1
size.ground.back = 20
size.ground.front = 20
size.height = 240
ownpal = 1

[State 1512, Accel]
type = veladd
trigger1 = animelemtime(3) >= 0
y = 0.5

[State 1512, Vel]
type = velset
trigger1 = animelem = 3
x = 0
y = -2

[State Land]
type = changestate
trigger1 = statetype = A
trigger1 = vel y > 0 && (pos y > -vel y)
value = 52


;======================<ZUKI>=============================
[Statedef 1600]
type = S
physics = S
movetype = A
anim = 1600
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

[State 1600, Erase Inputs]
type = mapset
map = "erase_special"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 1600, Autoguard]
type = reversaldef
trigger1 = animelem = 2
persistent = 0
reversal.attr = SCA, AA
pausetime = 0, 12
hitsound = -1 + 0 * (var(31) := 0)
sparkno = ifelse(map(mysparks), -1, 40) + 0 * (var(33) := -1)
sparkxy = 0, 0
numhits = 0
sprpriority = -1

[State 1600, Spark]
type = helper
trigger1 = map(mysparks)
trigger1 = movehit = 1
trigger1 = animelemtime(3) < 0
trigger1 = numenemy
helpertype = normal
stateno = ifelse((enemynear, hitdefattr = SCA, NA), 8000, 8001)
ID = 8000
name = "Spark"
postype = p1
pos = ceil(98 * const(size.xscale)), ceil(-164 * const(size.yscale))
ownpal = 1
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1

[State 1600, Reset]
type = movehitreset
trigger1 = animelem = 3

[State 1600, Dist]
type = sprpriority
trigger1 = animelemtime(4) >= 0
value = 1

[State 1600, Vel]
type = velset
trigger1 = animelem = 3
x = 12
[State 1600, Vel]
type = velset
trigger1 = animelem = 5
x = 0

[State 1600, Snd]
type = playsnd
trigger1 = animelem = 2
value = 4, 34
channel = 0
[State 1600, Snd]
type = playsnd
trigger1 = animelem = 3
value = 4, 35
channel = 0

[State 1600, FX]
type = explod
trigger1 = animelem = 2
anim = 7260
ID = 1605
sprpriority = 5
postype = p1
pos = ceil(-31 * const(size.xscale)), ceil(-121 * const(size.xscale))
facing = 1
vfacing = 1
bindtime = 10
removetime = 10
removeongethit = 1

[State 1600, FX]
type = explod
trigger1 = animelem = 2
anim = 7261
ID = 1606
sprpriority = 5
postype = p1
pos = ceil(-31 * const(size.xscale)), ceil(-121 * const(size.xscale))
facing = -1
vfacing = -1
bindtime = 10
removetime = 10
removeongethit = 1

[State 1600, FX]
type = modifyexplod
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
ID = 1605
scale = 0.5 -(0.05 * animelemtime(2)), 0.5 -(0.05 * animelemtime(2))
trans = addalpha
alpha = 256, 256

[State 1600, FX]
type = modifyexplod
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
ID = 1606
scale = 1 -(0.1 * animelemtime(2)), 1 -(0.1 * animelemtime(2))
trans = addalpha
alpha = 128, 256

[State 1600, Shake]
type = envshake
trigger1 = animelem = 4
time = 10
freq = 180
ampl = 1

[State 1600, Snd]
type = playsnd
trigger1 = animelem = 4
value = 5, 6

[State 1600, Dust]
type = explod
trigger1 = animelem = 4
anim = 1604
sprpriority = 3
postype = p1
pos = ceil(50 * const(size.xscale))
ownpal = 1
scale = 0.5, 0.5

[State 1600, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 3
channel = 1

[State 1600, Break Hand]
type = varset
trigger1 = animelemtime(5) < 0
var(0) = 0
[State 1600, Break Hand]
type = varset
trigger1 = !movecontact
trigger1 = p2stateno = [120, 155]
var(0) = 1

[State 1600, Hit]
type = hitdef
trigger1 = animelem = 5
trigger1 = (var(15) < 9 || var(20))
attr = S, SA
damage = 120, 30
dizzypoints = -ceil(200 * fvar(10)) * !var(20)
animtype = Diagup
hitflag = MAF
guardflag =
priority = 4, Hit
pausetime = 24, 24
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 120), var(37) := -136
hitsound = -1 + 0 * (var(31) := 8)
guardsound = -1
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -12, -6
air.type = Low
air.velocity = -12, -6
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * !var(20), ifelse(moveguarded, 25, 50) * !var(20)
givepower = 40, 40
envshake.time = 12
envshake.ampl = 2
envshake.freq = 180
fall = 1
fall.recover = 0
yaccel = 0.4850
forcestand = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I

[State 1600, Break Hand]
type = changestate
trigger1 = var(0)
trigger1 = movehit = 1 && numtarget
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
value = 1601

[State 1600, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- HURT ---
[Statedef 1601]
type = S
physics = S
movetype = I
anim = 1601
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1

[State 1601, Snd]
type = playsnd
trigger1 = animelem = 7
value = 5000, 5
channel = 0

[State 1601, Snd]
type = playsnd
trigger1 = animelem = 11
value = 4, 11
channel = 0

[State 1601, Snd]
type = playsnd
trigger1 = animelem = 2
value = 5, 13

[State 1601, FX]
type = explod
trigger1 = animelem = 9
anim = 7101
sprpriority = 3
postype = p1
pos = ceil(30 * const(size.xscale)), ceil(-178 * const(size.xscale))
vel = 0.25, 0.75
scale = 0.5, 0.5
removeongethit = 1

[State 1601, Anim]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1
