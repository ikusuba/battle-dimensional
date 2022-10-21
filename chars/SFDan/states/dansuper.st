; ______________________________
;| Dan by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;============================================================================================
;======================================<SUPER STATES>========================================
;============================================================================================

;======================<SHINKUU GADOU KEN>=============================
[Statedef 3000]
type = S
physics = S
movetype = A
anim = 3000
ctrl = 0
velset = 0, 0
poweradd = -1000
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

[State 3000, Width]
type = width
trigger1 = animelemtime(4) = -1
value = floor(30 * const(size.xscale))

[State 3000, Snd]
type = playsnd
trigger1 = time = 3
value = 4, 16
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
pos = ceil(-44 * const(size.xscale)), ceil(-185 * const(size.yscale))
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
pos = ceil(-44 * const(size.xscale)), ceil(-185 * const(size.yscale))
sound = s0, 8500
p2defmul = 1 + (0 * (fvar(5) := 0))
darken = !map(mysuperpause)

[State 3000, NHB]
type = nothitby
trigger1 = animelemtime(4) < -1
time = 1
value = SCA

[State 3000, Correct Projectile Trade]
type = hitby
trigger1 = animelem = 4
value2 = SCA, AA, AT
time = 1

[State 3000, gadouken]
type = helper
trigger1 = animelem = 4
helpertype = normal
stateno = 3005
ID = 3005
name = "Shinkuu Gadouken"
postype = p1
pos = floor(120 * const(size.xscale)), floor(-122 * const(size.yscale))
size.xscale = 0.750
size.yscale = 0.375
ownpal = 1

[State 3000, Snd]
type = playsnd
trigger1 = animelem = 4
value = 4, 20
channel = 0

[State 3000, Snd]
type = playsnd
trigger1 = animelem = 4
value = 5, 1

[State 3000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================<KOURYUU REKKA>=============================
[Statedef 3100]
type = S
physics = S
movetype = A
ctrl = 0
anim = 3100
velset = 0, 0
poweradd = -1000
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

[State 3100, Button]
type = varset
trigger1 = !AIlevel
trigger1 = time <= 0
var(11) = ifelse(map(str_c), 2, ifelse(map(str_b), 1, 0))
ignorehitpause = 1
persistent = 0

[State 3100, Button AI]
type = varset
trigger1 = AIlevel
trigger1 = time <= 0
var(11) = 2

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
value = 4, 15
channel = 0

[State 3100, Super Pause FX]
type = helper
trigger1 = map(mysuperpause)
trigger1 = time = 3
helpertype = normal
stateno = 7500
ID = 7500
name = "Superpause FX"
postype = p1
pos = ceil(30 * const(size.xscale)), ceil(-98 * const(size.yscale))
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3100, Super Pause]
type = superpause
trigger1 = time = 3
time = 43
movetime = 43
anim = ifelse(map(mysuperpause), -1, 100)
pos = ceil(30 * const(size.xscale)), ceil(-98 * const(size.yscale))
sound = s0, 8500
p2defmul = 1 + (0 * (fvar(5) := 0))
darken = !map(mysuperpause)

[State 3100, NHB]
type = nothitby
trigger1 = anim = 3100
trigger1 = animelemtime(2) < 1
time = 1
value = SCA
ignorehitpause = 1

[State 3100, Vel]
type = velset
trigger1 = anim = 3100
trigger1 = animelem = 2
x = ifelse(var(11) = 2, 12, ifelse(var(11) = 1, 7, 0))

[State 3100, Dust]
type = helper
trigger1 = anim = 3100
trigger1 = animelem = 2
helpertype = normal
stateno = 7104
ID = 7100
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 3100, Snd]
type = playsnd
trigger1 = anim = 3100
trigger1 = animelem = 10
value = 4, 9
channel = 0

[State 3100, Vel]
type = velset
trigger1 = anim = 3100
trigger1 = animelemtime(11) = 1
y = -11

[State 3100, Snd]
type = playsnd
trigger1 = anim = 3100
trigger1 = animelem = 11
value = 0, 41

[State 3100, Dust]
type = helper
trigger1 = anim = 3100
trigger1 = animelem = 11
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 3100, Snd]
type = playsnd
trigger1 = anim = 3100
trigger1 = animelem = 2
value = 0, 102

[State 3100, Snd]
type = playsnd
trigger1 = anim = 3100
trigger1 = animelem = 3 || animelem = 10
value = 1, 3
channel = 1

[State 3100, Vel]
type = velmul
trigger1 = vel y < 0
x = 0.8

[State 3100, Type]
type = statetypeset
trigger1 = anim = 3100
trigger1 = animelemtime(11) >= 0
trigger2 = anim = 3101
statetype = A
physics = N

[State 3100, Accel]
type = veladd
trigger1 = anim = 3100
trigger1 = animelemtime(11) >= 1
trigger2 = anim = 3101
y = 0.5

[State 3100, Anim]
type = changeanim
trigger1 = anim = 3100
trigger1 = animelemtime(11) > 0 && vel y > -2
value = 3101
persistent = 0

[State 3100, Hit Low]
type = hitdef
trigger1 = animelem = 2 && anim = 3100
trigger1 = var(15) < 2
attr = S, HA
damage = 40, 10
dizzypoints = 0
guardpoints = -ceil(fvar(10) * 13)
animtype = Medium
fall.animtype = Medium
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 4, 4
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 50) * (var(36) := 90), var(37) := -138
hitsound = -1 + 0 * (var(31) := 3)
guardsound = -1
ground.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = 0, 0
ground.cornerpush.veloff = 0
air.velocity = 0, -4
getpower = 0, 0
givepower = 40, 40
envshake.time = 12
envshake.freq = 180
envshake.ampl = 2
yaccel = 0.4850
forcestand = 1
air.fall = 1
fall.recover = 0

[State 3100, Hit High]
type = hitdef
trigger1 = animelem = 3 && anim = 3100
trigger1 = var(15) < 3
trigger2 = animelem = 4 && anim = 3100
trigger2 = var(15) < 3
attr = S, HA
damage = 40, 10
dizzypoints = 0
guardpoints = -ceil(fvar(10) * 13)
animtype = Hard
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 4, 4
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 50) * (var(36) := 76), var(37) := ifelse((animelem = 3), -166, -194)
hitsound = -1 + 0 * (var(31) := 3)
guardsound = -1
ground.type = High
ground.slidetime = 20
ground.hittime = 20
ground.velocity = 0, 0
ground.cornerpush.veloff = 0
air.velocity = 0, -4
getpower = 0, 0
givepower = 40, 40
envshake.time = 12
envshake.freq = 180
envshake.ampl = 2
yaccel = 0.4850
forcestand = 1
air.fall = 1
fall.recover = 0

