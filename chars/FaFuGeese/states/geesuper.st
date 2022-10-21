; _______________________________________
;| Geese Howard by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SUPER STATES>========================================
;==============================================================================================

;========================<RAISING STORM>=============================
[Statedef 3000]
type = S
physics = S
movetype = A
anim = 3000
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = -1000
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State 3000, Erase Inputs]
type = mapset
map = "erase_super"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 3000, Super Cancel Flag]
type = varset
trigger1 = !time
trigger1 = !var(20)
trigger1 = (prevstateno = [1000, 2999]) && var(7)
var(21) = 1
ignorehitpause = 1

[State 3000, Hyper Cancel Flag]
type = varset
trigger1 = !time
trigger1 = (prevstateno = [3000, 4999]) && var(8)
var(22) = 1
ignorehitpause = 1

[State 3000, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 3000, Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 10
time = 1
add = 255, 255, 255
ignorehitpause = 1
[State 3000, Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3000, NHB]
type = nothitby
trigger1 = 1
time = 1
value = SCA

[State 3000, Snd]
type = playsnd
trigger1 = !time
value = 5, 4
channel = 0

[State 3000, Superpause FX]
type = helper
trigger1 = map(mysuperpause)
trigger1 = time = 3
helpertype = normal
stateno = 8500
ID = 8500
name = "Superpause FX"
postype = p1
pos = -2, -142
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3000, Superpause]
type = superpause
trigger1 = time = 3
time = 43
movetime = 43
p2defmul = 1 + (0 * (fvar(5) := 0))
unhittable = 1
anim = ifelse(map(mysuperpause), -1, 100)
pos = -2, -142
sound = s0, 8500
darken = !map(mysuperpause)

[State 3000, End]
type = changestate
trigger1 = !animtime
value = 3001


;--- Channeling ---
[Statedef 3001]
type = S
physics = S
movetype = A
anim = 3001
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 3001, NHB]
type = nothitby
trigger1 = time <= 2
time = 1
value = SCA

[State 3001, NHB]
type = hitby
trigger1 = time > 2
trigger1 = numhelper(3005)
trigger1 = helper(3005), stateno = 3005
time = 1
value2 = SCA, AA, AT

[State 3001, Snd]
type = playsnd
trigger1 = !time
value = 5, 5
channel = 0
[State 3001, Snd]
type = playsnd
trigger1 = !time
value = 7, 4

[State 3001, Raising Storm]
type = helper
trigger1 = !time
helpertype = normal
stateno = 3005
ID = 3005
name = "Raising Storm"
postype = p1
pos = 0, 0
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 3001, Dust]
type = explod
trigger1 = time = 2 || time = 10 || time = 18 || time = 26 || time = 34
anim = 3004
sprpriority = -3
postype = p1
pos = 8, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 3001, End]
type = changestate
trigger1 = time >= 48
value = 3002


;--- Over ---
[Statedef 3002]
type = S
physics = S
movetype = A
anim = 3002
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 3002, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;========================<THUNDER BREAK>=============================
[Statedef 3050]
type = S
physics = S
movetype = A
anim = 3050
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = -2000
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State 3050, Erase Inputs]
type = mapset
map = "erase_super"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 3050, Super Cancel Flag]
type = varset
trigger1 = !time
trigger1 = !var(20)
trigger1 = (prevstateno = [1000, 2999]) && var(7)
var(21) = 1
ignorehitpause = 1

[State 3050, Hyper Cancel Flag]
type = varset
trigger1 = !time
trigger1 = (prevstateno = [3000, 4999]) && var(8)
var(22) = 1
ignorehitpause = 1

[State 3050, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 3050, Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 10
time = 1
add = 255, 255, 255
ignorehitpause = 1
[State 3050, Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3050, NHB]
type = nothitby
trigger1 = 1
time = 1
value = SCA

[State 3050, Snd]
type = playsnd
trigger1 = !time
value = 5, 10
channel = 0

[State 3050, Superpause FX]
type = helper
trigger1 = map(mysuperpause)
trigger1 = time = 3
helpertype = normal
stateno = 8510
ID = 8500
name = "Superpause FX"
postype = p1
pos = -2, -144
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3050, Superpause]
type = superpause
trigger1 = time = 3
time = 45
movetime = 45
p2defmul = 1 + (0 * (fvar(5) := 0))
unhittable = 1
anim = ifelse(map(mysuperpause), -1, 101)
pos = -2, -144
sound = s0, 8510
darken = !map(mysuperpause)

[State 3050, End]
type = changestate
trigger1 = !animtime
value = 3051


;--- Channeling ---
[Statedef 3051]
type = S
physics = S
movetype = A
anim = 3051
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 3051, NHB]
type = nothitby
trigger1 = time <= 4
time = 1
value = SCA

[State 3001, HB]
type = hitby
trigger1 = time > 4
trigger1 = numhelper(3055)
trigger1 = helper(3055), anim = 3055
time = 1
value2 = SCA, AA, AT

[State 3051, BG PalFX]
type = bgpalfx
trigger1 = 1
time = 1
mul = 96, 96, 96

[State 3051, BG PalFX]
type = bgpalfx
trigger1 = !(time % 6)
time = 1
mul = 224, 224, 224

[State 3051, Push]
type = playerpush
trigger1 = numenemy
trigger1 = enemynear, statetype = A || enemynear, statetype = L
value = 0

[State 3051, Snd]
type = playsnd
trigger1 = !time
value = 5, 11
channel = 0
[State 3051, Snd]
type = playsnd
trigger1 = !time
value = 7, 5

[State 3051, Thunder Break]
type = helper
trigger1 = !time
helpertype = normal
stateno = 3055
ID = 3055
name = "Thunder Break Large"
postype = p1
pos = 8, 0
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3051, Thunder Break]
type = helper
trigger1 = time >= 6
trigger1 = (time % 12) = 6
helpertype = normal
stateno = 3060
ID = 3060
name = "Thunder Break Small"
postype = p1
pos = ceil(-56 + (random / 15.6)), ceil(-16 + (random / 25.0))
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 3051, Thunder Break]
type = helper
trigger1 = time >= 6
trigger1 = (time % 12) = 0
helpertype = normal
stateno = 3060
ID = 3060
name = "Thunder Break Small"
postype = p1
pos = ceil(8 + (random / 15.6)), ceil(-16 + (random / 25.0))
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 3051, Snd]
type = playsnd
trigger1 = !(time % 6)
value = 7, 6
channel = 4

[State 3051, Shake]
type = envshake
trigger1 = !(time % 6)
time = 3
ampl = -2
freq = 180

[State 3051, Glow]
type = explod
trigger1 = !(time % 6)
anim = 3054
sprpriority = 2
postype = p1
scale = const(size.xscale), const(size.yscale)
bindtime = -1
pausemovetime = -1
supermovetime = -1
removeongethit = 1
ownpal = 1

[State 3051, End]
type = changestate
trigger1 = time >= 120
value = 3052


;--- Over ---
[Statedef 3052]
type = S
physics = S
movetype = A
anim = 3052
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 3052, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;========================<DEADLY RAVE>=============================
[Statedef 3100]
type = S
physics = S
movetype = A
anim = 3100
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = -3000
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State 3100, Erase Inputs]
type = mapset
map = "erase_super"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 3100, Super Cancel Flag]
type = varset
trigger1 = !time
trigger1 = !var(20)
trigger1 = (prevstateno = [1000, 2999]) && var(7)
var(21) = 1
ignorehitpause = 1

[State 3100, Hyper Cancel Flag]
type = varset
trigger1 = !time
trigger1 = (prevstateno = [3000, 4999]) && var(8)
var(22) = 1
ignorehitpause = 1

[State 3100, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 3100, Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 10
time = 1
add = 255, 255, 255
ignorehitpause = 1
[State 3100, Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3100, NHB]
type = nothitby
trigger1 = 1
time = 1
value = SCA

[State 3100, Snd]
type = playsnd
trigger1 = time = 3
value = 5, 6
channel = 0

[State 3100, Superpause FX]
type = helper
trigger1 = map(mysuperpause)
trigger1 = time = 3
helpertype = normal
stateno = 8520
ID = 8500
name = "Superpause FX"
postype = p1
pos = -7, -82
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3100, Superpause]
type = superpause
trigger1 = time = 3
time = 47
movetime = 47
p2defmul = 1 + (0 * (fvar(5) := 0))
unhittable = 1
anim = ifelse(map(mysuperpause), -1, 102)
pos = -7, -82
sound = s0, 8520
darken = !map(mysuperpause)

