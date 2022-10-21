; ______________________________
;| Guy by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;============================================================================================
;======================================<SUPER STATES>========================================
;============================================================================================

;======================<BUSHIN GOURAI KYAKU>=============================
[Statedef 3000]
type = S
physics = N
movetype = A
ctrl = 0
anim = 3000
velset = 0, 0
poweradd = -1000
;juggle = ifelse((prevstateno = [1000, 4999]), 0, 6) * !var(20)
sprpriority = 2
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State Super Cancel Flag]
type = varset
trigger1 = !time
trigger1 = !var(20)
trigger1 = (prevstateno = [1000, 2999]) && var(7)
var(21) = 1
ignorehitpause = 1

[State Hyper Cancel Flag]
type = varset
trigger1 = !time
trigger1 = (prevstateno = [3000, 4999]) && var(8)
var(22) = 1
ignorehitpause = 1

[State Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 10
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3000, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 3000, Erase Inputs]
type = mapset
map = "erase_super"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 3000, Snd]
type = playsnd
trigger1 = time = 3
value = 4, 1
channel = 0

[State 3000, Super Pause FX]
type = helper
trigger1 = map(mysuperpause)
trigger1 = time = 3
helpertype = normal
stateno = 7500
ID = 7500
name = "Superpause FX"
postype = p1
pos = ceil(35 * const(size.xscale)), ceil(-70 * const(size.yscale))
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3000, Super Pause]
type = superpause
trigger1 = time = 3
time = 43
movetime = 43
anim = ifelse(map(mysuperpause), -1, 100)
pos = ceil(35 * const(size.xscale)), ceil(-70 * const(size.yscale))
sound = s0, 8500
p2defmul = 1 + (0 * (fvar(5) := 0))
darken = !map(mysuperpause)

[State 3000, NHB]
type = nothitby
trigger1 = anim = 3000
trigger1 = animelemtime(2) < 0
time = 1
value = SCA
ignorehitpause = 1

[State 3000, Vel]
type = velmul
trigger1 = anim = 3000
trigger1 = animelemtime(20) < 0
x = 0.6

[State 3000, Vel]
type = velset
trigger1 = anim = 3000
trigger1 = animelem = 2
x = 9

[State 3000, Vel]
type = velset
trigger1 = anim = 3000
trigger1 = animelem = 4 || animelem = 8 || animelem = 12 || animelem = 16
x = 18

[State 3000, Vel]
type = velset
trigger1 = anim = 3000
trigger1 = animelem = 20
x = -5
y = -4

[State 3000, Type]
type = statetypeset
trigger1 = anim = 3000
trigger1 = animelem = 17
statetype = A
physics = N
[State 3000, Accel]
type = veladd
trigger1 = anim = 3000
trigger1 = animelemtime(20) > 0
y = 0.55

[State 3000, Anim]
type = changeanim
trigger1 = anim = 3000
trigger1 = animelemtime(20) > 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 3001
persistent = 0

[State 3000, Type]
type = statetypeset
trigger1 = anim = 3001 && animelemtime(3) < 0
statetype = S
physics = S
[State 3000, Vel]
type = velset
trigger1 = anim = 3001 && animelemtime(3) < 0
x = 0
y = 0
[State 3000, Pos]
type = posset
trigger1 = anim = 3001 && animelemtime(3) < 0
y = 0

[State 3000, Vel]
type = velset
trigger1 = anim = 3001 && animelem = 3
x = 10
y = -5

[State 3000, Type]
type = statetypeset
trigger1 = anim = 3001 && animelemtime(3) >= 0
statetype = A
physics = N
[State Accel]
type = veladd
trigger1 = anim = 3001 && animelemtime(3) >= 0
y = 0.45

[State 3000, Vel]
type = velset
trigger1 = anim = 3001 && animelemtime(5) >= 0 && animelemtime(6) < 0
y = 0

[State 3000, Trail]
type = explod
trigger1 = anim = 3001 && animelem = 5
anim = 1121
sprpriority = 3
postype = p1
scale = const(size.xscale), const(size.yscale)
removeongethit = 1
ignorehitpause = 1
persistent = 0

[State 3000, Snd]
type = playsnd
trigger1 = anim = 3000
trigger1 = (animelem = 2 || animelem = 6 || animelem = 10)
value = 3, 8
channel = 0
[State 3000, Snd]
type = playsnd
trigger1 = anim = 3000
trigger1 = (animelem = 13 || animelem = 17 || animelem = 19)
value = 3, 4
channel = 0
[State 3000, Snd]
type = playsnd
trigger1 = anim = 3001 && animelem = 4
value = 3, 7
channel = 0

[State 3000, Snd]
type = playsnd
trigger1 = anim = 3000
trigger1 = animelem = 2
value = 1, 1
channel = 1
[State 3000, Snd]
type = playsnd
trigger1 = anim = 3000
trigger1 = (animelem = 6 || animelem = 13)
value = 1, 2
channel = 1
[State 3000, Snd]
type = playsnd
trigger1 = anim = 3000
trigger1 = animelem = 10
value = 1, 3
channel = 1
[State 3000, Snd]
type = playsnd
trigger1 = anim = 3000
trigger1 = animelem = 17
value = 1, 5
channel = 1
[State 3000, Snd]
type = playsnd
trigger1 = anim = 3000
trigger1 = animelem = 19
trigger2 = anim = 3001 && animelem = 5
value = 1, 6
channel = 1

[State 3000, Hit High]
type = hitdef
trigger1 = anim = 3000
trigger1 = (animelem = 2 || animelem = 10 || animelem = 19)
trigger1 = var(15) < 4
attr = S, HA
damage = 35, 9
dizzypoints = 0
guardpoints = -ceil(fvar(10) * 12)
animtype = Hard
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = ifelse((animelem = 10), 12, 4), ifelse((animelem = 10), 12, 4)
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 70) * (var(36) := 100), var(37) := ifelse((animelem = 2), -92, ifelse((animelem = 10), -76, -65))
hitsound = -1 + 0 * (var(31) := ifelse((animelem = 19), 6, 3))
guardsound = -1
ground.type = High
ground.hittime = 32
ground.slidetime = 32
guard.hittime = 16
ground.velocity = -5.62, 0
ground.cornerpush.veloff = 0
air.type = Low
air.velocity = ifelse((animelem = 19), -1, -3), ifelse((animelem = 19), -7.2, -2.7)
getpower = 0, 0
givepower = 40, 40
envshake.time = 12
envshake.freq = 180
envshake.ampl = 2
forcestand = 1
air.fall = 1
fall.recover = 0
yaccel = 0.4850