[State 3100, Hitlow2]
type = hitdef
trigger1 = animelem = 10 && anim = 3100
trigger1 = var(15) < 4
attr = S, HA
damage = 40, 10
dizzypoints = 0
guardpoints = -ceil(fvar(10) * 13)
animtype = Medium
fall.animtype = Medium
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 4, 4
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 90), var(37) := -138
hitsound = -1 + 0 * (var(31) := 3)
guardsound = -1
ground.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = 0, 0
air.velocity = 0, -4
guard.velocity = 0
ground.cornerpush.veloff = 0
getpower = 0, 0
givepower = 40, 40
envshake.time = 12
envshake.freq = 180
envshake.ampl = 2
fall = 0
air.fall = 1
fall.recover = 0
yaccel = 0.4850
forcestand = 1

[State 3100, Hithigh2]
type = hitdef
trigger1 = animelem = 11 && anim = 3100
trigger1 = var(15) < 4
attr = S, HA
damage = 30, 8
dizzypoints = 0
guardpoints = -ceil(fvar(10) * 10)
animtype = Up
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 4, 4
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 76), var(37) := -166
hitsound = -1 + 0 * (var(31) := 3)
guardsound = -1
ground.type = High
ground.slidetime = 20
ground.hittime = 20
ground.velocity = 0, -9
air.velocity = 0, -9
guard.velocity = 0
ground.cornerpush.veloff = 0
getpower = 0, 0
givepower = 40, 40
envshake.time = 12
envshake.freq = 180
envshake.ampl = 2
fall = 1
fall.recover = 0
yaccel = 0.4850
forcestand = 1

[State 3100, Hitfinal]
type = hitdef
trigger1 = animelem = 12 && anim = 3100
trigger1 = var(15) < 5
attr = A, HA
damage = 30, 8
dizzypoints = 0
guardpoints = -ceil(fvar(10) * 10)
animtype = Diagup
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 4, 4
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 76), var(37) := -194
hitsound = -1 + 0 * (var(31) := 3)
guardsound = -1
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -3, -9
air.velocity = -3, -9
guard.velocity = 0
ground.cornerpush.veloff = 0
getpower = 0, 0
givepower = 40, 40
envshake.time = 12
envshake.freq = 180
envshake.ampl = 2
fall = 1
fall.recover = 0
yaccel = 0.4850
forcestand = 1

[State Idle]
type = statetypeset
trigger1 = anim != 3100
movetype = I

[State Land]
type = changestate
trigger1 = statetype = A
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1102


;======================<HISHOU BURAIKEN>=============================
[Statedef 3200]
type = S
physics = S
movetype = A
ctrl = 0
anim = 3200
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
value = 4, 4
channel = 0

[State 3200, Super Pause FX]
type = helper
trigger1 = map(mysuperpause)
trigger1 = time = 3
helpertype = normal
stateno = 7510
ID = 7500
name = "Superpause FX"
postype = p1
pos = ceil(0 * const(size.xscale)), ceil(-155 * const(size.yscale))
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3200, Super Pause]
type = superpause
trigger1 = time = 3
time = 45
movetime = 45
anim = ifelse(map(mysuperpause), -1, 101)
pos = ceil(0 * const(size.xscale)), ceil(-155 * const(size.yscale))
sound = s0, 8510
p2defmul = 1 + (0 * (fvar(5) := 0))
darken = !map(mysuperpause)

[State 3200, NHB]
type = nothitby
trigger1 = anim = 3200
trigger1 = animelemtime(9) < 0
time = 1
value = SCA
ignorehitpause = 1

[State 3200, Snd]
type = playsnd
trigger1 = anim = 3200
trigger1 = animelem = 5
value = 3, 6
channel = 0
[State 3200, Snd]
type = playsnd
trigger1 = anim = 3200
trigger1 = (animelem = 48 || animelem = 54)
value = 3, 0
channel = 0
[State 3200, Snd]
type = playsnd
trigger1 = anim = 3200
trigger1 = animelem = 64
value = 4, 0
channel = 0

[State 3200, Snd]
type = playsnd
triggerall = anim = 3200
trigger1 = animelem = 8 || animelem = 14 || animelem = 21 || animelem = 30 || animelem = 37
trigger2 = animelem = 43 || animelem = 49 || animelem = 55 || animelem = 61 || animelem = 66
value = 1, ifelse((animelem = 8 || animelem = 21 || animelem = 43 || animelem = 55), 1, 4)
channel = 1
[State 3200, Snd]
type = playsnd
trigger1 = anim = 3200
trigger1 = animelem = 66
value = 1, 3
channel = 1

[State 3200, Vel]
type = velset
trigger1 = anim = 3200
trigger1 = animelem = 66
y = -11
[State 3200, Snd]
type = playsnd
trigger1 = anim = 3200
trigger1 = animelem = 66
value = 0, 41
[State 3200, Dust]
type = helper
trigger1 = anim = 3200
trigger1 = animelem = 66
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1


[State 3200, Vel]
type = velmul
trigger1 = vel y < 0
x = 0.8

[State 3200, Type]
type = statetypeset
trigger1 = anim = 3200
trigger1 = animelemtime(66) >= 0
trigger2 = anim = 3101
statetype = A
physics = N
[State 3200, Type]
type = veladd
trigger1 = anim = 3200
trigger1 = animelemtime(66) >= 0
trigger2 = anim = 3101
y = 0.5

[State 3200, Anim]
type = changeanim
trigger1 = anim = 3200
trigger1 = animelemtime(66) > 0 && vel y > -2
value = 3101
persistent = 0

[State 3200, Hit Low]
type = hitdef
trigger1 = anim = 3200
trigger1 = animelem = 8 || animelem = 14 || animelem = 21 || animelem = 55
trigger1 = var(15) < (2 + hitcount)
attr = S, HA
damage = 30, 8
dizzypoints = 0
guardpoints = -ceil(fvar(10) * 10)
animtype = Hard
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 0, 4
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 80) * (var(36) := 150), var(37) := ifelse((animelem = 8), -160, ifelse((animelem = 14), -100, ifelse((animelem = 21), -130, -96)))
hitsound = -1 + 0 * (var(31) := ifelse((animelem = 8 || animelem = 55), 3, 6))
guardsound = -1
ground.type = Low
ground.slidetime = 32
ground.hittime = 32
guard.hittime = 16
ground.velocity = ifelse(map(p2bodydistx) > 24, 3, 0), 0
ground.cornerpush.veloff = 0
air.velocity = 0, -6
air.fall = 1
fall.recover = 0
forcestand = 1
getpower = 0, 0
givepower = 40, 40
envshake.time = 12
envshake.freq = 180
envshake.ampl = 2
yaccel = 0.4850