[State 3101, FX]
type = helper
trigger1 = animelem = 4
helpertype = normal
stateno = 3105
ID = 3105
name = "Deadly Rave FX"
postype = p1
supermovetime = 16
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 3100, End]
type = changestate
trigger1 = !animtime
value = 3101


;--- Dashing ---
[Statedef 3101]
type = S
physics = N
movetype = A
anim = 3101
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 3101, NHB]
type = nothitby
trigger1 = time <= 10
time = 1
value = SCA

[State 3101, Snd]
type = playsnd
trigger1 = !time
value = 7, 1
[State 3101, Dust]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 3101, Vel]
type = velset
trigger1 = 1
x = 7.499

[State 3101, Hit]
type = hitdef
trigger1 = !time
trigger1 = var(15) < 1
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 40, 10
dizzypoints = 0
guardpoints = -ceil(fvar(10) * 13)
getpower = 0, 0
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 34
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = 0, 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.31, -7.24
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 0
forcestand = 1
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 38), var(37) := -63
envshake.time = 12
envshake.ampl = 2
envshake.freq = 180

[State 3101, Combo]
type = changestate
trigger1 = movecontact || movereversed
value = 3110

[State 3101, End]
type = changestate
trigger1 = time >= 31
value = 3102


;--- Miss ---
[Statedef 3102]
type = S
physics = N
movetype = I
anim = 3102
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1

[State 3102, Snd]
type = playsnd
trigger1 = !time
value = 0, 103
[State 3102, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 3102, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Attack 0 ---
[Statedef 3110]
type = S
physics = N
movetype = A
anim = 3110
ctrl = 0
velset = 0, 0
sprpriority = 2

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 3110, Vel]
type = velset
trigger1 = 1
x = 2.33

[State 3110, Combo]
type = changestate
trigger1 = !AIlevel
trigger1 = map(cmd_x)
trigger2 = AIlevel
value = 3111

[State 3110, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Attack 1 ---
[Statedef 3111]
type = S
physics = N
movetype = A
anim = 3111
ctrl = 0
velset = 0, 0
sprpriority = 2

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 3111, Snd]
type = playsnd
trigger1 = animelem = 1
value = 4, 0
channel = 0
[State 3111, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 2
channel = 1

[State 3111, Vel]
type = velset
trigger1 = 1
x = 2.33

[State 3111, Hit]
type = hitdef
trigger1 = animelem = 2
trigger1 = var(15) < 1
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 80, 20
dizzypoints = 0
guardpoints = -ceil(fvar(10) * 10)
getpower = 0, 0
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 34
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = 0, 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.31, -7.24
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 0
forcestand = 1
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 69), var(37) := -88
envshake.time = 12
envshake.ampl = 2
envshake.freq = 180

[State 3111, Combo]
type = changestate
trigger1 = movecontact || movereversed
trigger1 = !AIlevel
trigger1 = map(cmd_x)
trigger2 = AIlevel && movehit = 1
value = 3112

[State 3111, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Attack 2 ---
[Statedef 3112]
type = S
physics = N
movetype = A
anim = 3112
ctrl = 0
velset = 0, 0
sprpriority = 2

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 3112, Snd]
type = playsnd
trigger1 = animelem = 1
value = 4, 1
channel = 0
[State 3112, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 2
channel = 1

[State 3112, Vel]
type = velset
trigger1 = 1
x = 2.33

[State 3112, Hit]
type = hitdef
trigger1 = animelem = 4
trigger1 = var(15) < 1
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 80, 20
dizzypoints = 0
guardpoints = -ceil(fvar(10) * 10)
getpower = 0, 0
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 34
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = 0, 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.31, -7.24
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 0
forcestand = 1
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 108), var(37) := -75
envshake.time = 12
envshake.ampl = 2
envshake.freq = 180

[State 3112, Combo]
type = changestate
trigger1 = movecontact || movereversed
trigger1 = !AIlevel
trigger1 = map(cmd_a)
trigger2 = AIlevel && movehit = 1
value = 3113

[State 3112, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Attack 3 ---
[Statedef 3113]
type = S
physics = N
movetype = A
anim = 3113
ctrl = 0
velset = 0, 0
sprpriority = 2

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 3113, Snd]
type = playsnd
trigger1 = animelem = 1
value = 4, 0
channel = 0
[State 3113, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 5
channel = 1

[State 3113, Vel]
type = velset
trigger1 = 1
x = 2.33

[State 3113, Hit]
type = hitdef
trigger1 = animelem = 3
trigger1 = var(15) < 1
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 80, 20
dizzypoints = 0
guardpoints = -ceil(fvar(10) * 10)
getpower = 0, 0
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 34
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = 0, 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.31, -7.24
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 0
forcestand = 1
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 88), var(37) := -31
envshake.time = 12
envshake.ampl = 2
envshake.freq = 180

[State 3113, Combo]
type = changestate
trigger1 = movecontact || movereversed
trigger1 = !AIlevel
trigger1 = map(cmd_a)
trigger2 = AIlevel && movehit = 1
value = 3114

[State 3113, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Attack 4 ---
[Statedef 3114]
type = S
physics = N
movetype = A
anim = 3114
ctrl = 0
velset = 0, 0
sprpriority = 2

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 3114, Snd]
type = playsnd
trigger1 = animelem = 1
value = 4, 0
channel = 0
[State 3114, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 5
channel = 1

[State 3114, Vel]
type = velset
trigger1 = 1
x = 2.33

[State 3114, Hit]
type = hitdef
trigger1 = animelem = 4
trigger1 = var(15) < 1
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 80, 20
dizzypoints = 0
guardpoints = -ceil(fvar(10) * 10)
getpower = 0, 0
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 34
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = 0, 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.31, -7.24
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 0
forcestand = 1
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 104), var(37) := -34
envshake.time = 12
envshake.ampl = 2
envshake.freq = 180

[State 3114, Combo]
type = changestate
trigger1 = movecontact || movereversed
trigger1 = !AIlevel
trigger1 = map(cmd_y)
trigger2 = AIlevel && movehit = 1
value = 3115

[State 3114, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Attack 5 ---
[Statedef 3115]
type = S
physics = N
movetype = A
anim = 3115
ctrl = 0
velset = 0, 0
sprpriority = 2

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 3115, Snd]
type = playsnd
trigger1 = animelem = 1
value = 4, 3
channel = 0
[State 3115, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
channel = 1

[State 3115, Vel]
type = velset
trigger1 = 1
x = 2.33

[State 3115, Hit]
type = hitdef
trigger1 = animelem = 4
trigger1 = var(15) < 1
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 80, 20
dizzypoints = 0
guardpoints = -ceil(fvar(10) * 13)
getpower = 0, 0
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 34
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = 0, 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.31, -7.24
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 0
forcestand = 1
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 32), var(37) := -90
envshake.time = 12
envshake.ampl = 2
envshake.freq = 180

[State 3115, Combo]
type = changestate
trigger1 = movecontact || movereversed
trigger1 = !AIlevel
trigger1 = map(cmd_b)
trigger2 = AIlevel && movehit = 1
value = 3116

[State 3115, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Attack 6 ---
[Statedef 3116]
type = S
physics = N
movetype = A
anim = 3116
ctrl = 0
velset = 0, 0
sprpriority = 2

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 3116, Snd]
type = playsnd
trigger1 = animelem = 1
value = 4, 5
channel = 0
[State 3116, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
channel = 1

[State 3116, Vel]
type = velset
trigger1 = 1
x = 2.33

[State 3116, Hit]
type = hitdef
trigger1 = animelem = 3
trigger1 = var(15) < 1
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 80, 20
dizzypoints = 0
guardpoints = -ceil(fvar(10) * 13)
getpower = 0, 0
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 34
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = 0, 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.31, -7.24
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 0
forcestand = 1
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 30), var(37) := -64
envshake.time = 12
envshake.ampl = 2
envshake.freq = 180