[State 3000, Hit Low]
type = hitdef
trigger1 = anim = 3000
trigger1 = (animelem = 6 || animelem = 13 || animelem = 17)
trigger1 = var(15) < 4
attr = S, HA
damage = 35, 9
dizzypoints = 0
guardpoints = -ceil(fvar(10) * 12)
animtype = Hard
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 4, 4
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 70) * (var(36) := 100), var(37) := ifelse((animelem = 17), -60, -58)
hitsound = -1 + 0 * (var(31) := ifelse((animelem = 17), 6, 3))
guardsound = -1
ground.type = Low
ground.hittime = 32
ground.slidetime = 32
guard.hittime = 16
ground.velocity = -5.62
ground.cornerpush.veloff = 0
air.type = Low
air.velocity = -3, -2.7
getpower = 0, 0
givepower = 40, 40
envshake.time = 12
envshake.freq = 180
envshake.ampl = 2
forcestand = 1
air.fall = 1
fall.recover = 0
yaccel = 0.4850

[State 3000, Hit Final]
type = hitdef
trigger1 = anim = 3001 && animelem = 5
trigger1 = var(15) < 4
attr = A, HA
damage = 30, 8
dizzypoints = 0
guardpoints = -ceil(fvar(10) * 10)
animtype = Diagup
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 14 / ((var(20) > 0) + 1), 14 / ((var(20) > 0) + 1)
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 88), var(37) := -81
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = High
ground.hittime = 16
ground.slidetime = 16
ground.velocity = -6, -5.7
air.type = Low
air.velocity = -6, -5.7
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = 0, 0
givepower = 40, 40
envshake.time = 12
envshake.freq = 180
envshake.ampl = 2
fall = 1
fall.recover = 0
yaccel = 0.4850
forcestand = 1

[State 3000, Snd]
type = playsnd
trigger1 = anim = 3001 && animelem = 1
value = 0, 52
persistent = 0
[State 3000, Dust]
type = explod
trigger1 = anim = 3001 && animelem = 1
anim = 7102
ID = 7102
sprpriority = -2
postype = p1
ownpal = 1
scale = 0.5, 0.5
persistent = 0
pausemovetime = -1
supermovetime = -1

[State 3000, Snd]
type = playsnd
trigger1 = anim = 3001 && animelem = 3
value = 0, 41
persistent = 0
[State 3000, Dust]
type = helper
trigger1 = anim = 3001 && animelem = 3
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State Idle]
type = statetypeset
trigger1 = anim = 3001 && animelemtime(6) >= 0
movetype = I

[State Land]
type = changestate
trigger1 = anim = 3001 && animelemtime(6) >= 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 3002


;---Land---
[Statedef 3002]
type = S
physics = S
movetype = I
anim = 47
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1
hitcountpersist = 1

[State 3002, Pos]
type = posset
trigger1 = 1
y = 0

[State 3002, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 3002, Dust]
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

[State 3002, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================<BUSHIN HASSOU KEN>=============================
[Statedef 3050]
type = A
physics = N
movetype = A
ctrl = 0
anim = 3050
velset = 0, 0
poweradd = -1000
;juggle = ifelse(numtarget, 0, 6) * !var(20)
sprpriority = 2

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State Super Cancel Flag]
type = varset
trigger1 = !time
trigger1 = !var(20)
trigger1 = (prevstateno = [1000, 2999]) && var(7)
var(21) = 1
ignorehitpause = 1

[State Hyper Cancel Flag]
type = varset
trigger1 = !time
trigger1 = (prevstateno = [3000, 4999]) && var(8)
var(22) = 1
ignorehitpause = 1

[State Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 10
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3050, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 3050, Erase Inputs]
type = mapset
map = "erase_super"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 3050, Snd]
type = playsnd
trigger1 = time = 3
value = 4, 1
channel = 0

[State 3050, Super Pause FX]
type = helper
trigger1 = map(mysuperpause)
trigger1 = time = 3
helpertype = normal
stateno = 7500
ID = 7500
name = "Superpause FX"
postype = p1
pos = ceil(22 * const(size.xscale)), ceil(-99 * const(size.yscale))
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3050, Super Pause]
type = superpause
trigger1 = time = 3
time = 43
movetime = 43
anim = ifelse(map(mysuperpause), -1, 100)
pos = ceil(22 * const(size.xscale)), ceil(-99 * const(size.yscale))
sound = s0, 8500
p2defmul = 1 + (0 * (fvar(5) := 0))
darken = !map(mysuperpause)

[State 3050, NHB]
type = nothitby
trigger1 = anim = 3050
trigger1 = animelemtime(4) < 0
time = 1
value = SCA
ignorehitpause = 1

[State 3050, Trail]
type = removeexplod
trigger1 = !time
ID = 3105

[State 3050, Snd]
type = playsnd
trigger1 = animelem = 2 && !pos y
value = 0, 41
[State 3050, Dust]
type = helper
trigger1 = animelem = 2 && !pos y
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 3050, Accel]
type = veladd
trigger1 = animelemtime(2) >= 0 && animelemtime(6) < 0
x = -0.66
y = 1.1
[State 3050, Vel]
type = velset
trigger1 = animelem = 2
x = 12
y = -12
[State 3050, Vel]
type = velset
trigger1 = animelemtime(6) >= 0 && animelemtime(36) < 0
x = 1.5
y = -1.5

[State 3050, Anim]
type = changeanim
trigger1 = animelem = 6 && !movecontact
trigger2 = (animelem = 12 || animelem = 18 || animelem = 21 || animelem = 32)
trigger2 = (movecontact != [1, 12]) && (movereversed != [1, 12])
value = 3050
elem = 36
[State 3050, Anim]
type = velset
trigger1 = animelem = 36
x = 0
y = 0

[State 3050, trail]
type = explod
trigger1 = animelem = 34
anim = 1121
sprpriority = 3
postype = p1
scale = const(size.xscale), const(size.yscale)
pos = 0, -10
removeongethit = 1
ignorehitpause = 1
persistent = 0

[State 3050, Snd]
type = playsnd
trigger1 = animelem = 4 || animelem = 9 || animelem = 14
value = 3, 8
channel = 0
[State 3050, Snd]
type = playsnd
trigger1 = animelem = 19 || animelem = 25
value = 3, 6
channel = 0
[State 3050, Snd]
type = playsnd
trigger1 = animelem = 34
value = 3, 4
channel = 0