[State 3200, Hit OTG]
type = hitdef
trigger1 = anim = 3200
trigger1 = animelem = 37 || animelem = 61
trigger1 = var(15) < (2 + hitcount)
attr = S, HA
damage = 30, 8
dizzypoints = 0
guardpoints = -ceil(fvar(10) * 10)
animtype = Hard
guardflag = M
hitflag = MAFD
priority = 4, Hit
pausetime = 0, 4
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 80) * (var(36) := 150), var(37) := -16
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = Low
ground.slidetime = 32
ground.hittime = 32
guard.hittime = 16
ground.velocity = ifelse(map(p2bodydistx) > 24, 3, 0), 0
ground.cornerpush.veloff = 0
air.velocity = 0, -6
air.fall = 1
fall.recover = 0
forcestand = 1
getpower = 0, 0
givepower = 40, 40
envshake.time = 12
envshake.freq = 180
envshake.ampl = 2
yaccel = 0.4850

[State 3200, Hit High]
type = hitdef
trigger1 = anim = 3200
trigger1 = animelem = 30 || animelem = 43 || animelem = 49
trigger1 = var(15) < (2 + hitcount)
attr = S, HA
damage = 30, 8
dizzypoints = 0
guardpoints = -ceil(fvar(10) * 10)
animtype = Hard
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 0, 4
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 80) * (var(36) := 150), var(37) := ifelse((animelem = 43), -184, -176)
hitsound = -1 + 0 * (var(31) := ifelse((animelem = 43), 3, 6))
guardsound = -1
ground.type = High
ground.slidetime = 32
ground.hittime = 32
guard.hittime = 16
ground.velocity = ifelse(map(p2bodydistx) > 24, 3, 0), 0
ground.cornerpush.veloff = 0
air.velocity = 0, -6
air.fall = 1
fall.recover = 0
forcestand = 1
getpower = 0, 0
givepower = 40, 40
envshake.time = 12
envshake.freq = 180
envshake.ampl = 2
yaccel = 0.4850

[State 3200, Hit Kouryuken]
type = hitdef
trigger1 = animelem = 65 && anim = 3200
trigger1 = var(15) < (2 + hitcount)
attr = S, HA
damage = 30, 8
dizzypoints = 0
guardpoints = -ceil(fvar(10) * 10)
animtype = Medium
fall.animtype = Medium
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 90), var(37) := -138
hitsound = -1 + 0 * (var(31) := 3)
guardsound = -1
ground.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = 0, -11
air.velocity = 0, -11
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = 0, 0
givepower = 40, 40
fall = 1
fall.recover = 0
forcestand = 1
envshake.time = 12
envshake.freq = 180
envshake.ampl = 2
yaccel = 0.4850

[State 3200, Hit Final]
type = hitdef
trigger1 = animelem = 66 && anim = 3200
trigger1 = var(15) < (2 + hitcount)
attr = A, HA
damage = 20, 5
dizzypoints = 0
guardpoints = -ceil(fvar(10) * 7)
animtype = Up
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 76), var(37) := -192
hitsound = -1 + 0 * (var(31) := 3)
guardsound = -1
ground.type = High
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -4, -11
air.velocity = -4, -11
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

[State Idle]
type = statetypeset
trigger1 = anim != 3200
movetype = I

[State Land]
type = changestate
trigger1 = statetype = A
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1102


;======================<CHOUHATSU DENSETSU>=============================
[Statedef 3300]
type = S
physics = S
movetype = I
ctrl = 0
anim = 3300
velset = 0, 0
poweradd = -1000 * !var(53)
sprpriority = 2
facep2 = 1

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

[State 3300, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 3300, Erase Inputs]
type = mapset
map = "erase_super"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 3300, Snd]
type = playsnd
trigger1 = time = 3
value = 4, 2
channel = 0

[State 3300, Super Pause FX]
type = helper
trigger1 = map(mysuperpause)
trigger1 = time = 3
trigger1 = !var(53)
helpertype = normal
stateno = 7500
ID = 7500
name = "Superpause FX"
postype = p1
pos = ceil(85 * const(size.xscale)), ceil(-182 * const(size.yscale))
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3300, Super Pause]
type = superpause
trigger1 = time = 3
trigger1 = !var(53)
time = 43
movetime = 43
anim = ifelse(map(mysuperpause), -1, 100)
pos = ceil(85 * const(size.xscale)), ceil(-182 * const(size.yscale))
sound = s0, 8500
p2defmul = 1 + (0 * (fvar(5) := 0))
darken = !map(mysuperpause)

[State 3300, NHB]
type = nothitby
trigger1 = time <= 60
trigger1 = !var(53)
time = 1
value = SCA
ignorehitpause = 1

[State 3300, Push]
type = playerpush
trigger1 = anim = 3301
value = 0

[State 3300, Densetsu Var]
type = varset
trigger1 = anim = 3300 || anim = 3303
var(51) = 0
[State 3300, Densetsu Var]
type = varadd
trigger1 = anim = 3301 && !animtime
var(51) = 1
[State 3300, Densetsu Var]
type = varset
trigger1 = anim = 3301 && !animtime
trigger1 = roundstate != 2
trigger1 = var(51) < 6
var(51) = 6

[State 3300, Anim]
type = changeanim
trigger1 = anim = 3300 && !animtime
value = 3301

[State 3300, Anim]
type = changeanim
trigger1 = anim = 3301 && !animtime && var(51) >= 6
value = 3302

[State 3300, Anim]
type = changeanim
trigger1 = anim = 3301 && !animtime && var(51) = 5
value = ifelse(random < 500, 3304, 3314)

[State 3300, Anim]
type = changeanim
trigger1 = anim = 3301 && !animtime && var(51) = 4
trigger1 = random < 500
value = ifelse(random < 500, 3310, 3313)

[State 3300, Anim]
type = changeanim
trigger1 = anim = 3301 && !animtime
value = ifelse(random < 142, 3305, ifelse(random < 167, 3306, ifelse(random < 200, 3307, ifelse(random < 250, 3308, ifelse(random < 333, 3309, ifelse(random < 500, 3311, 3312))))))

[State 3300, Anim]
type = changeanim
trigger1 = anim = 3302 && vel y > 0 && (pos y > -vel y)
value = 3303

[State 3300, Anim]
type = changeanim
trigger1 = anim >= 3304 && !animtime
value = 3301