[State 3116, Combo]
type = changestate
trigger1 = movecontact || movereversed
trigger1 = !AIlevel
trigger1 = map(cmd_z)
trigger2 = AIlevel && movehit = 1
value = 3117

[State 3116, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Attack 7 ---
[Statedef 3117]
type = S
physics = N
movetype = A
anim = 3117
ctrl = 0
velset = 0, 0
sprpriority = 2

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 3117, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 5
channel = 1

[State 3117, Vel]
type = velset
trigger1 = 1
x = 2.33

[State 3117, Hit]
type = hitdef
trigger1 = animelem = 3
trigger1 = var(15) < 1
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 100, 25
dizzypoints = 0
guardpoints = -ceil(fvar(10) * 13)
getpower = 0, 0
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 34
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = 0, 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.31, -7.24
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 0
forcestand = 1
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 44), var(37) := -68
envshake.time = 12
envshake.ampl = 2
envshake.freq = 180

[State 3117, Combo]
type = changestate
trigger1 = movecontact || movereversed
trigger1 = !AIlevel
trigger1 = map(cmd_c)
trigger2 = AIlevel && movehit = 1
value = 3118

[State 3117, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Attack 8 ---
[Statedef 3118]
type = S
physics = N
movetype = A
anim = 3118
ctrl = 0
velset = 0, 0
sprpriority = 2

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 3118, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 5
channel = 1

[State 3118, Vel]
type = velset
trigger1 = 1
x = 2.33

[State 3118, Hit]
type = hitdef
trigger1 = animelem = 5
trigger1 = var(15) < 1
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 100, 25
dizzypoints = 0
guardpoints = -ceil(fvar(10) * 13)
getpower = 0, 0
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 34
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = 0, 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.31, -7.24
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 0
forcestand = 1
hitsound = -1 + 0 * (var(31) := 5)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 71), var(37) := -79
envshake.time = 12
envshake.ampl = 2
envshake.freq = 180

[State 3118, Combo]
type = changestate
trigger1 = movecontact || movereversed
trigger1 = !AIlevel
trigger1 = map(cmd_214p) || map(cmd_236p)
trigger2 = movecontact = 1
trigger2 = AIlevel && (random < 500 || roundstate = 3)
value = 3120

[State 3118, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Final Attack ---
[Statedef 3120]
type = S
physics = N
movetype = A
anim = 3120
ctrl = 0
velset = 0, 0
sprpriority = 2

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = 1

[State 3120, Snd]
type = playsnd
trigger1 = animelem = 4
value = 4, 2
channel = 0
[State 3120, Snd]
type = playsnd
trigger1 = animelem = 8
value = 6, 7
channel = 0
[State 3120, Snd]
type = playsnd
trigger1 = animelem = 4
value = 7, 7

[State 3120, Vel]
type = velset
trigger1 = animelemtime(3) < 0
x = 2.33
[State 3120, Vel]
type = velset
trigger1 = animelem = 3
x = 0

[State 3120, Hit]
type = hitdef
trigger1 = animelem = 4
trigger1 = var(15) < 1
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 200, 50
dizzypoints = 0
guardpoints = -ceil(fvar(10) * 36)
getpower = 0, 0
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Diagup
air.animtype = Diagup
fall.animtype = Diagup
ground.type = High
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -12, -7.24; -8.62, -5.25
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -12, -7.24; -8.62, -5.25
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 0
forcestand = 1
hitsound = -1 + 0 * (var(31) := 8)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 62), var(37) := -80
palfx.time = 60
palfx.mul = 128, 128, 128
palfx.sinadd = 96, 96, 96, 4
envshake.time = 12
envshake.ampl = 2
envshake.freq = 180

[State 3120, Anim]
type = changeanim
trigger1 = movecontact = 1 && hitpausetime
trigger1 = animelemtime(4) >= 0 && animelemtime(5) <= 0
trigger1 = hitpausetime <= 8
value = 3120
elem = 5
ignorehitpause = 1

[State 3120, Flame Particles]
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

[State 3120, Type]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
[State 3120, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1



;========================<RASHOUMON>=============================
[Statedef 3200]
type = S
physics = S
movetype = A
anim = 3200
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = -1000
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State 3200, Erase Inputs]
type = mapset
map = "erase_super"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 3200, Super Cancel Flag]
type = varset
trigger1 = !time
trigger1 = !var(20)
trigger1 = (prevstateno = [1000, 2999]) && var(7)
var(21) = 1
ignorehitpause = 1

[State 3200, Hyper Cancel Flag]
type = varset
trigger1 = !time
trigger1 = (prevstateno = [3000, 4999]) && var(8)
var(22) = 1
ignorehitpause = 1

[State 3200, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 3200, Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 10
time = 1
add = 255, 255, 255
ignorehitpause = 1
[State 3200, Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3200, NHB]
type = nothitby
trigger1 = animelemtime(3) < 0
time = 1
value = SCA

[State 3200, Superpause FX]
type = helper
trigger1 = map(mysuperpause)
trigger1 = time = 3
helpertype = normal
stateno = 8500
ID = 8500
name = "Superpause FX"
postype = p1
pos = 36, -59
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3200, Superpause]
type = superpause
trigger1 = time = 3
time = 43
movetime = 43
p2defmul = 1 + (0 * (fvar(5) := 0))
unhittable = 1
anim = ifelse(map(mysuperpause), -1, 100)
pos = 36, -59
sound = s0, 8500
darken = !map(mysuperpause)

[State 3200, Hit]
type = hitdef
trigger1 = animelem = 3
trigger1 = !map(unthrowable) && numenemy
trigger1 = map(p2bodydistx) <= 28
trigger1 = p2dist x >= ifelse((facing = enemynear, facing), -(enemynear, const(size.ground.front)), -(enemynear, const(size.ground.back)))
attr = S, HT
hitflag = M
priority = 7, Miss
getpower = 0, 0
givepower = 0, 0
sparkno = -1 + 0 * (var(33) := 0)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 40), var(37) := -50
hitsound = -1 + 0 * (var(31) := 800)
guardsound = -1 + 0 * (var(32) := 0)
yaccel = 0.4850
fall = 1
fall.recover = 0
numhits = 0
p1stateno = 3210
p2stateno = 3215

[State 3200, Sound]
type = playsnd
trigger1 = animelem = 4
value = 1, 2
channel = 1

[State 3200, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
[State 3200, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Throwing ---
[Statedef 3210]
type = S
physics = S
movetype = A
anim = 3210
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 3210, Safety]
type = changestate
trigger1 = !time
trigger1 = !numtarget
value = 0
ctrl = 1

[State 3210, Throw]
type = targetstate
trigger1 = numtarget && animelem = 1
value = 3215
[State 3210, Throw]
type = targetstate
trigger1 = numtarget && animelem = 2
value = 3216
[State 3210, Throw]
type = targetfacing
trigger1 = numtarget && !time
value = -1

[State 3210, Width]
type = width
trigger1 = animelemtime(14) >= 0 && animelemtime(16) < 0
edge = 80, 0

[State 3210, Bind]
type = targetbind
trigger1 = numtarget && animelem = 1
pos = 40, 0
[State 3210, Bind]
type = targetbind
trigger1 = numtarget && animelem = 14
pos = 80, -27

[State 3210, Power]
type = targetpoweradd
trigger1 = numtarget && !time
value = 40;givepower

[State 3210, Power]
type = targetpoweradd
trigger1 = numtarget && animelem = 14
value = 40;givepower

[State 3210, Damage]
type = targetlifeadd
trigger1 = numtarget && animelem = 14
value = floor(-150 * fvar(10))

[State 3210, Hit]
type = hitadd
trigger1 = numtarget && animelem = 14
value = 1

[State 3210, Juggle]
type = varset
trigger1 = numtarget && animelem = 14
var(15) = 0

[State 3210, Throw]
type = targetstate
trigger1 = numtarget && animelem = 14
value = 3217

[State 3210, Sound]
type = playsnd
trigger1 = animelem = 2
value = 4, 1
channel = 0
[State 3210, Sound]
type = playsnd
trigger1 = animelem = 13
value = 4, 2
channel = 0
[State 3210, Sound]
type = playsnd
trigger1 = animelem = 1
value = 1, 5
channel = 1
[State 3210, Sound]
type = playsnd
trigger1 = animelem = 13
value = 1, 2
channel = 1

[State 3210, Sound]
type = playsnd
trigger1 = numtarget && animelem = 14
value = 2, 8
channel = 2

[State 3210, Shake]
type = envshake
trigger1 = numtarget && animelem = 14
time = 12
ampl = 2
freq = 180

[State 3210, Spark]
type = helper
trigger1 = map(mysparks)
trigger1 = numtarget && animelem = 14
helpertype = normal
stateno = 8014
ID = 8000
name = "Spark"
postype = p1
pos = 84, -68
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 3210, Spark]
type = explod
trigger1 = !map(mysparks)
trigger1 = numtarget && animelem = 14
anim = F3
ID = 8000
postype = p1
pos = 84, -68
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 3210, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Target Grabbed ---
[Statedef 3215]
type = S
movetype = H
physics = N
velset = 0, 0
sprpriority = 2