[State 3050, Snd]
type = playsnd
trigger1 = animelem = 9
value = 1, 2
channel = 1
[State 3050, Snd]
type = playsnd
trigger1 = animelem = 4 || animelem = 14
value = 1, 3
channel = 1
[State 3050, Snd]
type = playsnd
trigger1 = animelem = 19
value = 1, 3
channel = 1
[State 3050, Snd]
type = playsnd
trigger1 = animelem = 23
value = 1, 5
channel = 1
[State 3050, Snd]
type = playsnd
trigger1 = animelem = 25 || animelem = 34
value = 1, 6
channel = 1

[State 3050, Hit First]
type = hitdef
trigger1 = animelem = 4
trigger1 = var(15) < (3 + hitcount)
attr = A, HA
damage = 35, 9
dizzypoints = 0
guardpoints = -ceil(fvar(10) * 12)
animtype = Up
air.animtype = Hard
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 6, 6
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 69), var(37) := -88
hitsound = -1 + 0 * (var(31) := 3)
guardsound = -1
ground.type = High
ground.hittime = 16
ground.slidetime = 16
ground.velocity = -1.5, -7.50
air.type = Low
air.velocity = -1.5, -4.00
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = 0, 0
givepower = 40, 40
envshake.time = 12
envshake.freq = 180
envshake.ampl = 2
fall = 1
fall.recover = 0
forcestand = 1

[State 3050, Hit Middle]
type = hitdef
trigger1 = animelem = 9 || animelem = 14 || animelem = 19 || animelem = 25
trigger1 = var(15) < (3 + hitcount)
attr = A, HA
damage = 35, 9
dizzypoints = 0
guardpoints = -ceil(fvar(10) * 12)
animtype = Hard
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 6, 6
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 88), var(37) := ifelse((animelem = 17), -60, -58)
hitsound = -1 + 0 * (var(31) := ifelse((animelem = 19 || animelem = 25), 6, 3))
guardsound = -1
ground.type = High
ground.hittime = 16
ground.slidetime = 16
ground.velocity = -1.5, -7.50
air.type = High
air.velocity = -1.5, -4.00
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = 0, 0
givepower = 40, 40
envshake.time = 12
envshake.freq = 180
envshake.ampl = 2
fall = 1
fall.recover = 0
forcestand = 1

[State 3050, Hit Final]
type = hitdef
trigger1 = animelem = 34
trigger1 = var(15) < (4 + hitcount)
attr = A, HA
damage = 45, 11
dizzypoints = 0
guardpoints = -ceil(fvar(10) * 15)
animtype = Diagup
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 6, 6
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 88), var(37) := -92
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = High
ground.hittime = 16
ground.slidetime = 16
ground.velocity = -12, -4
air.type = High
air.velocity = -12, -4
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = 0, 0
givepower = 40, 40
envshake.time = 12
envshake.freq = 180
envshake.ampl = 2
fall = 1
fall.recover = 0
yaccel = 0.4850
forcestand = 1
p2facing = 1

[State 3050, slow]
type = pause
trigger1 = animelemtime(33) >= 0 && animelemtime(34) < 0
time = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(35) >= 0
movetype = I

[State Type]
type = statetypeset
trigger1 = animelemtime(36) >= 0
physics = N

[State Gravity]
type = veladd
trigger1 = animelemtime(36) >= 0
y = 0.6

[State Land]
type = changestate
trigger1 = animelemtime(2) >= 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 3059


;---Land---
[Statedef 3059]
type = S
physics = S
movetype = I
anim = 48
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1
hitcountpersist = 1

[State 3059, Pos]
type = posset
trigger1 = 1
y = 0

[State 3059, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 3059, Dust]
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

[State 3059, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================<TESSHINHOU>=============================
[Statedef 3100]
type = S
physics = S
movetype = A
ctrl = 0
anim = 3100
velset = 0, 0
poweradd = -2000
sprpriority = 2
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State Super Cancel Flag]
type = varset
trigger1 = !time
trigger1 = !var(20)
trigger1 = (prevstateno = [1000, 2999]) && var(7)
var(21) = 1
ignorehitpause = 1

[State Hyper Cancel Flag]
type = varset
trigger1 = !time
trigger1 = (prevstateno = [3000, 4999]) && var(8)
var(22) = 1
ignorehitpause = 1

[State Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 10
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3100, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 3100, Erase Inputs]
type = mapset
map = "erase_super"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 3100, Snd]
type = playsnd
trigger1 = time = 3
value = 4, 0
channel = 0

[State 3100, Super Pause FX]
type = helper
trigger1 = map(mysuperpause)
trigger1 = time = 3
helpertype = normal
stateno = 7510
ID = 7500
name = "Superpause FX"
postype = p1
pos = ceil(22 * const(size.xscale)), ceil(-26 * const(size.yscale))
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3100, Super Pause]
type = superpause
trigger1 = time = 3
time = 45
movetime = 45
anim = ifelse(map(mysuperpause), -1, 101)
pos = ceil(22 * const(size.xscale)), ceil(-26 * const(size.yscale))
sound = s0, 8510
p2defmul = 1 + (0 * (fvar(5) := 0))
darken = !map(mysuperpause)

[State 3100, NHB]
type = nothitby
trigger1 = time <= 52
time = 1
value = SCA
ignorehitpause = 1

[State 3100, Vel]
type = velset
trigger1 = anim = 3100
trigger1 = animelemtime(3) >= 0
x = 11

[State 3100, steps]
type = playsnd
trigger1 = anim = 3100
trigger1 = (animelem = 4 || animelem = 7)
value = 0, ifelse((animelem = 4), 103, 106)

[State 3100, Dust]
type = explod
trigger1 = anim = 3100
trigger1 = (animelem = 4 || animelem = 7)
anim = 7101
ID = 7101
sprpriority = 3
postype = p1
pos = ceil(-55 * const(size.xscale)), 0
scale = 0.5, 0.5
removetime = -2
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 3100, Anim]
type = changeanim
triggerall = anim = 3100
triggerall = animelemtime(3) >= 0
trigger1 = !AIlevel
trigger1 = command = "/a" || command = "/b" || command = "/c"
trigger2 = AIlevel && p2dist x <= 120
value = 3101