[State 3300, Snd]
type = playsnd
trigger1 = anim = 3302 && animelem = 5
value = 4, 17
channel = 0
[State 3300, Snd]
type = playsnd
trigger1 = anim = 3303 && animelem = 2
value = 4, 32
channel = 0
[State 3300, Snd]
type = playsnd
trigger1 = anim = 3304 && animelem = 5
value = 4, 24
channel = 0
[State 3300, Snd]
type = playsnd
trigger1 = anim = 3305 && animelem = 5
trigger2 = anim = 3306 && animelem = 4
trigger3 = anim = 3307 && animelem = 3
trigger4 = anim = 3308 && animelem = 5
trigger5 = anim = 3309 && animelem = 4
trigger6 = anim = 3311 && animelem = 3
trigger7 = anim = 3312 && animelem = 3
trigger8 = anim = 3314 && animelem = 3
trigger9 = anim = 3320 && animelem = 4
value = 4, ifelse(random < 90, 1, ifelse(random < 100, 2, ifelse(random < 111, 3, ifelse(random < 125, 10, ifelse(random < 142, 11, ifelse(random < 167, 13, ifelse(random < 200, 14, ifelse(random < 250, 17, ifelse(random < 333, 21, ifelse(random < 500, 39, 40))))))))))
channel = 0

[State 3300, Snd]
type = playsnd
trigger1 = anim = 3313 && animelem = 3
value = 5000, 5
channel = 0
[State 3300, Snd]
type = playsnd
trigger1 = anim = 3310 && animelem = 3
value = 5000, 4
channel = 0

[State 3300, Whiff Snd]
type = playsnd
trigger1 = anim = 3304 && animelem = 5
trigger2 = anim = 3305 && animelem = 4
trigger3 = anim = 3306 && animelem = 3
trigger4 = anim = 3307 && animelem = 4
trigger5 = anim = 3308 && animelem = 5
trigger6 = anim = 3309 && animelem = 4
value = 1, 1
channel = 1

[State 3300, Snd]
type = playsnd
trigger1 = anim = 3314 && animelem = 4
value = 5, 11

[State 3300, Fill Power]
type = palfx
trigger1 = anim = 3303 && animelem = 1
trigger1 = roundstate = 2
time = 20
add = 255, 100, 0
sinadd = -255, -100, 0, 80

[State 3300, Fill Power]
type = playsnd
trigger1 = anim = 3303 && animelem = 1
trigger1 = roundstate = 2
value = 7, 8
channel = 7

[State 3300, Fill Power]
type = powerset
trigger1 = anim = 3303 && animelem = 1
trigger1 = roundstate = 2
value = powermax

[State 3300, Snd]
type = playsnd
trigger1 = anim = 3302
value = 5, 5
persistent = 0

[State 3300, Snd]
type = pause
trigger1 = anim = 3302 && animelemtime(3) >= 0
trigger1 = !(time % 2)
time = 1

[State 3300, Flashes]
type = playsnd
trigger1 = anim = 3302 && animelemtime(3) >= 0 && !(time % 6)
value = 6, 2 + (random % 3)

[State 3300, Flashes]
type = explod
trigger1 = anim = 3302 && animelemtime(3) >= 0 && !(time % 2)
anim = 4110
ID = 4105
sprpriority = -5
postype = left
pos = 160, 120
random = 160, 120
;random = 320, 240
facing = -1 + (random < 500) * 2
scale = 0.5 + (random / 2000.0), 0.5 + (random / 2000.0)
ownpal = 1
pausemovetime = 20
supermovetime = 20

[State 3300, Flashes]
type = bgpalfx
trigger1 = anim = 3302 && animelemtime(3) >= 0 && !(time % 6)
time = 6
add = 128, 128, 128
sinadd = -128, -128, -128, 24

[State 3300, Turn]
type = turn
triggerall = p2dist x < 0
trigger1 = anim = 3302 && animelem = 3
trigger2 = anim = 3304 && animelem = 3
trigger3 = anim = 3305 && animelem = 3
trigger4 = anim = 3306 && animelem = 2
trigger5 = anim = 3307 && animelem = 3
trigger6 = anim = 3308 && animelem = 3
trigger7 = anim = 3309 && animelem = 3
trigger8 = anim = 3310 && animelem = 3
trigger9 = anim = 3311 && animelem = 3
trigger10 = anim = 3312 && animelem = 3
trigger11 = anim = 3313 && animelem = 3
trigger12 = anim = 3314 && animelem = 3
trigger13 = anim = 3320 && animelem = 3

[State 3300, Vel]
type = velset
trigger1 = anim = 3302 && animelem = 3
trigger2 = anim = 3304 && animelem = 3
trigger3 = anim = 3305 && animelem = 3
trigger4 = anim = 3306 && animelem = 2
trigger5 = anim = 3307 && animelem = 3
trigger6 = anim = 3308 && animelem = 3
trigger7 = anim = 3309 && animelem = 3
trigger8 = anim = 3310 && animelem = 3
trigger9 = anim = 3311 && animelem = 3
trigger10 = anim = 3312 && animelem = 3
trigger11 = anim = 3313 && animelem = 3
trigger12 = anim = 3314 && animelem = 3
trigger13 = anim = 3320 && animelem = 3
x = 0

[State 3300, Taunt Hit]
type = helper
triggerall = var(53) && !numhelper(4190)
trigger1 = anim = 3302 && animelem = 5
trigger2 = anim = 3303 && animelem = 2
trigger3 = anim = 3304 && animelem = 5
trigger4 = anim = 3305 && animelem = 5
trigger5 = anim = 3306 && animelem = 4
trigger6 = anim = 3307 && animelem = 3
trigger7 = anim = 3308 && animelem = 5
trigger8 = anim = 3309 && animelem = 4
trigger9 = anim = 3310 && animelem = 3
trigger10 = anim = 3311 && animelem = 3
trigger11 = anim = 3312 && animelem = 3
trigger12 = anim = 3313 && animelem = 3
trigger13 = anim = 3314 && animelem = 3
trigger14 = anim = 3320 && animelem = 4
trigger15 = anim = 3300 && animelemtime(3) = -1
helpertype = normal
stateno = 4190
ID = 4190
name = "Taunt Hit"
postype = p1
pos = 0, 0
size.xscale = 1
size.yscale = 1

[State 3300, Vel]
type = velset
trigger1 = anim = 3301
x = 6

[State 3300, Vel Moonwalk]
type = velset
trigger1 = anim = 3312
x = 0
[State 3300, Vel Moonwalk]
type = velset
triggerall = anim = 3312
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
trigger2 = animelemtime(6) >= 0 && animelemtime(7) < 0
x = -4

[State 3300, Moonwalk steps]
type = playsnd
trigger1 = anim = 3312
trigger1 = animelem = 3 || animelem = 6
value = 0, ifelse((animelem = 3), 106, 103)

[State 3300, Vel]
type = posset
trigger1 = anim = 3301 || anim = 3303
y = 0
[State 3300, Vel]
type = velset
trigger1 = anim = 3303
x = 0
y = 0
[State 3300, Vel]
type = velset
trigger1 = anim = 3302 && animelem = 3
x = 4
y = -12
[State 3300, Accel]
type = veladd
trigger1 = anim = 3302 && animelemtime(3) >= 0
y = 0.5