[State 3215, Anim]
type = changeanim2
trigger1 = !time
value = 3215

[State 3215, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 3215, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


;--- Target Thrown ---
[Statedef 3216]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 2

[State 3216, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 3216, Push]
type = playerpush
trigger1 = 1
value = 0

[State 3216, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 3216, Anim]
type = changeanim
trigger1 = !time
value = 5070

[State 3216, Accel]
type = veladd
trigger1 = time
y = 0.75
[State 3216, Vel]
type = velset
trigger1 = time = 1
x = 0
y = -18.5

[State 3216, End]
type = selfstate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 5100


;--- Target Hit ---
[Statedef 3217]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0

[State 3217, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 3217, Push]
type = playerpush
trigger1 = 1
value = 0

[State 3217, Freeze]
type = posfreeze
trigger1 = 1
value = 1

[State 3217, Anim]
type = changeanim
trigger1 = 1
value = 5012

[State 3217, End]
type = changestate
trigger1 = time >= 12
value = 3218


;--- Target Falling ---
[Statedef 3218]
type = A
movetype = H
physics = N
sprpriority = 0

[State 3218, Accel]
type = veladd
trigger1 = 1
y = 0.39

[State 3218, Vel]
type = velset
trigger1 = !time
x = -12.0
y = -5.0

[State 3218, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = (vel y < 0), 0

[State 3218, Push]
type = playerpush
trigger1 = 1
value = 0

[State 3218, Anim]
type = changeanim
trigger1 = !time
value = 5030

[State 3218, Bounce]
type = changestate
trigger1 = time >= 4
trigger1 = backedgebodydist <= 0 || frontedgebodydist <= 0
value = 3219

[State 3218, End]
type = selfstate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 5100


;--- Target Hitting Wall ---
[Statedef 3219]
type = A
movetype = H
physics = N
sprpriority = 2

[State 3219, Turn]
type = turn
trigger1 = !time
trigger1 = frontedgedist < backedgedist

[State 3219, Pos]
type = posadd
trigger1 = 1
x = -backedgebodydist

[State 3219, Pos]
type = posfreeze
trigger1 = 1
x = 1
y = 1

[State 3219, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0

[State 3219, Anim]
type = changeanim
trigger1 = 1
value = 5000

[State 3219, Snd]
type = playsnd
trigger1 = !time
value = F7, 2

[State 3219, FX]
type = explod
trigger1 = !time
anim = F72
postype = p1
pos = -15, const(size.mid.pos.y)
sprpriority = -5
ownpal = 1

[State 3219, End]
type = changestate
trigger1 = time >= 4
value = 3220


;--- Target Falling ---
[Statedef 3220]
type = A
movetype = H
physics = N
sprpriority = 2

[State 3220, Turn]
type = turn
trigger1 = !time

[State 3220, Accel]
type = veladd
trigger1 = 1
y = 0.4850;yaccel

[State 3220, Vel]
type = velset
trigger1 = !time
x = ((enemynear, pos x - pos x) * facing + 60) / 36.0
y = (pos y + 0.5 * 0.4850 * 36 ** 2) / -36.0

[State 3220, Vel]
type = velset
trigger1 = !time
trigger1 = vel x != [-9, 0]
x = ifelse(vel x < -9, -9, 0)

[State 3220, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5051), 5051, 5030)
[State 3220, Anim]
type = changeanim
trigger1 = anim = 5030 && !animtime
value = 5050
[State 3220, Anim]
type = changeanim
trigger1 = vel y > -3 && anim = 5051
trigger1 = selfanimexist(5061)
value = 5061

[State 3220, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0

[State 3220, End]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= ifelse((anim = [5051, 5059]) || (anim = [5061, 5069]), 0, 25)
value = 5100


;========================<MAX RASHOUMON>=============================
[Statedef 3250]
type = S
physics = S
movetype = A
anim = 3250
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = -2000
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State 3250, Erase Inputs]
type = mapset
map = "erase_super"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 3250, Super Cancel Flag]
type = varset
trigger1 = !time
trigger1 = !var(20)
trigger1 = (prevstateno = [1000, 2999]) && var(7)
var(21) = 1
ignorehitpause = 1

[State 3250, Hyper Cancel Flag]
type = varset
trigger1 = !time
trigger1 = (prevstateno = [3000, 4999]) && var(8)
var(22) = 1
ignorehitpause = 1

[State 3250, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 3250, Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 10
time = 1
add = 255, 255, 255
ignorehitpause = 1
[State 3250, Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3250, NHB]
type = nothitby
trigger1 = animelemtime(3) < 1
time = 1
value = SCA

[State 3250, Superpause FX]
type = helper
trigger1 = map(mysuperpause)
trigger1 = time = 3
helpertype = normal
stateno = 8510
ID = 8500
name = "Superpause FX"
postype = p1
pos = 36, -59
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3250, Superpause]
type = superpause
trigger1 = time = 3
time = 45
movetime = 45
p2defmul = 1 + (0 * (fvar(5) := 0))
unhittable = 1
anim = ifelse(map(mysuperpause), -1, 101)
pos = 36, -59
sound = s0, 8510
darken = !map(mysuperpause)

[State 3250, Hit]
type = hitdef
trigger1 = animelem = 3
trigger1 = !map(unthrowable) && numenemy
trigger1 = map(p2bodydistx) <= 28
trigger1 = p2dist x >= ifelse((facing = enemynear, facing), -(enemynear, const(size.ground.front)), -(enemynear, const(size.ground.back)))
attr = S, HT
hitflag = M
priority = 7, Miss
getpower = 0, 0
givepower = 0, 0
sparkno = -1 + 0 * (var(33) := 0)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 40), var(37) := -50
hitsound = -1 + 0 * (var(31) := 800)
guardsound = -1 + 0 * (var(32) := 0)
yaccel = 0.4850
fall = 1
fall.recover = 0
numhits = 0
p1stateno = 3280
p2stateno = 3215

[State 3250, Sound]
type = playsnd
trigger1 = animelem = 4
value = 1, 2
channel = 1