[State 3100, Type]
type = statetypeset
trigger1 = anim = 3101 && animelemtime(3) >= 0
statetype = A
physics = N

[State Accel]
type = veladd
trigger1 = anim = 3101 && animelemtime(11) >= 0
y = 0.45

[State 3100, Vel]
type = velset
trigger1 = anim = 3101 && animelem = 3
x = 8
y = -3

[State 3100, Accel]
type = veladd
trigger1 = anim = 3101 && animelemtime(3) > 0
y = 0.6

[State 3100, Vel]
type = velset
trigger1 = anim = 3101 && animelemtime(5) >= 0 && animelemtime(11) < 0
y = 0

[State 3100, Anim]
type = changeanim
trigger1 = anim = 3101
trigger1 = animelemtime(11) >= 0
trigger1 = movecontact
value = 3103

[State 3100, FX]
type = explod
trigger1 = anim = 3101 && animelem = 5
anim = 3105
ID = 3105
removetime = -2
scale = 0.5, 0.25
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 0

[State 3100, Shield]
type = helper
trigger1 = anim = 3101
trigger1 = animelem = 5
helpertype = normal
stateno = 3106
ID = 3106
name = "Shield"
postype = p1
ownpal = 1

[State 3100, Shield]
type = hitby
trigger1 = numhelper(3106)
value2 = SCA, AA, AT, HP
time = 1
ignorehitpause = 1

[State 3100, Trail]
type = modifyexplod
trigger1 = anim = 3101
ID = 3105
pos = ceil(100 * const(size.xscale)), -56
postype = p1
bindtime = 1

[State 3100, Type]
type = statetypeset
trigger1 = anim = 3103 && animelemtime(4) > 0
physics = N

[State Accel]
type = veladd
trigger1 = anim = 3103 && animelemtime(4) > 0
y = 0.5

[State 3100, Vel]
type = velset
trigger1 = anim = 3103 && animelemtime(4) < 0
y = 0
[State 3100, Vel]
type = velset
trigger1 = anim = 3103 && animelem = 4
x = -2
y = -9

[State 3100, Snd]
type = playsnd
trigger1 = anim = 3101 && animelem = 4
value = 3, 4
channel = 0
[State 3100, Snd]
type = playsnd
trigger1 = anim = 3103 && (animelem = 1 || animelem = 3)
value = 3, ifelse((animelem = 1), 3, 5)
channel = 0
[State 3100, Snd]
type = playsnd
trigger1 = anim = 3101 && animelem = 5
value = 1, 6
channel = 1
[State 3100, Snd]
type = playsnd
trigger1 = anim = 3103 && (animelem = 1 || animelem = 3)
value = 1, ifelse((animelem = 1), 5, 6)
channel = 1

[State 3100, Hit]
type = hitdef
trigger1 = anim = 3101 && (animelem = 5 || animelem = 6 || animelem = 7 || animelem = 8 || animelem = 9 || animelem = 10)
trigger1 = var(15) < (3 + hitcount)
attr = S, HA
damage = 35, 9
dizzypoints = 0
guardpoints = -ceil(fvar(10) * 12)
animtype = Hard
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 6, 6
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 96), var(37) := -59
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = High
ground.hittime = 18
ground.slidetime = 12
ground.velocity = -4.49, 0
air.type = Low
air.velocity = -6, -1
getpower = 0, 0
givepower = 40, 40
envshake.time = 12
envshake.freq = 180
envshake.ampl = 2
forcestand = 1
air.fall = 1
fall.recover = 0
yaccel = 0.4850

[State 3100, Hit]
type = hitdef
trigger1 = anim = 3103 && animelem = 1
trigger1 = var(15) < (3 + hitcount)
attr = S, HA
damage = 35, 9
dizzypoints = 0
guardpoints = -ceil(fvar(10) * 12)
animtype = Hard
fall.animtype = Hard
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 18
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 97), var(37) := -61
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1
ground.type = High
ground.hittime = 16
ground.slidetime = 16
ground.velocity = -2, -4
air.type = High
air.velocity = -2, -4
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = 0, 0
givepower = 40, 40
envshake.time = 12
envshake.freq = 180
envshake.ampl = 2
fall = 1
fall.recover = 0
yaccel = 0.4850
forcestand = 1

[State 3100, Hit Final]
type = hitdef
trigger1 = anim = 3103 && animelem = 3
trigger1 = var(15) < (3 + hitcount)
attr = S, HA
damage = 55, 14
dizzypoints = 0
guardpoints = -ceil(fvar(10) * 18)
animtype = Diagup
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 97), var(37) := -61
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = High
ground.hittime = 16
ground.slidetime = 16
ground.velocity = -6, -9
air.type = Low
air.velocity = -6, -9
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = 0, 0
givepower = 40, 40
envshake.time = 12
envshake.freq = 180
envshake.ampl = 2
fall = 1
fall.recover = 0
yaccel = 0.4850
forcestand = 1

[State 3100, Snd]
type = playsnd
trigger1 = anim = 3101 && animelem = 3
value = 0, 40
persistent = 0

[State 3100, Dust]
type = helper
trigger1 = anim = 3101 && animelem = 3
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State Idle]
type = statetypeset
trigger1 = anim = 3101 && animelemtime(11) >= 0
movetype = I

[State 3100, End]
type = changestate
trigger1 = time >= 50 && anim = 3100
trigger1 = !AIlevel
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = time >= 50 && anim = 3100 && frontedgebodydist <= 0
trigger3 = time >= 90 && anim = 3100
value = 3102

[State Land]
type = changestate
trigger1 = anim != 3100 && vel y > 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 3109


;--- STOP ---
[Statedef 3102]
type = S
physics = S
movetype = I
anim = 1102
ctrl = 0
sprpriority = 2

[State 3102, Snd]
type = playsnd
trigger1 = !time
value = 5, 0
[State 3102, Dust]
type = explod
trigger1 = !time
anim = 7103
ID = 7103
sprpriority = 3
postype = p1
pos = ceil(70 * const(size.xscale)), 0
vel = 2, 0
scale = 0.5, 0.5
removetime = -2
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 3102, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;---Land---
[Statedef 3109]
type = S
physics = S
movetype = I
anim = 1301
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1
hitcountpersist = 1

[State 3109, Pos]
type = posset
trigger1 = 1
y = 0

[State 3109, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 3109, Dust]
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