[State 3300, Snd]
type = playsnd
trigger1 = anim = 3301 && animelem = 1
trigger2 = anim = 3311 && animelem = 1
value = 0, 102
[State 3300, Snd]
type = playsnd
trigger1 = anim = 3302 && animelem = 3
value = 0, 41

[State 3300, Dust]
type = explod
trigger1 = anim = 3301 && animelemtime(3) >= 0 && !(time % 5)
anim = 7103
sprpriority = 3
postype = p1
vel = -1, 0
scale = 0.5, 0.5
ownpal = 1

[State 3300, Dust]
type = explod
trigger1 = anim = 3311 && animelem = 3
anim = 7100
ID = 7100
sprpriority = 3
postype = p1
pos = 0, 0
vel = 0, 0
ownpal = 1
scale = 0.5, 0.5

[State 3300, Dust]
type = helper
trigger1 = anim = 3302 && animelem = 3
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 3300, Snd]
type = playsnd
trigger1 = anim = 3303 && animelem = 1
value = 0, 52
[State 3300, Snd]
type = playsnd
trigger1 = anim = 3313 && animelem = 6
value = 5, 6
[State 3300, Dust]
type = explod
trigger1 = anim = 3303 && animelem = 1
anim = 7102
ID = 7102
sprpriority = -2
postype = p1
removetime = -2
ownpal = 1
scale = 0.5, 0.5
[State 3300, Dust]
type = explod
trigger1 = anim = 3313 && animelem = 6
anim = 7102
ID = 7102
sprpriority = -2
postype = p1
removetime = -2
ownpal = 1
scale = 0.75, 0.75

[State 3300, Shake]
type = envshake
trigger1 = anim = 3313 && animelem = 6
time = 10
freq = 180
ampl = 1

[State 3300, Turn off CS]
type = varset
trigger1 = var(53) && anim = 3303
var(53) = 0

[State 3300, Type]
type = statetypeset
trigger1 = anim = 3300 || anim = 3303
trigger2 = anim = 3301 && animelemtime(2) < 0
trigger3 = anim = 3305 && animelemtime(3) >= 0 && animelemtime(20) < 0
trigger4 = anim = 3307 && animelemtime(3) >= 0 && animelemtime(10) < 0
trigger5 = anim = 3308 && animelemtime(3) >= 0 && animelemtime(9) < 0
trigger6 = anim = 3309 && animelemtime(3) >= 0 && animelemtime(11) < 0
trigger7 = anim = 3310 && animelemtime(3) >= 0 && animelemtime(11) < 0
trigger8 = anim = 3311 && animelemtime(11) >= 0
trigger9 = anim = 3312 && animelemtime(3) >= 0 && animelemtime(10) < 0
trigger10 = anim = 3314 && animelemtime(3) >= 0 && animelemtime(12) < 0
trigger11 = anim = 3320 && animelemtime(3) >= 0 && animelemtime(9) < 0
statetype = S
physics = S

[State 3300, Type]
type = statetypeset
trigger1 = anim = 3302 && animelemtime(3) < 0
trigger2 = anim = 3304 && (animelemtime(3) < 0 || animelemtime(7) >= 0)
trigger3 = anim = 3305 && (animelemtime(3) < 0 || animelemtime(20) >= 0)
trigger4 = anim = 3306
trigger5 = anim = 3307 && (animelemtime(3) < 0 || animelemtime(10) >= 0)
trigger6 = anim = 3308 && (animelemtime(3) < 0 || animelemtime(9) >= 0)
trigger7 = anim = 3309 && (animelemtime(3) < 0 || animelemtime(11) >= 0)
trigger8 = anim = 3310 && (animelemtime(3) < 0 || animelemtime(11) >= 0)
trigger9 = anim = 3311 && (animelemtime(3) < 0 || animelemtime(12) >= 0)
trigger10 = anim = 3312 && (animelemtime(3) < 0 || animelemtime(10) >= 0)
trigger11 = anim = 3313
trigger12 = anim = 3314 && (animelemtime(3) < 0 || animelemtime(12) >= 0)
trigger13 = anim = 3320 && (animelemtime(3) < 0 || animelemtime(9) >= 0)
statetype = C
physics = C

[State 3300, Type]
type = statetypeset
trigger1 = anim = 3301 && animelemtime(2) >= 0
trigger2 = anim = 3302 && animelemtime(3) >= 0
trigger3 = anim = 3311 && animelemtime(3) >= 0 && animelemtime(11) < 0
trigger4 = anim = 3313 && animelemtime(3) >= 0 && animelemtime(6) < 0
statetype = A
physics = N

[State 3300, End]
type = changestate
trigger1 = anim = 3303 && !animtime
value = 0
ctrl = 1


;======================<GADOU SHOUKOU KEN>=============================
[Statedef 3400]
type = S
physics = S
movetype = A
anim = 3400
ctrl = 0
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

[State 3400, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 3400, Erase Inputs]
type = mapset
map = "erase_super"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 3400, Snd]
type = playsnd
trigger1 = time = 3
value = 3, 7
channel = 0

[State 3400, Super Pause FX]
type = helper
trigger1 = map(mysuperpause)
trigger1 = time = 3
helpertype = normal
stateno = 7510
ID = 7500
name = "Superpause FX"
postype = p1
pos = ceil(8 * const(size.xscale)), ceil(-110 * const(size.yscale))
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3400, Super Pause]
type = superpause
trigger1 = time = 3
time = 45
movetime = 45
anim = ifelse(map(mysuperpause), -1, 101)
pos = ceil(8 * const(size.xscale)), ceil(-110 * const(size.yscale))
sound = s0, 8510
p2defmul = 1 + (0 * (fvar(5) := 0))
darken = !map(mysuperpause)

[State 3400, NHB]
type = nothitby
trigger1 = 1
time = 1
value = SCA

[State 3400, End]
type = changestate
trigger1 = !animtime
value = 3401


;--- Charge ---
[Statedef 3401]
type = S
physics = S
movetype = A
anim = 3401
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 3401, Charge]
type = varset
trigger1 = !time
var(0) = 0

[State 3401, Charge]
type = varadd
trigger1 = 1
var(0) = 1

[State 3401, Snd]
type = playsnd
trigger1 = time = 1
value = 4, 25
channel = 0

[State 3401, FX]
type = helper
trigger1 = animelem = 2
trigger1 = !numhelper(3404)
helpertype = normal
stateno = 3404
ID = 3404
name = "Gadouken Charge"
postype = p1
ownpal = 1

[State 3401, End]
type = changestate
triggerall = time
trigger1 = roundstate != 2
trigger2 = time >= 180
trigger3 = !AIlevel
trigger3 = (command = "/x" + command = "/y" + command = "/z") < 1
trigger4 = AIlevel
trigger4 = inguarddist
value = 3402