[State 3250, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
[State 3250, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Throwing ---
[Statedef 3260]
type = S
physics = S
movetype = A
anim = 3260
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 3260, Safety]
type = changestate
trigger1 = !time
trigger1 = !numtarget
value = 0
ctrl = 1

[State 3260, Throw]
type = targetstate
trigger1 = numtarget && animelem = 1
value = 3215
[State 3260, Throw]
type = targetstate
trigger1 = numtarget && animelem = 2
value = 3266
[State 3260, Throw]
type = targetfacing
trigger1 = numtarget && !time
value = -1

[State 3260, Width]
type = width
trigger1 = animelemtime(2) >= 0 && animelemtime(14) < 0
edge = 40, 0
[State 3260, Width]
type = width
trigger1 = animelemtime(14) >= 0 && animelemtime(16) < 0
edge = 80, 0

[State 3260, Bind]
type = targetbind
trigger1 = numtarget && animelem = 1
pos = 40, 0
[State 3260, Bind]
type = targetbind
trigger1 = numtarget && animelem = 14
pos = 80, -27

[State 3260, Power]
type = targetpoweradd
trigger1 = numtarget && !time
value = 40;givepower

[State 3260, Power]
type = targetpoweradd
trigger1 = numtarget && animelem = 14
value = 40;givepower

[State 3260, Damage]
type = targetlifeadd
trigger1 = numtarget && animelem = 14
value = floor(-200 * fvar(10))

[State 3260, Hit]
type = hitadd
trigger1 = numtarget && animelem = 14
value = 1

[State 3260, Juggle]
type = varadd
trigger1 = numtarget && animelem = 14
var(15) = 1

[State 3260, Throw]
type = targetstate
trigger1 = numtarget && animelem = 14
value = 3267

[State 3260, FX]
type = helper
trigger1 = !time
helpertype = normal
stateno = 3255
ID = 3255
name = "Rashoumon Aura"
postype = p1
ownpal = 1
[State 3260, FX]
type = helper
trigger1 = animelem = 4
helpertype = normal
stateno = 3261
ID = 3261
name = "Rashoumon FX"
postype = p1
supermovetime = 16
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1
[State 3260, FX]
type = helper
trigger1 = numtarget && animelem = 14
trigger1 = target, life > 0
helpertype = normal
stateno = 3290
ID = 3290
name = "Rashoumon Kanji"
postype = left
ownpal = 1

[State 3260, Sound]
type = playsnd
trigger1 = animelemtime(3) = 8
value = 4, 5
channel = 0
[State 3260, Sound]
type = playsnd
trigger1 = animelem = 13
value = 5, 12
channel = 0
[State 3260, Sound]
type = playsnd
trigger1 = animelem = 21
value = 4, 3
channel = 0
[State 3260, Sound]
type = playsnd
trigger1 = animelem = 21
value = 7, 9
[State 3260, Sound]
type = playsnd
trigger1 = animelem = 1
value = 1, 5
channel = 1
[State 3260, Snd]
type = playsnd
trigger1 = animelem = 13
value = 7, 7
[State 3260, Sound]
type = playsnd
trigger1 = animelem = 21
value = 1, 0
channel = 1

[State 3260, Sound]
type = playsnd
trigger1 = numtarget && animelem = 14
value = 2, 8
channel = 2

[State 3260, Shake]
type = envshake
trigger1 = numtarget && animelem = 14
time = 12
ampl = 3
freq = 180

[State 3260, Spark]
type = helper
trigger1 = map(mysparks)
trigger1 = numtarget && animelem = 14
helpertype = normal
stateno = 8014
ID = 8000
name = "Spark"
postype = p1
pos = 84, -68
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 3260, Spark]
type = explod
trigger1 = !map(mysparks)
trigger1 = numtarget && animelem = 14
anim = F3
ID = 8000
postype = p1
pos = 84, -68
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 3260, Flame Particles]
type = helper
trigger1 = !numhelper(8150)
trigger1 = numtarget && animelem = 14
trigger1 = var(40) := (target, ID)
helpertype = normal
stateno = 8150
ID = 8150
name = "Flame Particles"
postype = p2
ownpal = 1
ignorehitpause = 1

[State 3260, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Target Thrown ---
[Statedef 3266]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 2

[State 3266, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 3266, Push]
type = playerpush
trigger1 = 1
value = 0

[State 3266, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 3266, Anim]
type = changeanim2
trigger1 = !time
value = 3266

[State 3266, Accel]
type = veladd
trigger1 = time
y = 1.0
[State 3266, Vel]
type = velset
trigger1 = time = 1
x = 0
y = -32

[State 3266, End]
type = selfstate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 5100


;--- Target Hit ---
[Statedef 3267]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0

[State 3267, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 3267, Push]
type = playerpush
trigger1 = 1
value = 0

[State 3267, Freeze]
type = posfreeze
trigger1 = 1
value = 1

[State 3267, Anim]
type = changeanim
trigger1 = 1
value = 5012

[State 3267, Palfx]
type = palfx
trigger1 = !time
time = 60
mul = 128, 128, 128
sinadd = 96, 96, 96, 4

[State 3267, End]
type = changestate
trigger1 = time >= 24
value = 3268


;--- Target Falling ---
[Statedef 3268]
type = A
movetype = H
physics = N
sprpriority = 0

[State 3268, Accel]
type = veladd
trigger1 = 1
y = 0.4850;yaccel
[State 3268, Vel]
type = velset
trigger1 = !time
x = -24
y = -4

[State 3268, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0
[State 3268, Push]
type = playerpush
trigger1 = 1
value = 0

[State 3268, Anim]
type = changeanim
trigger1 = !time
value = 5030

[State 3268, Bounce]
type = changestate
trigger1 = backedgebodydist <= 10 || frontedgebodydist <= 10
value = 3269
[State 3268, End]
type = selfstate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 5100


;--- Target Hitting Wall ---
[Statedef 3269]
type = A
movetype = H
physics = N
sprpriority = 2

[State 3269, Turn]
type = turn
trigger1 = !time
trigger1 = frontedgedist < backedgedist

[State 3269, Pos]
type = posset
trigger1 = 1
x = -160 * facing
[State 3269, Pos]
type = posfreeze
trigger1 = 1
x = 1
y = 1

[State 3269, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0
[State 3269, Push]
type = playerpush
trigger1 = 1
value = 1

[State 3269, Anim]
type = changeanim
trigger1 = 1
value = 5000

[State 3269, Snd]
type = playsnd
trigger1 = !time
value = F7, 2
[State 3269, FX]
type = explod
trigger1 = !time
anim = F72
pos = 0, floor(screenpos y) -50
postype = back
sprpriority = 3

[State 3269, End]
type = changestate
trigger1 = time >= 4
value = 3270


;--- Target Falling ---
[Statedef 3270]
type = A
movetype = H
physics = N
sprpriority = 2

[State 3270, Turn]
type = turn
trigger1 = !time

[State 3270, Accel]
type = veladd
trigger1 = 1
y = 0.4850;yaccel
[State 3270, Vel]
type = velset
trigger1 = !time
x = -2.5
y = -9

[State 3270, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5051), 5051, 5030)
[State 3270, Anim]
type = changeanim
trigger1 = anim = 5030 && !animtime
value = 5050
[State 3270, Anim]
type = changeanim
trigger1 = vel y > -3 && anim = 5051
trigger1 = selfanimexist(5061)
value = 5061

[State 3270, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0
[State 3270, Push]
type = playerpush
trigger1 = 1
value = 0

[State 3270, End]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= ifelse((anim = [5051, 5059]) || (anim = [5061, 5069]), 0, 25)
value = 5100


;--- Combo ---
[Statedef 3280]
type = S
physics = S
movetype = A
anim = 3280
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 3280, Safety]
type = changestate
trigger1 = !time
trigger1 = !numtarget
value = 0
ctrl = 1

[State 3280, Throw]
type = targetfacing
trigger1 = numtarget && !time
value = -1

[State 3280, Pos]
type = posadd
trigger1 = animelem = 3
x = 16
[State 3280, Pos]
type = posadd
trigger1 = animelem = 7
x = 24

[State 3280, Width]
type = width
trigger1 = animelemtime(3) >= 0
edge = 64, 0

[State 3280, Bind]
type = targetbind
trigger1 = numtarget && animelem = 1
pos = 40, 0

[State 3280, Power]
type = targetpoweradd
trigger1 = numtarget && !time
value = 40;givepower

[State 3280, Power]
type = targetpoweradd
trigger1 = numtarget && animelem = 14
value = 40;givepower

[State 3280, Damage]
type = targetlifeadd
trigger1 = numtarget
trigger1 = animelem = 1 || animelem = 3 || animelem = 8
value = floor(-50 * fvar(10))
kill = 0

[State 3280, Hit]
type = hitadd
trigger1 = numtarget
trigger1 = animelem = 1 || animelem = 3 || animelem = 8
value = 1

[State 3280, Throw]
type = targetstate
trigger1 = numtarget
trigger1 = animelem = 1
value = 3285
[State 3280, Throw]
type = targetstate
trigger1 = numtarget
trigger1 = animelem = 3 || animelem = 8
value = 3286

[State 3280, Sound]
type = playsnd
trigger1 = animelem = 1 || animelem = 3 || animelem = 8
value = 4, ifelse((animelem = 8), 2, ifelse((animelem = 3), 1, 0))
channel = 0
[State 3280, Sound]
type = playsnd
trigger1 = animelem = 1 || animelem = 3 || animelem = 8
value = 1, 2
channel = 1

[State 3280, Sound]
type = playsnd
trigger1 = numtarget
trigger1 = animelem = 1 || animelem = 3 || animelem = 8
value = 2, 2
channel = 2

[State 3280, Shake]
type = envshake
trigger1 = numtarget
trigger1 = animelem = 1 || animelem = 3 || animelem = 8
time = 12
ampl = 2
freq = 180

[State 3280, Spark]
type = helper
trigger1 = map(mysparks)
trigger1 = numtarget && animelem = 1
helpertype = normal
stateno = 8014
ID = 8000
name = "Spark"
postype = p1
pos = 42, -100
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 3280, Spark]
type = explod
trigger1 = !map(mysparks)
trigger1 = numtarget && animelem = 1
anim = F3
ID = 8000
postype = p1
pos = 42, -100
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 3280, Spark]
type = helper
trigger1 = map(mysparks)
trigger1 = numtarget && animelem = 3
helpertype = normal
stateno = 8014
ID = 8000
name = "Spark"
postype = p1
pos = 56, -72
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 3280, Spark]
type = explod
trigger1 = !map(mysparks)
trigger1 = numtarget && animelem = 3
anim = F3
ID = 8000
postype = p1
pos = 56, -72
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 3280, Spark]
type = helper
trigger1 = map(mysparks)
trigger1 = numtarget && animelem = 8
helpertype = normal
stateno = 8014
ID = 8000
name = "Spark"
postype = p1
pos = 50, -75
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 3280, Spark]
type = explod
trigger1 = !map(mysparks)
trigger1 = numtarget && animelem = 8
anim = F3
ID = 8000
postype = p1
pos = 50, -75
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 3280, End]
type = changestate
trigger1 = !animtime
value = 3260