[State 3109, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================<KAITEN IZUNA OTOSHI>=============================
[Statedef 3200]
type = A
physics = N
movetype = A
anim = 3200
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = -1000
facep2 = 0

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State Super Cancel Flag]
type = varset
trigger1 = !time
trigger1 = !var(20)
trigger1 = (prevstateno = [1000, 2999]) && var(7)
var(21) = 1
ignorehitpause = 1

[State Hyper Cancel Flag]
type = varset
trigger1 = !time
trigger1 = (prevstateno = [3000, 4999]) && var(8)
var(22) = 1
ignorehitpause = 1

[State Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 10
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3200, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 3200, Erase Inputs]
type = mapset
map = "erase_super"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 3200, Snd]
type = playsnd
trigger1 = time = 3
value = 4, 1
channel = 0

[State 3200, Super Pause FX]
type = helper
trigger1 = map(mysuperpause)
trigger1 = time = 3
helpertype = normal
stateno = 7500
ID = 7500
name = "Superpause FX"
postype = p1
pos = ceil(30 * const(size.xscale)), ceil(-60 * const(size.yscale))
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3200, Super Pause]
type = superpause
trigger1 = time = 3
time = 43
movetime = 43
anim = ifelse(map(mysuperpause), -1, 100)
pos = ceil(35 * const(size.xscale)), ceil(-70 * const(size.yscale))
sound = s0, 8500
p2defmul = 1 + (0 * (fvar(5) := 0))
darken = !map(mysuperpause)
movetime = 45

[State 3200, NHB]
type = nothitby
trigger1 = animelemtime(2) < 1
time = 1
value = SCA

[State 3200, Hit]
type = hitdef
trigger1 = animelem = 2
trigger1 = var(15) < 3
trigger1 = !map(unthrowable) && numenemy
trigger1 = map(p2bodydistx) <= ceil((70 * const(size.xscale)) - const(size.air.front))
trigger1 = p2dist x >= ifelse((facing = enemynear, facing), -(enemynear, const(size.ground.front)), -(enemynear, const(size.ground.back)))
trigger1 = p2dist y = [-60, 20]
attr = A, HT
hitflag = AF
priority = 1, Miss
sparkno = -1 + 0 * (var(33) := 0)
hitsound = -1 + 0 * (var(31) := 800)
sprpriority = 2
p1facing = 1
p2facing = 1
p1stateno = 3210
p2stateno = 3220
fall = 1
fall.recover = 0
numhits = 0
ID = 3200

[State 3200, Miss]
type = playsnd
trigger1 = animelem = 3
value = 3, 0
channel = 0