;--- Ready ---
[Statedef 3402]
type = S
physics = S
movetype = A
anim = 3402
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 3402, Width]
type = width
trigger1 = animelemtime(3) = -1
value = floor(30 * const(size.xscale))

[State 3402, Snd]
type = playsnd
trigger1 = animelem = 1
value = 4, 26
channel = 0

[State 3402, Snd]
type = playsnd
trigger1 = animelem = 3
value = 5, 1

[State 3402, Gadouken]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 3405
ID = 3405
name = "Gadou Shoukou Ken"
postype = p1
pos = floor(140 * const(size.xscale)), floor(-130 * const(size.yscale))
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3402, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;======================<CHOU DANKUU KYAKU>=============================
[Statedef 3500]
type = S
physics = S
movetype = A
ctrl = 0
anim = 3500
velset = 0, 0
poweradd = -1000
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

[State 3500, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 3500, Erase Inputs]
type = mapset
map = "erase_super"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 3500, Snd]
type = playsnd
trigger1 = time = 3
value = 4, 7
channel = 0

[State 3500, Super Pause FX]
type = helper
trigger1 = map(mysuperpause)
trigger1 = time = 3
helpertype = normal
stateno = 7500
ID = 7500
name = "Superpause FX"
postype = p1
pos = ceil(-20 * const(size.xscale)), ceil(-30 * const(size.yscale))
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3500, Super Pause]
type = superpause
trigger1 = time = 3
time = 43
movetime = 43
anim = ifelse(map(mysuperpause), -1, 100)
pos = ceil(-20 * const(size.xscale)), ceil(-30 * const(size.yscale))
sound = s0, 8500
p2defmul = 1 + (0 * (fvar(5) := 0))
darken = !map(mysuperpause)

[State 3500, NHB]
type = nothitby
trigger1 = animelemtime(6) < 0
time = 1
value = SCA
ignorehitpause = 1

[State 3500, Vel]
type = velset
trigger1 = animelem = 3
x = 3
y = -5

[State 3500, Type]
type = statetypeset
trigger1 = animelemtime(2) >= 0 && animelemtime(10) < 0
statetype = A
physics = N
[State 3500, Accel]
type = veladd
trigger1 = animelemtime(3) >= 0 && animelemtime(10) < 0
y = 0.3

[State 3500, Type]
type = statetypeset
trigger1 = animelemtime(10) >= 0
statetype = A
physics = N
[State 3500, Type]
type = veladd
trigger1 = animelemtime(10) >= 0
y = 0.5

[State 3500, Snd]
type = playsnd
trigger1 = animelem = 3
value = 0, 41

[State 3500, Dust]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 3500, Snd]
type = playsnd
trigger1 = animelem = 7
value = 1, 6
channel = 1

[State 3500, Hit]
type = hitdef
trigger1 = animelem = 9
trigger1 = var(15) < 2
attr = A, HA
damage = 130, 33
dizzypoints = 0
guardpoints = -ceil(fvar(10) * 43)
animtype = Back
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 24, 24
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 40) * (var(36) := 140), var(37) := -108
hitsound = -1 + 0 * (var(31) := 6)
guardsound = -1
ground.type = Low
ground.slidetime = 16
ground.hittime = 16
ground.velocity = -12, -4.25
air.type = Low
air.velocity = -12, -4.25
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
fall.recovertime = 120
p2facing = 1
yaccel = 0.4850
airguard.ctrltime = 16
airguard.cornerpush.veloff = 0
airguard.velocity = ifelse(var(20), -4, -8), -1.5
forcestand = 1
ID = 3500

[State 3500, Wall Bounce]
type = targetstate
trigger1 = !map(wallbounce)
trigger1 = movehit && numtarget(3500)
trigger1 = (target(3500), stateno = 5000) || (target(3500), stateno = 5010) || (target(3500), stateno = 5020)
value = 1111200
ID = 3500
ignorehitpause = 1

[State 3500, Wall Bounce Limit]
type = mapset
map = "wallbounce"
trigger1 = numtarget(3500)
trigger1 = target(3500), stateno = 1111200
value = 1
ignorehitpause = 1

[State 3500, Juggle Reset]
type = varset
trigger1 = movehit = 1
trigger1 = numtarget(3500)
trigger1 = target(3500), stateno = 1111200
var(15) = 0
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(10) >= 0
movetype = I

[State 3500, End]
type = changestate
trigger1 = statetype = A
trigger1 = vel y > 0 && (pos y > -vel y)
value = 1203


;--- Target Hit Pause ---
[Statedef 1111200]
type = A
movetype = H
physics = N
velset = 0, 0

[State 1111200, Anim]
type = changeanim
trigger1 = 1
value = 5002

[State 1111200, End]
type = changestate
trigger1 = hitshakeover
value = 1111201


;--- Target Falling ---
[Statedef 1111201]
type = A
movetype = H
physics = N

[State 1111201, Accel]
type = veladd
trigger1 = 1
y = gethitvar(yaccel) * 0.67

[State 1111201, Vel]
type = hitvelset
trigger1 = !time
x = 1
y = 1

[State 1111201, screen]
type = screenbound
trigger1 = 1
value = 1
movecamera = (vel y < 0), 0

[State 1111201, Push]
type = playerpush
trigger1 = 1
value = 0

[State 1111201, Anim]
type = changeanim
trigger1 = !time
value = 5030

[State 1111201, Bounce]
type = changestate
trigger1 = time >= 4
trigger1 = backedgebodydist <= 0 || frontedgebodydist <= 0
value = 1111202

[State 1111201, End]
type = selfstate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 5100


;--- Target Hitting Wall ---
[Statedef 1111202]
type = A
movetype = H
physics = N

[State 1111202, turn]
type = turn
trigger1 = !time
trigger1 = frontedgedist < backedgedist

[State 1111202, Pos]
type = posadd
trigger1 = 1
x = -backedgebodydist

[State 1111202, Pos]
type = posfreeze
trigger1 = 1
x = 1
y = 1

[State 1111202, screen]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0

[State 1111202, Push]
type = playerpush
trigger1 = 1
value = 0

[State 1111202, Anim]
type = changeanim
trigger1 = 1
value = 5000

[State 1111202, Snd]
type = playsnd
trigger1 = !time
value = F7, 2

[State 1111202, FX]
type = explod
trigger1 = !time
anim = F72
postype = p1
pos = ceil(abs(pos x) - (gamewidth / 2)), const(size.mid.pos.y)
sprpriority = -5
ownpal = 1

[State 1111202, End]
type = changestate
trigger1 = time >= 4
value = 1111203


;--- Target Falling ---
[Statedef 1111203]
type = A
movetype = H
physics = N

[State 1111203, turn]
type = turn
trigger1 = !time