;--- Target Comboed ---
[Statedef 3285]
type = S
movetype = H
physics = N
velset = 0, 0
sprpriority = 0

[State 3285, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 3285, Push]
type = playerpush
trigger1 = 1
value = 0

[State 3285, Freeze]
type = posfreeze
trigger1 = 1
value = 1
[State 3285, Anim]
type = changeanim
trigger1 = 1
value = 5002

[State 3285, End]
type = changestate
trigger1 = time >= 12
value = 3287


[Statedef 3286]
type = S
movetype = H
physics = N
velset = 0, 0
sprpriority = 0

[State 3286, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 3286, Push]
type = playerpush
trigger1 = 1
value = 0

[State 3286, Freeze]
type = posfreeze
trigger1 = 1
value = 1
[State 3286, Anim]
type = changeanim
trigger1 = 1
value = 5012

[State 3286, End]
type = changestate
trigger1 = time >= 12
value = 3287


[Statedef 3287]
type = S
movetype = H
physics = S
velset = 0, 0
sprpriority = 0

[State 3285, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 3285, Push]
type = playerpush
trigger1 = 1
value = 0

[State 3287, Anim]
type = changeanim
trigger1 = !animtime
value = ifelse(anim = 5012, 5017, 5007)

[State 3287, Vel]
type = velset
trigger1 = !time
x = -7.51

[State 3287, End]
type = selfstate
trigger1 = time >= 32
value = 0
ctrl = 1


;========================<KYOKUU REPPUU ZAN>=============================
[Statedef 3300]
type = S
physics = N
movetype = A
anim = 3300
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = -1000
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State 3300, Erase Inputs]
type = mapset
map = "erase_super"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 3300, Super Cancel Flag]
type = varset
trigger1 = !time
trigger1 = !var(20)
trigger1 = (prevstateno = [1000, 2999]) && var(7)
var(21) = 1
ignorehitpause = 1

[State 3300, Hyper Cancel Flag]
type = varset
trigger1 = !time
trigger1 = (prevstateno = [3000, 4999]) && var(8)
var(22) = 1
ignorehitpause = 1

[State 3300, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 3300, Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 10
time = 1
add = 255, 255, 255
ignorehitpause = 1
[State 3300, Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3300, Correct Projectile Trade]
type = hitby
trigger1 = numhelper(3305)
trigger1 = helper(3305), stateno = 3305 && helper(3305), anim = 3305 && helper(3305), animelemtime(8) = 0
trigger2 = numhelper(3306)
trigger2 = helper(3306), stateno = 3306 && helper(3306), anim = 3306 && helper(3306), animelemtime(8) = 0
trigger3 = numhelper(3307)
trigger3 = helper(3307), stateno = 3307 && helper(3307), anim = 3307 && helper(3307), animelemtime(3) = 0
value2 = SCA, AA, AT
time = 1

[State 3300, NHB]
type = nothitby
trigger1 = animelemtime(5) < 2
time = 1
value = SCA

[State 3300, Snd]
type = playsnd
trigger1 = time = 10
value = 6, 18
channel = 0

[State 3300, Superpause FX]
type = helper
trigger1 = map(mysuperpause)
trigger1 = time = 3
helpertype = normal
stateno = 8500
ID = 8500
name = "Superpause FX"
postype = p1
pos = -18, -131
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3300, Superpause]
type = superpause
trigger1 = time = 3
time = 43
movetime = 43
p2defmul = 1 + (0 * (fvar(5) := 0))
unhittable = 1
anim = ifelse(map(mysuperpause), -1, 100)
pos = -18, -131
sound = s0, 8500
darken = !map(mysuperpause)

[State 3300, Accel]
type = veladd
trigger1 = animelemtime(4) >= 0 && vel x >= 0.5
x = -0.5

[State 3300, Vel]
type = velset
trigger1 = animelem = 4 || animelem = 9
x = 6

[State 3300, Snd]
type = playsnd
trigger1 = animelem = 3
value = 4, 0
channel = 0
lowpriority = 1
[State 3300, Snd]
type = playsnd
trigger1 = animelem = 9
value = 4, 1
channel = 0
[State 3300, Snd]
type = playsnd
trigger1 = animelem = 18
value = 4, 2
channel = 0
[State 3300, Snd]
type = playsnd
trigger1 = animelem = 3 || animelem = 9
value = 7, 0
channel = 1
[State 3300, Snd]
type = playsnd
trigger1 = animelem = 18
value = 7, 3
channel = 1

[State 3300, Reppuken]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 3305
ID = 3305
name = "Slash Reppuken"
postype = p1
pos = 0, 0
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1
[State 3300, Reppuken]
type = helper
trigger1 = animelem = 9
helpertype = normal
stateno = 3306
ID = 3306
name = "Slash Reppuken"
postype = p1
pos = 0, 0
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1
[State 3300, Blast]
type = helper
trigger1 = animelem = 18
helpertype = normal
stateno = 3307
ID = 3307
name = "Blast"
postype = p1
pos = 0, 0
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 3300, Type]
type = statetypeset
trigger1 = animelemtime(20) >= 0
movetype = I
[State 3300, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;========================<MAX KYOKUU REPPUU ZAN>=============================
[Statedef 3350]
type = S
physics = N
movetype = A
anim = 3350
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = -2000
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State 3350, Erase Inputs]
type = mapset
map = "erase_super"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 3350, Super Cancel Flag]
type = varset
trigger1 = !time
trigger1 = !var(20)
trigger1 = (prevstateno = [1000, 2999]) && var(7)
var(21) = 1
ignorehitpause = 1

[State 3350, Hyper Cancel Flag]
type = varset
trigger1 = !time
trigger1 = (prevstateno = [3000, 4999]) && var(8)
var(22) = 1
ignorehitpause = 1