[State 3200, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 1
channel = 1

[State 3200, Accel]
type = veladd
trigger1 = animelemtime(5) >= 0
y = 0.5

[State 3200, Vel]
type = velset
trigger1 = animelem = 5
x = 0
y = -3

[State 3200, Land]
type = changestate
trigger1 = statetype = A
trigger1 = vel y > 0 && (pos y > -vel y)
value = 3201


;---Land---
[Statedef 3201]
type = S
physics = S
movetype = I
anim = 48
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1
hitcountpersist = 1

[State 3201, Pos]
type = posset
trigger1 = 1
y = 0

[State 3201, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 3201, Dust]
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

[State 3201, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Grab ---
[Statedef 3210]
type = A
physics = N
movetype = A
anim = 3210
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 3210, Width]
type = width
trigger1 = animelemtime(3) < 0
edge = ceil(50 * const(size.xscale)), ceil(50 * const(size.xscale))

[State 3210, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 1

[State 3210, Turn]
type = turn
trigger1 = animelem = 2
trigger1 = backedgedist > frontedgedist

[State 3210, Throw]
type = targetfacing
trigger1 = !time
trigger2 = animelem = 2
value = -1

[State 3210, Throw]
type = targetstate
trigger1 = !time
value = 3220

[State 3200, Accel]
type = veladd
trigger1 = animelemtime(2) >= 0
y = 0.5

[State 3200, Vel]
type = velset
trigger1 = animelem = 2
x = backedgedist / -16.0
y = -6

[State 3210, Bind 1]
type = targetbind
trigger1 = animelemtime(2) < 0
pos = 34 * const(size.xscale), -76
[State 3210, Bind 2]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = -13 * const(size.xscale), -79
[State 3210, Bind 3]
type = targetbind
trigger1 = animelemtime(3) >= 0
pos = -60 * const(size.xscale), -64

[State 3212, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 6
channel = 1

[State 3210, Wall]
type = changestate
triggerall = animelemtime(3) >= 3
trigger1 = time && vel x > 0 && frontedgebodydist <= (50 * const(size.xscale))
trigger2 = time && vel x < 0 && backedgebodydist <= (50 * const(size.xscale))
trigger3 = time >= 120
value = 3211

[State 3210, Safety]
type = changestate
trigger1 = animelemtime(3) >= 3
trigger1 = vel y > 0 && pos y > 0
value = 3213


;--- Hit Wall ---
[Statedef 3211]
type = A
physics = N
movetype = A
anim = 3211
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 3211, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 1

[State 3211, Throw]
type = targetstate
trigger1 = !time
value = 3221

[State 3211, Throw]
type = targetfacing
trigger1 = !time
value = -1

[State 3211, Pos]
type = posadd
trigger1 = !time
x = -backedgebodydist + (54 * const(size.xscale))

[State 3211, Pos]
type = posadd
trigger1 = animelem = 2
x = -backedgebodydist

[State 3211, Turn]
type = turn
trigger1 = !time
trigger1 = frontedgedist < backedgedist

[State 3211, Snd]
type = playsnd
trigger1 = !time
value = 3, 3
channel = 0

[State 3211, Snd]
type = playsnd
trigger1 = !time
value = 5, 2

[State 3211, Dust]
type = explod
trigger1 = !time
anim = F71
postype = p1
pos = -15 - backedgebodydist, -40
sprpriority = -5
ownpal = 1

[State 3211, Horizontal Shake]
type = zoom
trigger1 = time = [1, 12]
scale = 1
lag = 0
pos = 3 * cos(time * pi), 0

[State 3211, Bind 1]
type = targetbind
trigger1 = animelemtime(1) >= 0 && animelemtime(2) < 0
pos = -54 * const(size.xscale), -40
[State 3211, Bind 2]
type = targetbind
trigger1 = animelemtime(2) >= 0
pos = -24 * const(size.xscale), -70

[State 3211, Hit]
type = hitadd
trigger1 = !time
value = 1

[State 3211, Juggle]
type = varadd
trigger1 = !time
var(15) = 1

[State 3211, Damage]
type = targetlifeadd
trigger1 = !time
value = -ceil(70 * fvar(10))
kill = 0

[State 3211, Damage]
type = targetpoweradd
trigger1 = !time
value = 40;givepower

[State 3211, End]
type = changestate
trigger1 = !animtime
value = 3212


;--- Jump off ---
[Statedef 3212]
type = A
physics = N
movetype = A
anim = 3212
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 3212, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 1

[State 3212, Throw]
type = targetstate
trigger1 = !time
value = 3222

[State 3212, Accel]
type = velmul
trigger1 = 1
x = 0.95
[State 3212, Accel]
type = veladd
trigger1 = 1
y = 0.6

[State 3212, Vel]
type = velset
trigger1 = !time
x = 10
y = -12

[State 3212, Offset]
type = offset
triggerall = numtarget(3200)
triggerall = vel y < 0 || (pos y <= -vel y);stop before landing
trigger1 = !animtime
trigger2 = animelemtime(4) >= 0 && animelemtime(5) < 0
trigger3 = animelemtime(6) >= 0 && animelemtime(7) < 0
trigger4 = animelemtime(8) >= 0 && animelemtime(9) < 0
x = ceil(-0.5 * target(3200), const(size.ground.back)) * facing
[State 3212, Offset]
type = offset
triggerall = numtarget(3200)
triggerall = vel y < 0 || (pos y <= -vel y)
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
trigger2 = animelemtime(7) >= 0 && animelemtime(8) < 0
trigger3 = animelemtime(9) >= 0 && animtime
x = ceil(0.5 * target(3200), const(size.ground.back)) * facing

[State 3212, Bind 1]
type = targetbind
trigger1 = animelemtime(2) < 0
pos = -35 * const(size.xscale), -78
[State 3212, Bind 2]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = -12 * const(size.xscale), -78
[State 3212, Bind 3]
type = targetbind
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 60 * const(size.xscale), -63

[State 3212, Bind 4]
type = targetbind
triggerall = numtarget(3200)
trigger1 = !animtime
trigger2 = animelemtime(4) >= 0 && animelemtime(5) < 0
trigger3 = animelemtime(6) >= 0 && animelemtime(7) < 0
trigger4 = animelemtime(8) >= 0 && animelemtime(9) < 0
pos = (0.5 * target(3200), const(size.ground.back)), -28
[State 3212, Bind 5]
type = targetbind
triggerall = numtarget(3200)
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
trigger2 = animelemtime(7) >= 0 && animelemtime(8) < 0
trigger3 = animelemtime(9) >= 0 && animtime
pos = (-0.5 * target(3200), const(size.ground.back)), -28

[State 3212, Snd]
type = playsnd
trigger1 = !time
value = 0, 41
channel = 1

[State 3212, Snd]
type = playsnd
trigger1 = vel y > 0
value = 3, 7
channel = 0
persistent = 0

[State 3212, Snd]
type = playsnd
trigger1 = vel y > 0
value = 5, 6
persistent = 0

[State 3212, Dust]
type = explod
trigger1 = vel y > 8
anim = 3219
ID = 3219
sprpriority = 3
postype = p1
pos = 0, 0
scale = 0.5, 0.5
bindtime = 60
removetime = -2
ownpal = 1
persistent = 0

[State 3212, End]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 3213


;--- Hit floor ---
[Statedef 3213]
type = C
physics = C
movetype = A
anim = 3213
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 3213, Turn]
type = turn
trigger1 = !time

[State 3213, Throw]
type = targetfacing
trigger1 = !time
value = 1

[State 3213, Throw]
type = targetstate
trigger1 = !time
value = 3223

[State 3213, Pos]
type = posset
trigger1 = 1
y = 0

[State 3213, Bind 1]
type = posadd
trigger1 = !time
trigger1 = numtarget(3200)
x = target(3200), const(size.ground.back)

[State 3213, Bind 1]
type = targetbind
trigger1 = numtarget(3200)
pos = -(target(3200), const(size.ground.back) + target(3200), const(size.ground.front)), 0

[State 3213, Snd]
type = playsnd
trigger1 = !time
value = 5, 1

[State 3213, Dust]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8110
ID = 8110
name = "Impact Dust"
postype = p1
pos = ceil(-0.5 * (target(3200), const(size.ground.back) + target(3200), const(size.ground.front))), 0
ownpal = 1

[State 3213, Shake]
type = envshake
trigger1 = !time
time = 18
freq = 180
ampl = 4

[State 3213, Hit]
type = hitadd
trigger1 = !time
value = 1

[State 3213, Juggle]
type = varadd
trigger1 = !time
var(15) = 1

[State 3213, Damage]
type = targetlifeadd
trigger1 = !time
value = -ceil(140 * fvar(10))

[State 3213, Damage]
type = targetpoweradd
trigger1 = !time
value = 40;givepower

[State 3213, End]
type = changestate
trigger1 = !animtime
value = 3214


;--- Hop back ---
[Statedef 3214]
type = A
physics = N
movetype = I
anim = 3214
ctrl = 0
velset = 2, -9

[State 3214, Throw]
type = targetstate
trigger1 = !time
value = 3224

[State 3214, Throw]
type = targetfacing
trigger1 = !time
value = 1

[State 3214, Accel]
type = veladd
trigger1 = time
y = 0.55

[State 3214, Land]
type = changestate
trigger1 = statetype = A
trigger1 = vel y > 0 && (pos y > -vel y)
value = 52


;--- Target grabbed ---
[Statedef 3220]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0

[State 3220, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 3220, Anim]
type = changeanim2
trigger1 = !time
value = 3220

[State 3220, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


;--- Target hit wall ---
[Statedef 3221]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0

[State 3221, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 3221, Anim]
type = changeanim2
trigger1 = !time
value = 3221

[State 3221, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


;--- Target jump off ---
[Statedef 3222]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0

[State 3222, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 3222, Anim]
type = changeanim2
trigger1 = !time
value = 3222

[State 3222, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


;--- Target hit ground ---
[Statedef 3223]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0

[State 3223, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1, 1

[State 3223, Anim]
type = changeanim2
trigger1 = !time
value = 3223

[State 3223, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


;--- Target bounce off ---
[Statedef 3224]
type = A
movetype = H
physics = N
velset = -3, -10
sprpriority = 0

[State 3224, Anim]
type = changeanim2
trigger1 = !time
value = 3224

[State 3224, Accel]
type = veladd
trigger1 = time
y = 0.68

[State 3224, End]
type = selfstate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 5100


;======================<BUSHIN MUSOU RENGE>=============================
[Statedef 4000]
type = S
physics = S
movetype = A
anim = 4000
ctrl = 0
velset = 0, 0
poweradd = -3000
facep2 = 1
sprpriority = 2

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State Super Cancel Flag]
type = varset
trigger1 = !time
trigger1 = !var(20)
trigger1 = (prevstateno = [1000, 2999]) && var(7)
var(21) = 1
ignorehitpause = 1

[State Hyper Cancel Flag]
type = varset
trigger1 = !time
trigger1 = (prevstateno = [3000, 4999]) && var(8)
var(22) = 1
ignorehitpause = 1

[State Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 10
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 4000, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 4000, Erase Inputs]
type = mapset
map = "erase_super"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 4000, Snd]
type = playsnd
trigger1 = time = 3
value = 4, 1
channel = 0

[State 4000, Super Pause FX]
type = helper
trigger1 = map(mysuperpause)
trigger1 = time = 3
helpertype = normal
stateno = 7520
ID = 7500
name = "Superpause FX"
postype = p1
pos = ceil(-23 * const(size.xscale)), ceil(-64 * const(size.yscale))
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 4000, Super Pause]
type = superpause
trigger1 = time = 3
time = 47
movetime = 47
anim = ifelse(map(mysuperpause), -1, 102)
pos = ceil(-23 * const(size.xscale)), ceil(-64 * const(size.yscale))
sound = s0, 8520
p2defmul = 1 + (0 * (fvar(5) := 0))
darken = !map(mysuperpause)

[State 4000, NHB]
type = nothitby
trigger1 = animelemtime(5) < 1
time = 1
value = SCA

[State 4000, Pos]
type = posadd
trigger1 = animelem = 5
x = 16 * const(size.xscale)

[State 4000, Hit]
type = hitdef
trigger1 = animelem = 5
trigger1 = !map(unthrowable) && numenemy
trigger1 = map(p2bodydistx) <= ceil(30 * const(size.xscale));p2bodydist is delayed
trigger1 = p2dist x >= ifelse((facing = enemynear, facing), -(enemynear, const(size.ground.front)), -(enemynear, const(size.ground.back)))
ID = 4000
attr = S, HT
hitflag = M
priority = 7, Miss
numhits = 0
sparkno = -1 + 0 * (var(33) := 0)
hitsound = -1 + 0 * (var(31) := 800)
p1facing = 1
p2facing = 1
p1stateno = 4001
p2stateno = 4002
animtype = Up
sprpriority = -1
fall = 1
fall.recover = 0

[State 4000, Snd]
type = playsnd
trigger1 = animelem = 6
value = 3, 0
channel = 0

[State 4000, Snd]
type = playsnd
trigger1 = animelem = 6
value = 1, 1
channel = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I

[State 4000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- PLAYER ---
[Statedef 4001]
type = S
physics = N
movetype = A
anim = 4001
ctrl = 0
velset = 0, 0
sprpriority = -1

[State Throw]
type = targetstate
trigger1 = !time
value = 4002

[State 4001, Throw]
type = targetfacing
trigger1 = !time
value = -1

[State 4001, Push]
type = playerpush
trigger1 = 1
value = 0
[State 4001, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 4001, spr]
type = sprpriority
trigger1 = animelemtime(2) >= 0
value = 1

[State 4001, fadeout]
type = allpalfx
trigger1 = animelemtime(1) = 10
time = 20
sinadd = -255, -255, -255, 80

[State 4001, afterimage]
type = afterimagetime
trigger1 = animelemtime(11) < 0
time = 0

[State 4001, BG PalFX]
type = bgpalfx
trigger1 = animelemtime(2) = -1 || animelemtime(3) = -1 || animelemtime(4) = -1 || animelemtime(5) = -1 || animelemtime(6) = -1
trigger2 = animelemtime(7) = -1 || animelemtime(8) = -1 || animelemtime(9) = -1 || animelemtime(10) = -1 || animelemtime(11) = -1
invertall = 1
add = 128, 128, 128
sinadd = -512, -512, -512, 80
color = 0
time = 20

[State 4001, Palfx]
type = palfx
trigger1 = animelemtime(2) = 0 || animelemtime(3) = 0 || animelemtime(4) = 0 || animelemtime(5) = 0 || animelemtime(6) = 0
trigger2 = animelemtime(7) = 0 || animelemtime(8) = 0 || animelemtime(9) = 0 || animelemtime(10) = 0 || animelemtime(11) = 0
sinadd = -128, -128, -128, 80
color = 0
time = 20

[State 4001, Palfx]
type = palfx
trigger1 = animelemtime(12) = -1
add = 0, 0, 0
sinadd = 0, 0, 0, 1
time = 1
[State 4001, BG PalFX]
type = bgpalfx
trigger1 = animelemtime(12) = -1
add = 0, 0, 0
sinadd = 0, 0, 0, 1
color = 256
time = 1

[State 4001, Zoom]
type = zoom
trigger1 = numtarget
trigger1 = numenemy + numpartner = 1
trigger1 = animelemtime(2) >= 0 && animelemtime(11) < 0
scale = 1.20
pos = (target, pos x), (target, pos y)
ignorehitpause = 1

[State 4001, Assert]
type = assertspecial
trigger1 = animelemtime(2) >= 0
trigger1 = animelemtime(11) < 0
flag = nobardisplay

[State 4001, Pos]
type = posadd
trigger1 = animelem = 3 || animelem = 4 || animelem = 5 || animelem = 6
trigger2 = animelem = 7 || animelem = 8 || animelem = 9 || animelem = 10
x = 140 * const(size.xscale)

[State 4001, Turn]
type = turn
trigger1 = animelem = 3 || animelem = 4 || animelem = 5 || animelem = 6
trigger2 = animelem = 7 || animelem = 8 || animelem = 9 || animelem = 10

[State 4001, Width]
type = width
trigger1 = animelemtime(2) < 0
edge = ceil(60 * const(size.xscale)), 0

[State 4001, Bind]
type = targetbind
trigger1 = animelemtime(2) < 0
pos = 45 * const(size.xscale), 0

[State 4001, Bind]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(12) < 0
pos = 70 * const(size.xscale), 0

[State 4001, Hitadd]
type = hitadd
trigger1 = animelem = 2 || animelem = 3 || animelem = 4 || animelem = 5 || animelem = 6
trigger2 = animelem = 7 || animelem = 8 || animelem = 9 || animelem = 10 || animelem = 11
value = 1

[State 4001, Hitdamage]
type = targetlifeadd
trigger1 = animelem = 2 || animelem = 3 || animelem = 4 || animelem = 5 || animelem = 6
trigger2 = animelem = 7 || animelem = 8 || animelem = 9 || animelem = 10 || animelem = 11
value = -ceil(43 * fvar(10))
kill = animelem = 11

[State 4001, Hitpower]
type = targetpoweradd
trigger1 = animelem = 2 || animelem = 3 || animelem = 4 || animelem = 5 || animelem = 6
trigger2 = animelem = 7 || animelem = 8 || animelem = 9 || animelem = 10 || animelem = 11
value = 33

[State 4001, Juggle]
type = varadd
trigger1 = animelem = 11
var(15) = 1

[State 4001, HitSound]
type = playsnd
trigger1 = animelem = 2 || animelem = 3 || animelem = 4 || animelem = 5 || animelem = 9
value = 2, 7
channel = 2

[State 4001, HitSound]
type = playsnd
trigger1 = animelem = 6 || animelem = 7 || animelem = 8 || animelem = 10 || animelem = 11
value = 2, ifelse((animelem = 11), 9, 8)
channel = 2

[State 4001, Shake]
type = envshake
trigger1 = animelem = 2 || animelem = 3 || animelem = 4 || animelem = 5 || animelem = 6
trigger2 = animelem = 7 || animelem = 8 || animelem = 9 || animelem = 10 || animelem = 11
time = 12
freq = 180
ampl = 2

[State 4001, Spark]
type = helper
trigger1 = map(mysparks)
trigger1 = numtarget
trigger1 = animelem = 2 || animelem = 4 || animelem = 6 || animelem = 8 || animelem = 10
helpertype = normal
stateno = 8014
ID = 8000
name = "Spark"
postype = p1
pos = ceil(70 * const(size.xscale)), ifelse((animelem = 8), -62, -82)
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 4001, Spark]
type = helper
trigger1 = map(mysparks)
trigger1 = numtarget
trigger1 = animelemtime(3) = 1 || animelem = 5 || animelem = 7 || animelem = 9 || animelem = 11
helpertype = normal
stateno = 8014
ID = 8000
name = "Spark"
postype = p1
pos = ceil(70 * const(size.xscale)), ifelse((animelemtime(3) = 1), -56, ifelse((animelem = 5), -77, ifelse((animelem = 7), -61, ifelse((animelem = 9), -76, -100))))
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 4001, Spark]
type = explod
trigger1 = !map(mysparks)
trigger1 = animelem = 2 || animelem = 4 || animelem = 6 || animelem = 8 || animelem = 10
anim = F3
ID = 8000
postype = p1
pos = ceil(70 * const(size.xscale)), ifelse((animelem = 8), -62, -82)
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 4001, Spark]
type = explod
trigger1 = !map(mysparks)
trigger1 = animelemtime(3) = 1 || animelem = 5 || animelem = 7 || animelem = 9 || animelem = 11
anim = F3
ID = 8000
postype = p1
pos = ceil(70 * const(size.xscale)), ifelse((animelemtime(3) = 1), -56, ifelse((animelem = 5), -77, ifelse((animelem = 7), -61, ifelse((animelem = 9), -76, -100))))
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 4001, Throw]
type = targetstate
trigger1 = numtarget && animelem = 12
value = 4003

[State 4001, Type]
type = statetypeset
trigger1 = animelemtime(11) >= 0
statetype = A
movetype = I
physics = N

[State 4001, gravity]
type = veladd
trigger1 = animelemtime(11) >= 0
y = 0.43

[State 4001, Vel]
type = velset
trigger1 = animelem = 11
x = -3
y = -6.67

[State 4001, End]
type = changestate
trigger1 = animelemtime(11) > 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = ifelse(winko, 4090, 4005)


[Statedef 4005]
type = S
movetype = I
physics = S
anim = 4005
velset = 0, 0
sprpriority = -1
ctrl = 0

[State 4005, Pos]
type = posset
trigger1 = !time
y = 0

[State 4005, Snd]
type = playsnd
trigger1 = animelem = 3
value = 4, 3
channel = 0

[State 4005, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 1
channel = 1

[State 4005, Snd]
type = playsnd
trigger1 = !time
value = 0, 52

[State 4005, Dust]
type = explod
trigger1 = !time
anim = 7102
sprpriority = -5
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 4005, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- TARGET ---
[Statedef 4002]
type = A
physics = N
movetype = H
velset = 0, 0
ctrl = 0

[State 4002, Anim]
type = changeanim2
trigger1 = !time
value = 4002

[State 4002, Palfx]
type = palfx
trigger1 = animelemtime(2) = 0 || animelemtime(3) = 0 || animelemtime(4) = 0 || animelemtime(5) = 0 || animelemtime(6) = 0
trigger2 = animelemtime(7) = 0 || animelemtime(8) = 0 || animelemtime(9) = 0 || animelemtime(10) = 0 || animelemtime(11) = 0
sinadd = -128, -128, -128, 80
color = 0
time = 20

[State 4002, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0

[State 4002, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 4003]
type = A
physics = N
movetype = H
ctrl = 0

[State 4003, Palfx]
type = palfx
trigger1 = !time
add = 0, 0, 0
sinadd = 0, 0, 0, 1
time = 1

[State 4003, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0

[State 4003, Accel]
type = veladd
trigger1 = 1
y = 0.4850;yaccel

[State 4003, Accel]
type = velset
trigger1 = !time
x = -2
y = -16

[State 4003, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5051), 5051, 5030)

[State 4003, Anim]
type = changeanim
trigger1 = anim = 5051
trigger1 = vel y > 0
value = 5061

[State 4003, Anim]
type = changeanim
trigger1 = anim = 5030
trigger1 = vel y > 0
value = ifelse(selfanimexist(5035), 5035, 5050)

[State 4003, Anim]
type = changeanim
trigger1 = !animtime
trigger1 = anim = 5035
value = 5050

[State 4003, Hit Ground]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 5100