[State 1111203, Accel]
type = veladd
trigger1 = 1
y = 0.4850;yaccel

[State 1111203, Vel]
type = velset
trigger1 = !time
x = ((enemynear, pos x - pos x) * facing + 60) / 36.0
y = (pos y + 0.5 * 0.4850 * 36 ** 2) / -36.0

[State 1111203, Vel]
type = velset
trigger1 = !time
trigger1 = vel x != [-9, 0]
x = ifelse(vel x < -9, -9, 0)

[State 1111203, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5051), 5051, 5030)
[State 1111203, Anim]
type = changeanim
trigger1 = anim = 5030 && !animtime
value = 5050
[State 1111203, Anim]
type = changeanim
trigger1 = vel y > -3 && anim = 5051
value = 5061

[State 1111203, screen]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0

[State 1111203, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 1111203, End]
type = selfstate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 5100


;======================<OTOKO MICHI>=============================
[Statedef 4000]
type = S
physics = N
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
value = 4, 27
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
pos = ceil(7 * const(size.xscale)), ceil(-132 * const(size.yscale))
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 4000, Super Pause]
type = superpause
trigger1 = time = 3
time = 40
movetime = 40
anim = ifelse(map(mysuperpause), -1, 102)
pos = ceil(7 * const(size.xscale)), ceil(-132 * const(size.yscale))
sound = s0, 8520
p2defmul = 1 + (0 * (fvar(5) := 0))
darken = !map(mysuperpause)

[State 4000, NHB]
type = nothitby
trigger1 = animelemtime(4) < 4
time = 1
value = SCA

[State 4000, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
physics = N

[State 4000, Vel]
type = velset
trigger1 = animelem = 4
x = 2

[State 4000, Vel]
type = velset
trigger1 = animelem = 5
x = 0

[State 4000, Snd]
type = playsnd
trigger1 = animelem = 4
value = 5000, 1
channel = 0

[State 4000, Snd]
type = playsnd
trigger1 = animelem = 4
value = 0, 105
channel = 1

[State 4000, Tears Front]
type = explod
trigger1 = (time % 4) = 0
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
anim = 4009
ID = 4009
sprpriority = 3
postype = p1
pos = floor(101 * const(size.xscale)), floor(-155 * const(size.yscale))
random = 2, 2
;random = 4, 4
vel = -1 -(random / 1000.0), -(random / 1000.0)
accel = 0, 0.1 + (random / 10000.0)
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
scale = 0.125 + (random / 8000.0), 0.125 + (random / 8000.0)
supermovetime = 60
ownpal = 1

[State 4000, Tears Back]
type = explod
trigger1 = (time % 4) = 2
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
anim = 4009
ID = 4009
sprpriority = 1
postype = p1
pos = floor(101 * const(size.xscale)), floor(-155 * const(size.yscale))
random = 2, 2
;random = 4, 4
vel = -1 -(random / 1000.0), -(random / 1000.0)
accel = 0, 0.1 + (random / 10000.0)
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
scale = 0.1 + (random / 10000.0), 0.1 + (random / 10000.0)
supermovetime = 60
ownpal = 1

[State 4000, Dust]
type = explod
trigger1 = !(time % 6)
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
anim = 7103
sprpriority = 3
postype = p1
pos = floor(50 * const(size.xscale))
vel = -2, 0
scale = 0.5, 0.5
ownpal = 1

[State 4000, Miss]
type = hitdef
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
attr = S, HT
hitflag =

[State 4000, Hit]
type = hitdef
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
trigger1 = !map(unthrowable) && numenemy
trigger1 = map(p2bodydistx) <= 36;MvSF. 27 for SvC
trigger1 = p2dist x >= ifelse((facing = enemynear, facing), -(enemynear, const(size.ground.front)), -(enemynear, const(size.ground.back)))
attr = S, HT
hitflag = M
priority = 6, Miss
numhits = 0
sparkno = -1 + 0 * (var(33) := 0)
p1facing = 1
p2facing = 1
p1stateno = 4001
p2stateno = 4002
animtype = Up
ground.velocity = -1.5, -32
yaccel = 0.75
sprpriority = 2
fall = 1
fall.recover = 0
hitsound = -1 + 0 * (var(31) := 800)
ground.cornerpush.veloff = 0

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I

[State 4000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- PLAYER ---
[Statedef 4001]
type = S
physics = S
movetype = A
anim = 4001
ctrl = 0
velset = 0, 0
sprpriority = 2

[State Throw]
type = targetstate
trigger1 = !time
value = 4002

[State 4001, Snd]
type = playsnd
trigger1 = !time
value = 4, 28
channel = 0

[State 4001, grabsound]
type = playsnd
trigger1 = !time
value = 6, 6

[State 4001, grabsound]
type = playsnd
trigger1 = !time
value = 5, 11

[State 4001, Push]
type = playerpush
trigger1 = 1
value = 0

[State 4001, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 4001, nomusic]
type = assertspecial
trigger1 = animelemtime(6) < 0
flag = nomusic

[State 4001, imageoff]
type = afterimagetime
trigger1 = animelemtime(4) >= 0
time = 0
[State 4001, spr]
type = sprpriority
trigger1 = animelemtime(4) >= 0
value = -1

[State 4001, Bind 1]
type = targetbind
trigger1 = animelemtime(1) >= 0 && animelemtime(2) < 0
pos = 120 * const(size.xscale), 0
[State 4001, Bind 2]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 90 * const(size.xscale), 0
[State 4001, Bind 3]
type = targetbind
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 60 * const(size.xscale), 0
[State 4001, Bind 4]
type = targetbind
trigger1 = animelemtime(4) >= 0 && animelemtime(6) < 0
pos = 30 * const(size.xscale), 0

[State 4001, exclamation]
type = explod
trigger1 = !time
anim = 4007
ID = 4007
sprpriority = 2
postype = p2
pos = (target, const(size.head.pos.x)) -5, (target, const(size.head.pos.y)) -10
facing = -1
scale = 0.5, 0.5
ownpal = 1

[State 4001, charge]
type = helper
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0 && !numhelper(4006)
helpertype = normal
stateno = 4006
ID = 4006
name = "Otoko Charge"
postype = p1
pos = floor(15 * const(size.xscale)), floor(-95 * const(size.yscale))
ownpal = 1
persistent = 0
size.xscale = 1
size.yscale = 1

[State 4001, Palfx]
type = palfx
trigger1 = animelem = 5
time = 120
sinadd = 64, 64, 192, 480

[State 4001, Hitadd]
type = hitadd
trigger1 = animelem = 6
value = 1

[State 4001, Juggle]
type = varadd
trigger1 = animelem = 6
var(15) = 1

[State 4001, Red Life]
type = varset
trigger1 = animelem = 6
var(0) = life

[State 4001, Damage]
type = lifeadd
trigger1 = animelem = 6
value = -440
kill = 0

[State 4001, Red Life]
type = redlifeadd
trigger1 = animelem = 6
;trigger1 = teammode = tag
;value = ifelse(var(0) >= 440, 440, var(0));fully recoverable
value = ifelse(var(0) >= 440, 220, var(0) / 2)

[State 4001, Damage]
type = targetlifeadd
trigger1 = animelem = 6
value = -ceil(440 * fvar(10))
kill = 1

[State 4001, Hitdamage]
type = targetpoweradd
trigger1 = animelem = 6
value = 333

[State 4001, Throw]
type = targetstate
trigger1 = animelem = 6
value = 4004

[State 4001, Snd]
type = playsnd
trigger1 = animelem = 6
value = 5, 7
[State 4001, Snd]
type = playsnd
trigger1 = animelem = 6
value = 5, 9

[State 4001, Shake]
type = envshake
trigger1 = animelem = 6
time = 18
ampl = 3
freq = 180

[State 4001, explosion]
type = explod
trigger1 = animelemtime(6) = -3
anim = 4005
ID = 4005
sprpriority = 4
postype = p1
removetime = -2
ownpal = 1

[State 4001, ohnoes]
type = helper
trigger1 = animelem = 6
helpertype = normal
stateno = 4008
ID = 4008
name = "Otoko Portrait"
postype = back
ownpal = 1
persistent = 0
size.xscale = 0.5
size.yscale = 0.5 * (1.3333333 * gameheight / gamewidth)

[State 4001, Palfx]
type = palfx
trigger1 = animelem = 6
time = 120
color = 32
sinadd = 80, 25, 0, 8
mul = 512, 256, 128

[State 4001, Flames]
type = helper
trigger1 = animelem = 6 && !numhelper(8150)
helpertype = normal
stateno = 8150
ID = 8150
name = "Flames (enemy)"
postype = p1
ownpal = 1
facing = -1
size.xscale = 0.5
size.yscale = 0.5
persistent = 0

[State 4001, Flames]
type = helper
trigger1 = animelem = 6 && !numhelper(8151)
helpertype = normal
stateno = 8150
ID = 8151
name = "Flames (Dan)"
postype = p2
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
size.xscale = 0.5
size.yscale = 0.5
persistent = 0

[State 4001, Snd]
type = playsnd
trigger1 = animelem = 6
value = 4, 23
channel = 0

[State 4001, Vel]
type = velset
trigger1 = animelem = 6
x = -1.5
y = -32

[State 4001, fix]
type = velset
trigger1 = winko
trigger1 = vel y > 0 && screenpos y < 0
x = 0
[State 4001, fix]
type = posset
trigger1 = winko
trigger1 = vel y > 0 && screenpos y < 0
x = -80 * facing

[State 4001, Type]
type = statetypeset
trigger1 = animelemtime(6) >= 0
statetype = A
physics = N
movetype = H

[State 4001, Accel]
type = veladd
trigger1 = animelemtime(6) >= 0
y = 0.75

[State 4001, Shake]
type = envshake
trigger1 = animelemtime(6) >= 0 && vel y > 0 && pos y >= 5
time = 18
freq = 180
ampl = 2

[State 4001, End]
type = changestate
trigger1 = animelemtime(6) >= 0 && vel y > 0 && pos y >= 5
value = 5100


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
trigger1 = time = 76
time = 120
sinadd = 64, 64, 192, 480

[State 4002, Safety]
type = selfstate
trigger1 = time >= 300
value = 5040


[Statedef 4004]
type = A
physics = N
movetype = H
ctrl = 0

[State 4004, Palfx]
type = palfx
trigger1 = !time
time = 120
color = 32
sinadd = 80, 25, 0, 8
mul = 512, 256, 128

[State 4004, End]
type = selfstate
trigger1 = 1
value = 5020


;=================<CHOUHATSU SHINWA>===================
[Statedef 4100]
type = S
physics = S
movetype = I
anim = 4100
ctrl = 0
velset = 0, 0
poweradd = -3000
sprpriority = 2
facep2 = 1

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

[State 4100, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 4100, Erase Inputs]
type = mapset
map = "erase_super"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 4100, Snd]
type = playsnd
trigger1 = time = 3
value = 4, 5
channel = 0

[State 4100, Super Pause FX]
type = helper
trigger1 = map(mysuperpause)
trigger1 = time = 3
helpertype = normal
stateno = 7520
ID = 7500
name = "Superpause FX"
postype = p1
pos = ceil(-52 * const(size.xscale)), ceil(-160 * const(size.yscale))
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 4100, Super Pause]
type = superpause
trigger1 = time = 3
time = 47
movetime = 47
anim = ifelse(map(mysuperpause), -1, 102)
pos = ceil(-52 * const(size.xscale)), ceil(-160 * const(size.yscale))
sound = s0, 8520
p2defmul = 1 + (0 * (fvar(5) := 0))
darken = !map(mysuperpause)