[State 3350, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 3350, Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 10
time = 1
add = 255, 255, 255
ignorehitpause = 1
[State 3350, Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3350, NHB]
type = nothitby
trigger1 = animelemtime(5) < 5
time = 1
value = SCA

[State 3350, Correct Projectile Trade]
type = hitby
trigger1 = numhelper(3305)
trigger1 = helper(3305), stateno = 3305 && helper(3305), anim = 3305 && helper(3305), animelemtime(8) = 0
trigger2 = numhelper(3306)
trigger2 = helper(3306), stateno = 3306 && helper(3306), anim = 3306 && helper(3306), animelemtime(8) = 0
value2 = SCA, AA, AT
time = 1

[State 3350, Snd]
type = playsnd
trigger1 = time = 10
trigger1 = prevstateno != 3300
value = 6, 18
channel = 0

[State 3350, Superpause FX]
type = helper
trigger1 = map(mysuperpause)
trigger1 = time = 3
helpertype = normal
stateno = 8510
ID = 8500
name = "Superpause FX"
postype = p1
pos = -18, -131
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3350, Superpause]
type = superpause
trigger1 = time = 3
time = 45
movetime = 45
p2defmul = 1 + (0 * (fvar(5) := 0))
unhittable = 1
anim = ifelse(map(mysuperpause), -1, 101)
pos = -18, -131
sound = s0, 8510
darken = !map(mysuperpause)

[State 3350, Accel]
type = veladd
trigger1 = animelemtime(4) >= 0 && vel x >= 0.75
x = -0.75
[State 3350, Vel]
type = velset
trigger1 = animelem = 4 || animelem = 9
x = 9

[State 3350, Snd]
type = playsnd
trigger1 = animelem = 3
value = 4, 0
channel = 0
lowpriority = 1
[State 3350, Snd]
type = playsnd
trigger1 = animelem = 9
value = 4, 1
channel = 0
[State 3350, Snd]
type = playsnd
trigger1 = animelem = 17
value = 4, 7
channel = 0

[State 3350, Snd]
type = playsnd
trigger1 = animelem = 3 || animelem = 9
value = 7, 0
channel = 7
[State 3350, Snd]
type = playsnd
trigger1 = animelem = 17
value = 1, 2
channel = 1

[State 3350, Reppuken]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 3305
ID = 3305
name = "Slash Reppuken"
postype = p1
pos = 0, 0
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 3350, Reppuken]
type = helper
trigger1 = animelem = 9
helpertype = normal
stateno = 3306
ID = 3305
name = "Slash Reppuken"
postype = p1
pos = 0, 0
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 3350, Hit]
type = hitdef
trigger1 = var(15) < 6
trigger1 = animelem = 18
ID = 3350
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 50, 13
dizzypoints = 0
guardpoints = -ceil(fvar(10) * 17)
getpower = 0, 0
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 120
ground.velocity = -6, -2
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -6, -2
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 0
forcestand = 1
hitsound = -1 + 0 * (var(31) := 2)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8014)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 100), var(37) := -76
envshake.time = 12
envshake.ampl = 2
envshake.freq = 180

[State 3350, Bind]
type = targetbind
trigger1 = movehit = 1 && numtarget(3350)
trigger1 = animelemtime(18) >= 0 && animelemtime(20) < 1
ID = 3350
pos = 64, 0
ignorehitpause = 1

[State 3350, P2 State]
type = targetstate
trigger1 = movehit = 1 && numtarget(3350)
trigger1 = !(target, hitshakeover)
ID = 3350
value = 3370
ignorehitpause = 1
[State 3350, P1 State]
type = changestate
trigger1 = movehit = 1
trigger1 = animelemtime(18) >= 1 && animelemtime(19) < 0
value = 3351

[State 3350, Type]
type = statetypeset
trigger1 = animelemtime(19) >= 0
movetype = I
[State 3350, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Shippukens ---
[Statedef 3351]
type = S
physics = N
movetype = A
anim = 3351
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 3351, Type]
type = statetypeset
trigger1 = animelemtime(4) >= 0
statetype = A
physics = N

[State 3351, Accel]
type = veladd
trigger1 = animelemtime(4) >= 0 && animelemtime(8) < 0
y = 0.5
[State 3351, Vel]
type = velset
trigger1 = animelem = 4
x = 4.5
y = -4

[State 3351, Vel]
type = velset
triggerall = animelemtime(8) >= 0 && animelemtime(46) < 1
trigger1 = animelemtime(16) >= 0
trigger2 = !numtarget(3350)
trigger3 = numtarget(3350)
trigger3 = ((target(3350), pos x - pos x) * facing) < 100
x = 0
[State 3351, Vel]
type = velset
trigger1 = animelemtime(8) >= 0 && animelemtime(46) < 1
x = 0
y = 0
[State 3351, Width]
type = width
trigger1 = animelemtime(4) >= 0 && animelemtime(46) < 1
edge = 64, 0

[State 3351, Accel]
type = veladd
trigger1 = animelemtime(46) >= 1 && vel x <= -0.06
x = 0.06
[State 3351, Accel]
type = veladd
trigger1 = animelemtime(46) >= 1
y = 0.5528
[State 3351, Vel]
type = velset
trigger1 = animelemtime(46) = 1
x = -4
y = -8

[State 3351, Snd]
type = playsnd
trigger1 = animelem = 8
value = 4, 5
channel = 0
[State 3351, Snd]
type = playsnd
trigger1 = animelem = 4
value = 0, 40

[State 3351, Snd]
type = playsnd
trigger1 = animelem = 44
value = 4, 2
channel = 0

[State 3351, Snd]
type = playsnd
trigger1 = animelem = 9 || animelem = 13 || animelem = 17 || animelem = 21 || animelem = 25
trigger2 = animelem = 29 || animelem = 33 || animelem = 37 || animelem = 41 || animelem = 46
value = 7, 3
channel = 1

[State 3351, Ashura Shippuken]
type = helper
trigger1 = animelem = 9 || animelem = 13 || animelem = 17 || animelem = 21 || animelem = 25
trigger2 = animelem = 29 || animelem = 33 || animelem = 37 || animelem = 41 || animelem = 46
helpertype = normal
stateno = 3355
ID = 3355
name = "Ashura Shippuken"
postype = p1
pos = 69, -50
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 3351, FX]
type = helper
trigger1 = animelem = 44
helpertype = normal
stateno = 1304
name = "Shippuken FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
ownpal = 1

[State 3351, Type]
type = statetypeset
trigger1 = animelemtime(47) >= 0
movetype = I
[State 3351, End]
type = changestate
trigger1 = animelemtime(4) >= 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 3352


;--- Land ---
[Statedef 3352]
type = S
physics = S
movetype = A
anim = 3352
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 3352, Pos]
type = posset
trigger1 = 1
y = 0

[State 3352, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 3352, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 3352, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Target ---
[Statedef 3370]
type = A
movetype = H
physics = N
velset = 0, 0

[State 3370, Anim]
type = changeanim
trigger1 = 1
value = 5030

[State 3370, End]
type = changestate
trigger1 = hitshakeover
value = 3371


[Statedef 3371]
type = A
movetype = H
physics = N
velset = 0, 0

[State 3371, Accel]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)
[State 3371, Vel]
type = hitvelset
trigger1 = !time
x = 1
y = 1

[State 3371, Anim]
type = changeanim
trigger1 = anim = 5030 && !animtime
value = 5050

[State 3371, End]
type = changestate
trigger1 = vel y > 0 && pos y >= 25
value = 3372


[Statedef 3372]
type = L
movetype = H
physics = N
velset = 0, 0

[State 3372, Pos]
type = posset
trigger1 = 1
y = 0

[State 3372, Anim]
type = changeanim
trigger1 = !time
value = 5100
[State 3372, Anim]
type = changeanim
trigger1 = anim = 5100 && !animtime
value = 5170
[State 3372, Anim]
type = changeanim
trigger1 = anim = 5170 && !animtime
trigger2 = time = 16
value = 5110

[State 3372, FX]
type = playsnd
trigger1 = !time
value = F7, 0
[State 3372, FX]
type = explod
trigger1 = !time
anim = F60
postype = p1
pos = 0, 0
sprpriority = -3

[State 3372, End]
type = selfstate
trigger1 = time >= 32
value = ifelse(alive, 5120, 5150)


;========================<RAGING DEAD END>=============================
[Statedef 3400]
type = S
physics = S
movetype = I
anim = 3400
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = -3000
facep2 = 1

[State Damage Scaling - Add]
type = varadd
trigger1 = !time
trigger1 = var(43)
trigger1 = 1 || var(43) := 0
var(42) = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !var(20), 2, 1))

[State 3400, Erase Inputs]
type = mapset
map = "erase_super"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 3400, Super Cancel Flag]
type = varset
trigger1 = !time
trigger1 = !var(20)
trigger1 = (prevstateno = [1000, 2999]) && var(7)
var(21) = 1
ignorehitpause = 1

[State 3400, Hyper Cancel Flag]
type = varset
trigger1 = !time
trigger1 = (prevstateno = [3000, 4999]) && var(8)
var(22) = 1
ignorehitpause = 1

[State 3400, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = var(20) > 0
trigger1 = (var(20) := 0) || (var(15) := 0) || 1
time = 1

[State 3400, Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 10
time = 1
add = 255, 255, 255
ignorehitpause = 1
[State 3400, Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3400, NHB]
type = nothitby
trigger1 = animelemtime(3) < 2
time = 1
value = SCA

[State 3400, Snd]
type = playsnd
trigger1 = time = 3
value = 6, 14
channel = 0

[State 3400, Superpause FX]
type = helper
trigger1 = map(mysuperpause)
trigger1 = time = 3
helpertype = normal
stateno = 8520
ID = 8500
name = "Superpause FX"
postype = p1
pos = 13, -83
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3400, Superpause];no advantage
type = superpause
trigger1 = time = 3
time = 40
movetime = 40
p2defmul = 1 + (0 * (fvar(5) := 0))
unhittable = 1
anim = ifelse(map(mysuperpause), -1, 102)
pos = 13, -83
sound = s0, 8520
darken = !map(mysuperpause)

[State 3400, Reversal]
type = reversaldef
trigger1 = !movehit && map(parrynowalk) <= 0
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
attr = S, HT
reversal.attr = SCA, NA, SA, HA
pausetime = 0, 0
sparkno = -1
sparkxy = 0, 0
hitsound = s3, 0
p1stateno = 3410
p2stateno = 1213
fall = 1
fall.recover = 0
numhits = 0
ID = 3400

[State 3400, Snd]
type = playsnd
trigger1 = animelem = 5
value = 6, 1
channel = 0

[State 3400, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Success ---
[Statedef 3410]
type = S
physics = S
movetype = A
anim = 3410
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 3410, Safety]
type = changestate
trigger1 = !time
trigger1 = !numtarget(3400)
value = 0
ctrl = 1

[State 3410, Spark]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8020
ID = 8000
name = "Spark"
postype = p1
pos = 24, -64
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 3410, Turn]
type = turn
trigger1 = animelem = 2

[State 3410, Throw]
type = targetstate
trigger1 = numtarget
trigger1 = animelem = 2
value = 3415
[State 3410, Throw]
type = targetfacing
trigger1 = numtarget
trigger1 = animelemtime(2) >= 0
value = -1

[State 3410, Width]
type = width
trigger1 = animelemtime(5) >= 0 && animelemtime(7) < 0
edge = 32, 0
[State 3410, Width]
type = width
trigger1 = animelemtime(7) >= 0 && animelemtime(10) < 0
edge = 64, 0

[State 3410, Bind 2]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = -40, 0
[State 3410, Bind 3]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = -36, -124
[State 3410, Bind 4]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
pos = 0, -158
[State 3410, Bind 5]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
pos = 28, -138
[State 3410, Bind 6]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(6) >= 0 && animelemtime(7) < 0
pos = 32, -120
[State 3410, Bind 7]
type = targetbind
trigger1 = numtarget
trigger1 = animelem = 7
pos = 25, 0

[State 3410, Power]
type = targetpoweradd
trigger1 = numtarget && !time
value = 40;givepower

[State 3410, Power]
type = targetpoweradd
trigger1 = numtarget && animelem = 7
value = 40;givepower

[State 3410, Damage]
type = targetlifeadd
trigger1 = numtarget && animelem = 7
value = floor(-120 * fvar(10))
kill = 0

[State 3410, Hit]
type = hitadd
trigger1 = numtarget && animelem = 7
value = 1

[State 3410, Juggle]
type = varadd
trigger1 = numtarget && animelem = 7
var(15) = 1

[State 3410, Throw]
type = targetstate
trigger1 = numtarget && animelem = 7
value = 3416

[State 3410, Sound]
type = playsnd
trigger1 = animelem = 2
value = 6, 12
channel = 0

[State 3410, Sound]
type = playsnd
trigger1 = numtarget && animelem = 7
value = 7, 8

[State 3410, Shake]
type = envshake
trigger1 = numtarget && animelem = 7
time = 12
ampl = 3
freq = 180

[State 3410, Dust]
type = helper
trigger1 = numtarget && animelem = 7
helpertype = normal
stateno = 8110
ID = 8100
name = "Impact Dust"
postype = p1
pos = 25, 0
ownpal = 1

[State 3410, End]
type = changestate
trigger1 = !animtime
value = 3420


;--- Fireball ---
[Statedef 3420]
type = S
physics = N
movetype = A
anim = 3420
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 3420, Type]
type = statetypeset
trigger1 = animelemtime(2) >= 0
statetype = A
physics = N

[State 3420, Accel]
type = veladd
trigger1 = animelemtime(2) >= 0 && animelemtime(7) < 1
y = 0.5
[State 3420, Vel]
type = velset
trigger1 = animelem = 2
x = 0
y = -9

[State 3420, Vel]
type = velset
trigger1 = animelemtime(7) >= 0 && animelemtime(8) < 0
x = 0
y = -0.5

[State 3420, Accel]
type = veladd
trigger1 = animelemtime(8) >= 0
y = 0.5
[State 3420, Vel]
type = velset
trigger1 = animelem = 8
x = -1
y = -9

[State 3420, Camera]
type = screenbound
trigger1 = animelemtime(7) >= 0
value = 1
movecamera = 1, 0

[State 3420, Snd]
type = playsnd
trigger1 = animelem = 8
value = 6, 11
channel = 0
[State 3420, Snd]
type = playsnd
trigger1 = animelem = 7
value = 7, 11

[State 3420, Snd]
type = playsnd
trigger1 = animelem = 2
value = 0, 40
[State 3420, Dust]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[State 3420, FX]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 3423
ID = 3423
name = "Dead End FX"
postype = p1
ownpal = 1

[State 3420, Fireball]
type = helper
trigger1 = animelem = 7
helpertype = normal
stateno = 3425
ID = 3425
name = "Fireball"
postype = p1
pos = 9, -48
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 3420, Type]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I
[State 3420, End]
type = changestate
trigger1 = animelemtime(7) >= 1
trigger1 = vel y > 0 && (pos y > -vel y)
value = 3421


;--- Land ---
[Statedef 3421]
type = S
physics = S
movetype = A
anim = 3421
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 3421, Pos]
type = posset
trigger1 = 1
y = 0

[State 3421, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 3421, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 3421, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Target ---
[Statedef 3415]
type = S
movetype = H
physics = N
velset = 0, 0
sprpriority = 0

[State 3415, Anim]
type = changeanim2
trigger1 = !time
value = 3415

[State 3415, Sound]
type = stopsnd
trigger1 = !time
channel = 0

[State 3415, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 3415, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 3416]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 3416, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 3416, Anim]
type = changeanim
trigger1 = !time
value = 5080

[State 3416, Anim]
type = changeanim
trigger1 = time = 8
value = 5170

[State 3416, End]
type = changestate
trigger1 = anim = 5170 && !animtime
trigger2 = time >= 16
value = 3417


[Statedef 3417]
type = A
movetype = H
physics = N
velset = 0, 0
sprpriority = 0

[State 3417, Pos]
type = posset
trigger1 = 1
y = 0

[State 3417, Anim]
type = changeanim
trigger1 = !time
value = 5100
[State 3417, Anim]
type = changeanim
trigger1 = anim = 5100 && !animtime
value = 5170
[State 3417, Anim]
type = changeanim
trigger1 = anim = 5170 && !animtime
trigger2 = time = 16
value = 5110

[State 3417, FX]
type = playsnd
trigger1 = !time
value = F7, 0
[State 3417, FX]
type = explod
trigger1 = !time
anim = F60
postype = p1
pos = 0, 0
sprpriority = -3

[State 3417, End]
type = selfstate
trigger1 = time >= 64
value = ifelse(alive, 5120, 5150)