[State 3000, NHB]
type = nothitby
trigger1 = 1
time = 20
value = SCA

[State 4100, Var]
type = varset
trigger1 = 1
var(53) = 900

[State 4100, End]
type = changestate
trigger1 = time >= 43
value = 0
ctrl = 1


;--- END ---
[Statedef 4101]
type = S
physics = S
movetype = I
anim = 4101
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 4101, Snd]
type = playsnd
trigger1 = animelem = 2
value = 4, 32
channel = 0

[State 4101, Snd]
type = playsnd
trigger1 = !time
value = 6, 0
channel = 7

[State 4101, Snd]
type = playsnd
trigger1 = animelem = 2
value = 5, 10

[State 4101, teeth]
type = explod
trigger1 = animelem = 2
anim = 4105
ID = 4105
sprpriority = 2
postype = p1
pos = floor(-9 * const(size.xscale)), floor(-172 * const(size.yscale))
ownpal = 1
scale = 0.5, 0.5

[State 4101, flashes]
type = explod
trigger1 = 1
anim = 4110
ID = 4105
sprpriority = -5
postype = left
pos = 160, 120
random = 160, 120
;random = 320, 240
facing = -1 + (random < 500) * 2
scale = 0.5 + (random / 2000.0), 0.5 + (random / 2000.0)
ownpal = 1
pausemovetime = 20
supermovetime = 20

[State 4101, flashsnd]
type = playsnd
trigger1 = !(gametime % 6)
value = 6, 2 + (random % 3)
[State 4101, flashpalfx]
type = allpalfx
trigger1 = !(gametime % 9)
time = 3
add = 128, 128, 128
sinadd = -128, -128, -128, 12

[State 4101, imageoff]
type = afterimagetime
trigger1 = animelemtime(2) >= 0
time = 0

[State 4101, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1
