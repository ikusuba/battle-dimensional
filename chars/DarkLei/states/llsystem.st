; __________________________________
;| Lei-Lei by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================<COMMON STATES>========================================
;==============================================================================================

;====================<STANDING>====================
[Statedef 0]
type = S
physics = S
movetype = I
velset = 0, 0
sprpriority = 0

[State 0, Gone]
type = removeexplod
trigger1 = ishelper
[State 0, Gone]
type = destroyself
trigger1 = ishelper

[State 0, Anim]
type = changeanim
trigger1 = anim != 0 && anim != 5
trigger2 = anim = 5 && !animtime
value = 0

[State 0, Dead]
type = changestate
trigger1 = !alive
value = 5050

[State 0, Dark Force]
type = changestate
trigger1 = var(20)
value = 4000


;====================<CROUCHING>====================
[Statedef 10]
type = C
physics = C
movetype = I
velset = 0, 0
sprpriority = 0

[State 10, Anim]
type = changeanim
trigger1 = !time
trigger1 = anim = 12
value = 10
elem = ifelse(animelemtime(4) >= 0, 1, 4 - animelemno(0))

[State 10, Anim]
type = changeanim
trigger1 = anim != 10
value = 10

[State 10, End]
type = selfstate
trigger1 = !animtime
value = 11


[Statedef 11]
type = C
physics = C
movetype = I
anim = 11
velset = 0, 0
sprpriority = 0

[State 11, Anim]
type = changeanim
trigger1 = anim = 6 && !animtime
value = 11


[Statedef 12]
type = S
physics = S
movetype = I
velset = 0, 0
sprpriority = 0

[State 12, Anim]
type = changeanim
trigger1 = !time
trigger1 = anim = 10
value = 12
elem = 4 - animelemno(0)

[State 12, Anim]
type = changeanim
trigger1 = anim != 12
value = 12

[State 12, End]
type = selfstate
trigger1 = command = "holddown" && command != "holdup"
value = 10

[State 12, End]
type = selfstate
trigger1 = !animtime
value = 0


;====================<WALKING>====================
[Statedef 20]
type = S
physics = S
movetype = I
sprpriority = 0

[State 20, Vel]
type = velset
trigger1 = command = "holdfwd"
trigger1 = ifelse(anim = 20, animelemtime(7) < 0, 1)
x = const(velocity.walk.fwd.x)

[State 20, Vel]
type = velset
trigger1 = command = "holdback"
x = const(velocity.walk.back.x)

[State 20, Anim]
type = changeanim
triggerall = vel x > 0
trigger1 = anim != 20 && anim != 5
trigger2 = anim = 5 && animelemtime(1) >= 1
value = 20

[State 20, Anim]
type = changeanim
triggerall = vel x < 0
trigger1 = anim != 21 && anim != 5
trigger2 = anim = 5 && animelemtime(1) >= 1
value = 21


;===================<JUMPING>================
[Statedef 40]
type = S
physics = S
movetype = I
anim = 40
ctrl = 0
velset = 0, 0
sprpriority = 1
facep2 = (prevstateno != 100)

[State 40, Keyboard Check]
type = changestate
trigger1 = !time
trigger1 = !AIlevel
trigger1 = prevstateno = 52
trigger1 = command = "holddown" && command = "holdup" 
value = 10
ctrl = 1

[State 40, Direction]
type = varset
trigger1 = !time
sysvar(1) = 0

[State 40, Direction]
type = varset
trigger1 = !AIlevel
trigger1 = time >= 1
trigger1 = command = "holdfwd" || command = "holdback"
sysvar(1) = (command = "holdfwd") - (command = "holdback")
persistent = 0

[State 40, Direction]
type = varset
trigger1 = AIlevel
sysvar(1) = ifelse((enemynear, movetype != A || backedgebodydist <= 10), 1, ifelse((enemynear, movetype = A), -1, 0))

[State 40, High Jump]
type = varset
trigger1 = !time
var(3) = 0

[State 40, High Jump]
type = varset
trigger1 = !time
trigger1 = !AIlevel
trigger1 = map(cmd_highjump)
var(3) = 3

[State 40, High Jump]
type = varset
triggerall = !time
triggerall = AIlevel
triggerall = random < 500
trigger1 = map(p2bodydistx) > 100
trigger2 = numenemy
trigger2 = enemynear, facing != facing
trigger2 = enemynear, backedgedist <= 10
trigger3 = numenemy
trigger3 = enemynear, facing = facing
trigger3 = enemynear, frontedgedist <= 10
var(3) = 3

[State 40, Running Jump]
type = varset
trigger1 = prevstateno = 100
var(3) = 3
[State 40, Running Jump]
type = varset
trigger1 = prevstateno = 100
sysvar(1) = 1

[State 40, Snd]
type = playsnd
trigger1 = !animtime
value = 0, ifelse((var(3) = [2, 3]), 41, 40)

[State 40, Dust]
type = helper
trigger1 = !animtime
helpertype = normal
stateno = 7100
ID = 7100
name = "Jump Dust"
postype = p1
ownpal = 1

[State 40, Vel Normal]
type = velset
trigger1 = !animtime
x = ifelse(!sysvar(1), const(velocity.jump.neu.x), ifelse(sysvar(1) = 1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[State 40, Vel Long]
type = velset
trigger1 = !animtime && var(3) = 3
x = ifelse(!sysvar(1), const(velocity.jump.neu.x), ifelse(sysvar(1) = 1, const(velocity.runjump.fwd.x), const(velocity.runjump.back.x)))
y = ifelse(!sysvar(1), const(velocity.runjump.y), const(velocity.jump.y))

[State 40, End]
type = selfstate
trigger1 = !animtime
value = 50
ctrl = 1


[Statedef 50]
type = A
physics = N
movetype = I
sprpriority = 1

[State 50, Anim]
type = changeanim
trigger1 = !time
value = ifelse(!(vel x), 41, ifelse((vel x) > 0, 42, 43))

[State 50, Grounded Frame]
type = posfreeze
trigger1 = time < 1 && prevstateno = 40
value = 1

[State 50, Accel]
type = gravity
trigger1 = time >= 1 || prevstateno != 40

[State 50, Land]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 52


[Statedef 51]
type = A
physics = N
movetype = I
sprpriority = 1

[State 51, Accel]
type = gravity
trigger1 = 1

[State 51, Land]
type = selfstate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 52


[Statedef 52]
type = S
physics = S
movetype = I
anim = 47
ctrl = 0
sprpriority = 1

[State 52, Anim 48]
type = changeanim
triggerall = !time
trigger1 = vel y >= (-1.05 * const(velocity.jump.y))
trigger2 = vel x >= (1.25 * const(velocity.jump.fwd.x))
trigger3 = vel x <= (1.25 * const(velocity.jump.back.x))
value = 48

[State 52, Anim 48]
type = changeanim
trigger1 = !time
trigger1 = prevstateno = 1100 || (prevstateno = [1450, 1499])
value = 48

[State 52, Stop]
type = velset
trigger1 = 1
x = 0
y = 0

[State 52, Pos]
type = posset
trigger1 = 1
y = 0

[State 52, Ctrl]
type = ctrlset
trigger1 = !time
trigger1 = prevstateno = 50 || prevstateno = 51 || prevstateno = 703 || (prevstateno = [5000, 5999])
trigger2 = time = 1
value = 1

[State 52, Trip Guard]
type = changestate
trigger1 = ctrl && command = "holdback"
trigger1 = inguarddist && (prevstateno != [600, 699])
value = 120

[State 52, No Walk]
type = assertspecial
trigger1 = anim != 5
flag = nowalk

[State 52, Snd]
type = playsnd
trigger1 = !time
value = 0, 52

[State 52, Dust]
type = explod
trigger1 = !time
anim = 7102
sprpriority = -5
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 52, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;========================<FORWARD DASH>==========================
[Statedef 100]
type = S
physics = N
anim = 100
ctrl = 0
sprpriority = 1

[State 100, Snd]
type = playsnd
trigger1 = !time
value = 0, 100
persistent = 0

[State 100, Dust]
type = helper
trigger1 = !time
helpertype = normal
stateno = 7104
ID = 8100
name = "Dash Dust"
postype = p1
pos = ceil(-15 * const(size.xscale)), 0
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 100, Vel]
type = velset
trigger1 = animelemtime(7) < 0 || animelemtime(16) >= 0
x = 0

[State 100, Vel]
type = velmul
trigger1 = vel x
x = 0.8

[State 100, Vel]
type = velset
trigger1 = animelemtime(7) >= 0 && animelemtime(10) < 0
x = const(velocity.run.fwd.x)

[State 100, Fadeout]
type = explod
trigger1 = animelem = 7
anim = 103
ID = 103
sprpriority = 1
postype = p1
removetime = -2
removeongethit = 1
scale = const(size.xscale), const(size.yscale)
ownpal = 0

[State 100, NHB]
type = nothitby
trigger1 = animelemtime(7) >= 0 && animelemtime(8) < 0
value = SCA
time = 1

[State 100, Push]
type = playerpush
trigger1 = animelemtime(7) >= 0 && animelemtime(8) < 0
value = 0

[State 100, Dust]
type = explod
trigger1 = animelemtime(7) = 5 || animelemtime(7) = 13
anim = 7107
ID = 7107
sprpriority = -2
postype = p1
vel = 0, 0
removetime = -2
scale = 0.5, 0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 100, Snd]
type = playsnd
trigger1 = animelem = 17
value = 0, ifelse((time % 72) < 36, 103, 106)

[State 100, End]
type = changestate
triggerall = !animtime
trigger1 = frontedgebodydist <= 0
trigger2 = !AIlevel
trigger2 = command != "holdfwd" || command = "holdback"
trigger3 = AIlevel
trigger3 = map(p2bodydistx) <= 90
value = 0
ctrl = 1


;========================<BACK DASH>==========================
[Statedef 105]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 105
ctrl = 0
sprpriority = 1

[State 105, Snd]
type = playsnd
trigger1 = animelem = 2
value = 0, 105

[State 105, Dust]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 7104
ID = 8100
name = "Dash Dust"
postype = p1
facing = -1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 105, Vel]
type = velset
trigger1 = animelem = 2
x = const(velocity.run.back.x)

[State 105, End]
type = changestate
trigger1 = !animtime
value = 106


;--- LAND ---
[Statedef 106]
type = S
physics = S
ctrl = 0
anim = 106
velset = 0, 0

[State 106, Vel]
type = velset
trigger1 = 1
x = 0
y = 0

[State 106, Pos]
type = posset
trigger1 = 1
y = 0

[State 106, Snd]
type = playsnd
trigger1 = !time
value = 0, 106

[State 106, Dust]
type = explod
trigger1 = !time
anim = 7102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 106, Ctrl]
type = ctrlset
trigger1 = time >= 2
value = 1

[State 106, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;========================<AIR DASH>==========================
[Statedef 110]
type = A
anim = 110
physics = N
ctrl = 1
sprpriority = 1

[State 110, Turn]
type = turn
triggerall = !time
trigger1 = !AIlevel
trigger1 = command = "holdback"
trigger2 = AIlevel
trigger2 = random < 250

[State 110, Assert]
type = assertspecial
trigger1 = 1
flag = noairguard

[State 110, Gravity]
type = gravity
trigger1 = 1

[State 110, Vel]
type = velset
trigger1 = animelemtime(10) < 0
x = 5.125
y = 0

[State 110, Snd]
type = playsnd
trigger1 = animelem = 2 || animelem = 6
value = 0, 110
freqmul = 0.8 + (random / 2500.0)

[State 110, Dust]
type = explod
trigger1 = animelem = 2 || animelem = 6
anim = 7107
ID = 7107
sprpriority = 0
postype = p1
pos = ceil(ifelse((animelem = 2 || animelem = 10), 15, 11) * const(size.xscale)), ifelse((animelem = 2 || animelem = 10), -24, -18)
removetime = -2
scale = 0.5 * const(size.xscale), 0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 110, Stop]
type = changeanim
trigger1 = animelemtime(12) < 0 && time >= 8 && command = "holdback"
value = 110
elem = 12

[State Land]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 52


;==========<ROLL>==========
[Statedef 720]
type = S
physics = N
movetype = I
anim = 720
velset = 0, 0
ctrl = 0
sprpriority = 1

[State 720, Snd]
type = playsnd
trigger1 = animelem = 2
value = 3, ifelse(random < 500, 6, 9)
channel = 0

[State 720, Snd]
type = playsnd
trigger1 = animelem = 2
value = 0, 102

[State 720, Vel]
type = velset
trigger1 = animelem = 3
x = 5.56
[State 720, Vel]
type = velset
trigger1 = animelem = 6
x = 0

[State 720, Push]
type = playerpush
trigger1 = 1
value = 0

[State 720, HB]
type = hitby
trigger1 = animelemtime(6) < 0
value = SCA, AT
time = 1

[State 720, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;==========<ROLL>==========
[Statedef 725]
type = S
physics = N
movetype = I
anim = 725
velset = 0, 0
ctrl = 0
sprpriority = 1

[State 725, Snd]
type = playsnd
trigger1 = animelem = 2
value = 3, ifelse(random < 500, 6, 9)
channel = 0

[State 725, Snd]
type = playsnd
trigger1 = animelem = 2
value = 0, 102

[State 725, Vel]
type = velset
trigger1 = animelem = 3
x = -4.17
[State 725, Vel]
type = velset
trigger1 = animelem = 6
x = 0

[State 725, Push]
type = playerpush
trigger1 = 1
value = 0

[State 725, HB]
type = hitby
trigger1 = animelemtime(6) < 0
value = SCA, AT
time = 1

[State 725, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;==========<POWER CHARGE>==========
[Statedef 740]
type = S
physics = S
movetype = I
anim = 740
ctrl = 0
velset = 0, 0

[State 740, Power]
type = poweradd
trigger1 = 1
value = 2 + ifelse(time < 60, 0, (time -60) / 12)

[State 740, Snd]
type = playsnd
trigger1 = time = 8
value = 3, 10
channel = 0

[State 740, Flash]
type = palfx
trigger1 = 1
time = 1
add = 75 + ceil(sin(time / 6.0 * pi) * 75), 25 + ceil(sin(time / 6.0 * pi) * 25), 0

[State 740, FX]
type = helper
trigger1 = !numhelper(7240)
helpertype = normal
stateno = 7240
ID = 7240
name = "Power Charge"
postype = p1
pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 740, FX]
type = helper
trigger1 = !numhelper(7241)
helpertype = normal
stateno = 7241
ID = 7241
name = "Particles"
postype = p1
pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 740, End]
type = changestate
triggerall = time >= 8
trigger1 = power >= const(data.power) || power >= powermax || roundstate != 2
trigger2 = !AIlevel && (command != "/b" || command != "/y")
trigger3 = AIlevel && (inguarddist || map(p2bodydistx) <= 120)
value = 741 + 0 * (var(58) := 5)


;--- END ---
[Statedef 741]
type = S
physics = S
movetype = I
anim = 741
velset = 0, 0
ctrl = 1

[State 741, Snd]
type = stopsnd
trigger1 = !time
channel = 0

[State 741, Snd]
type = playsnd
trigger1 = !time
trigger1 = power >= const(data.power)
value = 4, 1
channel = 0

[State 741, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;==========<ZERO COUNTER>==========
[Statedef 750]
type = S
physics = S
movetype = I
anim = 750
ctrl = 0
velset = 0, 0
poweradd = -1000
sprpriority = 2
facep2 = 1

[State 750, Strength]
type = varset
trigger1 = !time
trigger1 = !AIlevel
var(10) = ifelse((command = "counter_p"), 1, 2)
ignorehitpause = 1

[State 750, Strength AI]
type = varset
trigger1 = !time
trigger1 = AIlevel
var(10) = ifelse((p2statetype = A), 1, ifelse((p2statetype = C), 2, ifelse(random < 500, 1, 2)))
ignorehitpause = 1

[State 750, Snd]
type = playsnd
trigger1 = !time
value = 3, 0
channel = 0

[State 750, Super Pause FX]
type = helper
trigger1 = !time
helpertype = normal
stateno = 7250
ID = 7250
postype = p1
pos = ceil(46 * const(size.xscale)), -46
ownpal = 1
persistent = 0
supermovetime = 999

[State 750, Super Pause]
type = superpause
trigger1 = !time
time = 15 + floor(0 * (fvar(5) := 0))
movetime = 15
anim = -1
sound = s7, 1
p2defmul = 1 + (0 * (fvar(5) := 0))
darken = 0

[State 520, End]
type = changestate
trigger1 = time >= 15
value = ifelse(var(10) = 1, 752, 754)


;========================<PUNCH ZERO COUNTER>=============================
[Statedef 752]
type = S
physics = N
movetype = A
anim = 752
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 0

[State 752, NHB]
type = nothitby
trigger1 = animelemtime(4) < 0
value = SCA
time = 1
ignorehitpause = 1

[State 752, Width]
type = width
trigger1 = animelem = 3
player = ceil(50 * const(size.xscale)), 0
ignorehitpause = 1

[State 752, Snd]
type = playsnd
trigger1 = animelem = 2
value = 3, ifelse(random < 500, 2, 8)
channel = 0

[State 752, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 6
channel = 1

[State 752, Hit]
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
fall.recovertime = 120;24
forcestand = 1
hitsound = s2, 9
guardsound = -1
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 60) * (var(36) := 145), var(37) := -64
envshake.time = 10
envshake.ampl = 2
envshake.freq = 180
kill = 0

[State 752, Type]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I

[State 752, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;========================<KICK ZERO COUNTER>=============================
[Statedef 754]
type = S
physics = N
movetype = A
anim = 754
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 0

[State 754, NHB]
type = nothitby
trigger1 = animelemtime(4) < 0
value = SCA
time = 1
ignorehitpause = 1

[State 754, Snd]
type = playsnd
trigger1 = animelem = 3
value = 3, ifelse(random < 500, 2, 8)
channel = 0

[State 754, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 8
channel = 1

[State 754, Hit]
type = hitdef
trigger1 = animelem = 4
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
hitsound = s2, 9
guardsound = -1
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 30) * (var(36) := 124), var(37) := -16
envshake.time = 10
envshake.ampl = 2
envshake.freq = 180
kill = 0

[State 754, Type]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I

[State 754, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;===================<DARK FORCE>===================
[Statedef 770]
type = S
physics = S
movetype = I
anim = 770
ctrl = 0
velset = 0, 0
poweradd = -2000
sprpriority = 2

[State 770, NHB]
type = nothitby
trigger1 = 1
time = 2
value = SCA

[State 770, Corner Push]
type = varset
trigger1 = !time
fvar(5) = 0

[State 770, Snd]
type = playsnd
trigger1 = !time
value = 4, 1
channel = 0

[State 770, Snd]
type = playsnd
trigger1 = !time
value = 7, 2

[State 770, FX]
type = helper
trigger1 = !time
helpertype = normal
stateno = 7270
ID = 7270
name = "Dark Force FX"
postype = p1
pos = ceil(8 * const(size.xscale)), -50
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 9999
supermovetime = 9999

[State 770, Var]
type = varset
trigger1 = 1
var(20) = 360

[State 770, Lin-Lin]
type = helper
trigger1 = animelem = 3 && !numhelper(6000)
helpertype = normal
stateno = 6040
ID = 6000
name = "Lin-Lin"
postype = p1
pos = ceil(36 * const(size.xscale)), -60
size.shadowoffset = -8
ownpal = 1

[State 770, End]
type = changestate
trigger1 = !animtime
value = 4000


;========================<GUARD>========================
;--- START ---
[Statedef 120]
type = U
physics = U
anim = 120 + (statetype = C) + (statetype = A) * 2

[State 120, Do or do not]
type = assertspecial
trigger1 = 1
flag = nostandguard
flag2 = nocrouchguard
flag3 = noairguard

[State 120, Type]
type = statetypeset
trigger1 = !time
trigger1 = statetype = S
physics = S

[State 120, Type]
type = statetypeset
trigger1 = !time
trigger1 = statetype = C
physics = C

[State 120, Type]
type = statetypeset
trigger1 = !time
trigger1 = statetype = A
physics = A

[State 120, Vel]
type = velset
trigger1 = !time
trigger1 = statetype != A
x = 0
y = 0

[State 120, High to Low]
type = statetypeset
trigger1 = !AIlevel && statetype = S && command = "holddown"
trigger2 = AIlevel && numenemy
trigger2 = statetype = S && (enemynear, movetype = A)
trigger2 = (enemynear, statetype = C) || (enemynear, hitdefattr = C, AA, AP)
statetype = C
physics = C

[State 120, Low to High]
type = statetypeset
trigger1 = !AIlevel && statetype = C && command != "holddown"
trigger2 = AIlevel && numenemy
trigger2 = statetype = C && (enemynear, movetype = A)
trigger2 = !(enemynear, statetype = C) && !(enemynear, hitdefattr = C, AA, AP)
statetype = S
physics = S

[State 120, End]
type = changestate
trigger1 = !animtime
value = 130 + (statetype = C) + (statetype = A) * 2

[State 120, Stop Guarding]
type = changestate
triggerall = !numhelper(2005) || command != "holdback";Bombs
trigger1 = !inguarddist
trigger2 = !AIlevel
trigger2 = p2dist x >= 0
trigger2 = command != "holdback" || command = "holdfwd"
trigger3 = !AIlevel
trigger3 = p2dist x < 0
trigger3 = command != "holdfwd" || command = "holdback"
trigger4 = AIlevel && numenemy
trigger4 = enemynear, hitdefattr = SCA, AT
value = 140

[State 120, No Walking]
type = assertspecial
triggerall = ctrl
trigger1 = p2dist x >= 0
trigger1 = command != "holdfwd"
trigger2 = p2dist x < 0
trigger2 = command != "holdback"
flag = nowalk


;--- STAND GUARD (Guarding) ---
[Statedef 130]
type = S
physics = S
velset = ifelse(prevstateno = 132 && abs(vel x) < 5, 0, vel x), 0

[State 130, Do or do not]
type = assertspecial
trigger1 = 1
flag = nostandguard
flag2 = nocrouchguard

[State 130, Anim]
type = changeanim
trigger1 = anim != 130
value = 130

[State 130, AI fix]
type = changestate
trigger1 = AIlevel && numenemy
trigger1 = time >= 120 || enemynear, time >= 60
trigger1 = random < 17
value = 40

[State 130, Snd]
type = playsnd
trigger1 = !time
trigger1 = prevstateno = 132 || (prevstateno = [154, 155])
value = 0, 52

[State 130, Dust]
type = explod
trigger1 = !time
trigger1 = prevstateno = 132 || (prevstateno = [154, 155])
anim = 7102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 130, High to Low]
type = changestate
trigger1 = !AIlevel && command = "holddown"
trigger2 = AIlevel && numenemy
trigger2 = (enemynear, movetype = A) && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = (enemynear, statetype = C) || (enemynear, hitdefattr = C, AA, AP)
value = 131

[State 130, Stop Guarding]
type = changestate
triggerall = !numhelper(2005) || command != "holdback";Bombs
trigger1 = !inguarddist
trigger2 = !AIlevel
trigger2 = p2dist x >= 0
trigger2 = command != "holdback" || command = "holdfwd"
trigger3 = !AIlevel
trigger3 = p2dist x < 0
trigger3 = command != "holdfwd" || command = "holdback"
trigger4 = AIlevel && numenemy
trigger4 = enemynear, hitdefattr = SCA, AT
value = 140

[State 130, No Walking]
type = assertspecial
triggerall = ctrl
trigger1 = p2dist x >= 0
trigger1 = command != "holdfwd"
trigger2 = p2dist x < 0
trigger2 = command != "holdback"
flag = nowalk


;--- CROUCH GUARD (Guarding) ---
[Statedef 131]
type = C
physics = C
velset = ifelse(prevstateno = 132 && abs(vel x) < 5, 0, vel x), 0

[State 131, Do or do not]
type = assertspecial
trigger1 = 1
flag = nostandguard
flag2 = nocrouchguard

[State 131, Anim]
type = changeanim
trigger1 = anim != 131
value = 131

[State 131, Low to High]
type = changestate
trigger1 = !AIlevel && command != "holddown"
trigger2 = AIlevel && numenemy
trigger2 = (enemynear, movetype = A) && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = !(enemynear, statetype = C) && !(enemynear, hitdefattr = C, AA, AP)
value = 130

[State 131, AI fix]
type = changestate
trigger1 = AIlevel && numenemy
trigger1 = time >= 120 || enemynear, time >= 60
trigger1 = random < 17
value = 40

[State 131, Stop Guarding]
type = changestate
triggerall = !numhelper(2005) || command != "holdback";Bombs
trigger1 = !inguarddist
trigger2 = !AIlevel
trigger2 = p2dist x >= 0
trigger2 = command != "holdback" || command = "holdfwd"
trigger3 = !AIlevel
trigger3 = p2dist x < 0
trigger3 = command != "holdfwd" || command = "holdback"
trigger4 = AIlevel && numenemy
trigger4 = enemynear, hitdefattr = SCA, AT
value = 140


;--- AIR GUARD (Guarding) ---
[Statedef 132]
type = A
physics = N

[State 132, Do or do not]
type = assertspecial
trigger1 = 1
flag = noairguard

[State 132, Anim]
type = changeanim
trigger1 = anim != 132
value = 132

[State 132, Accel]
type = veladd
trigger1 = 1
y = const(movement.yaccel)

[State 132, Var]
type = varset
trigger1 = 1
sysvar(0) = vel y > 0 && (pos y > -vel y)

[State 132, Vel]
type = velset
trigger1 = sysvar(0)
y = 0

[State 132, Pos]
type = posset
trigger1 = sysvar(0)
y = 0

[State 132, End]
type = changestate
triggerall = sysvar(0) && inguarddist
trigger1 = !AIlevel
trigger1 = ifelse(p2dist x < 0, command = "holdfwd", command = "holdback")
trigger2 = AIlevel
value = 130

[State 132, End]
type = changestate
trigger1 = sysvar(0)
value = 52

;[State 132, Stop guarding was here]


;--- GUARD (End) ---
[Statedef 140]
type = U
physics = U
ctrl = 1

[State 140, Anim]
type = changeanim
trigger1 = !time
value = 140 + (statetype = C) + (statetype = A) * 2

[State 140, Type]
type = statetypeset
trigger1 = !time
trigger1 = statetype = S
physics = S

[State 140, Type]
type = statetypeset
trigger1 = !time
trigger1 = statetype = C
physics = C

[State 140, Type]
type = statetypeset
trigger1 = !time
trigger1 = statetype = A
physics = A

[State 140, High to Low]
type = statetypeset
trigger1 = !AIlevel && statetype = S && command = "holddown"
trigger2 = AIlevel && numenemy
trigger2 = statetype = S && (enemynear, movetype = A) && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = (enemynear, statetype = C) || (enemynear, hitdefattr = C, AA, AP)
statetype = C
physics = C

[State 140, Low to High]
type = statetypeset
trigger1 = !AIlevel && statetype = C && command != "holddown"
trigger2 = AIlevel && numenemy
trigger2 = statetype = C && (enemynear, movetype = A) && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = !(enemynear, statetype = C) && !(enemynear, hitdefattr = C, AA, AP)
statetype = S
physics = S

[State 140, No Walking]
type = assertspecial
triggerall = ctrl
trigger1 = p2dist x >= 0
trigger1 = command != "holdfwd"
trigger2 = p2dist x < 0
trigger2 = command != "holdback"
flag = nowalk

[State 140, End]
type = changestate
trigger1 = !animtime
value = (statetype = C) * 11 + (statetype = A) * 51


;--- STAND GUARD HIT (Shaking) ---
[Statedef 150]
type = S
movetype = H
physics = N
velset = 0, 0

[State 150, Anim]
type = changeanim
trigger1 = 1
value = 150

[State 150, End]
type = changestate
trigger1 = hitshakeover
value = 151 + 2 * ((!AIlevel && command = "holddown") || (AIlevel && p2statetype = C))

[State 150, High to Low]
type = statetypeset
triggerall = statetype = S
trigger1 = !AIlevel
trigger1 = command = "holddown"
trigger2 = AIlevel && numenemy
trigger2 = (enemynear, movetype = A) && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = (enemynear, statetype = C) || (enemynear, hitdefattr = C, AA, AP)
statetype = C
physics = C

[State 150, Low to High]
type = statetypeset
triggerall = statetype = C
trigger1 = !AIlevel
trigger1 = command != "holddown"
trigger2 = AIlevel && numenemy
trigger2 = (enemynear, movetype = A) && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = !(enemynear, statetype = C) && !(enemynear, hitdefattr = C, AA, AP)
statetype = S
physics = S


;--- STAND GUARD HIT 2 (Knocked back) ---
[Statedef 151]
type = S
physics = S
movetype = H
anim = 130

[State 151, Vel]
type = hitvelset
trigger1 = !time
x = 1

[State 151, Vel]
type = velset
trigger1 = time = gethitvar(slidetime)
trigger2 = hitover
x = 0

[State 151, Ctrl]
type = ctrlset
trigger1 = time = gethitvar(ctrltime)
value = 1

[State 151, High to Low]
type = statetypeset
triggerall = statetype = S
trigger1 = !AIlevel
trigger1 = command = "holddown"
trigger2 = AIlevel && numenemy
trigger2 = (enemynear, movetype = A) && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = (enemynear, statetype = C) || (enemynear, hitdefattr = C, AA, AP)
statetype = C
physics = C

[State 151, Low to High]
type = statetypeset
triggerall = statetype = C
trigger1 = !AIlevel
trigger1 = command != "holddown"
trigger2 = AIlevel && numenemy
trigger2 = (enemynear, movetype = A) && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = !(enemynear, statetype = C) && !(enemynear, hitdefattr = C, AA, AP)
statetype = S
physics = S

[State 151, End]
type = changestate
trigger1 = hitover
value = 130
ctrl = 1


;--- CROUCH GUARD HIT (Shaking) ---
[Statedef 152]
type = C
physics = N
movetype = H
velset = 0, 0

[State 152, Anim]
type = changeanim
trigger1 = 1
value = 151

[State 152, End]
type = changestate
trigger1 = hitshakeover
value = 151 + 2 * ((!AIlevel && command = "holddown") || (AIlevel && p2statetype = C))

[State 152, High to Low]
type = statetypeset
triggerall = statetype = S
trigger1 = !AIlevel
trigger1 = command = "holddown"
trigger2 = AIlevel && numenemy
trigger2 = (enemynear, movetype = A) && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = (enemynear, statetype = C) || (enemynear, hitdefattr = C, AA, AP)
statetype = C
physics = C

[State 152, Low to High]
type = statetypeset
triggerall = statetype = C
trigger1 = !AIlevel
trigger1 = command != "holddown"
trigger2 = AIlevel && numenemy
trigger2 = (enemynear, movetype = A) && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = !(enemynear, statetype = C) && !(enemynear, hitdefattr = C, AA, AP)
statetype = S
physics = S


;--- CROUCH GUARD HIT 2 (Knocked back) ---
[Statedef 153]
type = C
physics = C
movetype = H
anim = 131

[State 153, Vel]
type = hitvelset
trigger1 = !time
x = 1

[State 153, Vel]
type = velset
trigger1 = time = gethitvar(slidetime)
trigger2 = hitover
x = 0

[State 153, Ctrl]
type = ctrlset
trigger1 = time = gethitvar(ctrltime)
value = 1

[State 153, High to Low]
type = statetypeset
triggerall = statetype = S
trigger1 = !AIlevel
trigger1 = command = "holddown"
trigger2 = AIlevel && numenemy
trigger2 = (enemynear, movetype = A) && random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = (enemynear, statetype = C) || (enemynear, hitdefattr = C, AA, AP)
statetype = C
physics = C

[State 153, Low to High]
type = statetypeset
triggerall = statetype = C
trigger1 = !AIlevel
trigger1 = command != "holddown"
trigger2 = AIlevel && numenemy
trigger2 = (enemynear, movetype = A) && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = !(enemynear, statetype = C) && !(enemynear, hitdefattr = C, AA, AP)
statetype = S
physics = S

[State 153, End]
type = changestate
trigger1 = hitover
value = 131
ctrl = 1


;--- AIR GUARD HIT (Shaking) ---
[Statedef 154]
type = A
physics = N
movetype = H
velset = 0, 0

[State 154, Anim]
type = changeanim
trigger1 = 1
value = 152

[State 154, End]
type = changestate
trigger1 = hitshakeover
value = 155

;--- AIR GUARD HIT 2 (Knocked away) ---
[Statedef 155]
type = A
physics = N
movetype = H
anim = 132

[State 155, Vel]
type = hitvelset
trigger1 = !time
x = 1
y = 1

[State 155, Accel]
type = veladd
trigger1 = 1
y = const(movement.yaccel)

[State 155, Ctrl]
type = ctrlset
trigger1 = time = gethitvar(ctrltime)
value = 1

[State 155, Var]
type = varset
trigger1 = 1
sysvar(0) = vel y > 0 && (pos y > -vel y)

[State 155, Vel]
type = velset
trigger1 = sysvar(0)
y = 0

[State 155, Pos]
type = posset
trigger1 = sysvar(0)
y = 0

[State 155, End]
type = changestate
triggerall = sysvar(0) && inguarddist
trigger1 = !AIlevel
trigger1 = ifelse(p2dist x < 0, command = "holdfwd", command = "holdback")
trigger2 = AIlevel
value = 130

[State 155, End]
type = changestate
trigger1 = sysvar(0)
value = 52


;==========<CHEAP K.O.>==========
[Statedef 5950]
type = S
physics = S
movetype = H
anim = 5950
velset = 0, 0
ctrl = 0

[State 5950, NHB]
type = nothitby
trigger1 = 1
value = SCA

[State 5950, Pos]
type = posset
trigger1 = 1
y = 0

[State 5950, KO Snd]
type = assertspecial
trigger1 = 1
flag = nokosnd
[State 5950, KO Snd]
type = stopsnd
trigger1 = !time
trigger1 = !alive
channel = 0
[State 5950, KO Snd]
type = playsnd
trigger1 = animelem = 2 && !alive
value = 11, 1

[State 5950, FX]
type = playsnd
trigger1 = animelem = 7
value = F7, 0

[State 5950, FX]
type = explod
trigger1 = animelem = 7
anim = F60
postype = p1
pos = 0, 0
sprpriority = -10

[State 5950, End]
type = changestate
trigger1 = !animtime
value = ifelse(alive, 5110, 5150)


;==========<TAUNT>==========
[Statedef 195]
type = S
movetype = I
physics = S
anim = 195
velset = 0, 0
ctrl = 0

[State 195, Snd]
type = playsnd
trigger1 = anim = 195 && animelem = 3
value = 3, 5
channel = 0

[State 195, End]
type = changeanim
trigger1 = anim = 195 && animelemtime(5) >= 0 && command != "/s"
value = 196

[State 195, End]
type = changestate
trigger1 = anim = 196 && !animtime
value = 0
ctrl = 1


;==========<LOSE (Time over)>==========
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0, 0
[State 170, Snd]
type = playsnd
trigger1 = animelem = 4
value = 3, 4
channel = 0


;==========<DRAW GAME (Time over)>==========
[Statedef 175]
type = S
ctrl = 0
anim = 175
velset = 0, 0
sprpriority = -1

[State 175, ball]
type = helper
trigger1 = animelem = 2 && !numhelper(176)
helpertype = normal
stateno = 176
ID = 176
name = "Iron Ball"
postype = p1
pos = ceil(9 * const(size.xscale)), -18

[State 175, Snd]
type = playsnd
trigger1 = animelem = 7
value = 1, 5
channel = 1
[State 175, Snd]
type = playsnd
trigger1 = animelem = 7
value = 2, 4
volumescale = 50


;--- IRON BALL ---
[Statedef 176]
type = S
physics = N
anim = 176
velset = 1, 1
sprpriority = -2

[State 176, Accel]
type = veladd
trigger1 = pos y < 0
y = 0.45

[State 176, Snd]
type = playsnd
trigger1 = animelemtime(2) < 0 && vel y > 0 && (pos y > -vel y)
value = 5, 4
volumescale = 75
persistent = 0

[State 176, Anim]
type = changeanim
trigger1 = animelemtime(2) < 0 && vel y > 0 && (pos y > -vel y)
value = 176
elem = 2

[State 176, Vel]
type = velset
trigger1 = vel y > 0 && (pos y > -vel y)
trigger1 = root, anim = 175 && root, animelemtime(7) < 0
x = 0
y = 0

[State 176, Pos]
type = posset
triggerall = pos y >= 0
trigger1 = root, anim = 175 && root, animelemtime(7) < 0
trigger2 = animelemtime(2) > 0 && vel y > 0
y = 0

[State 176, Vel]
type = velmul
trigger1 = animelemtime(2) > 0 && vel y >= 0 && pos y >= 0
x = 0.8
y = 0

[State 176, kicked]
type = velset
trigger1 = root, anim = 175 && root, animelem = 7
x = 3
y = -6

[State 176, Pos]
type = bindtoroot
trigger1 = root, anim = 175 && root, animelem = 7
pos = ceil(44 * const(size.xscale)), -37
persistent = 0

[State 176, Spark]
type = helper
trigger1 = root, map(mysparks)
trigger1 = root, anim = 175 && root, animelem = 7
helpertype = normal
stateno = 8020
ID = 8000
name = "Spark"
postype = p1
pos = 0, -8
facing = 1
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 176, Spark]
type = explod
trigger1 = !(root, map(mysparks))
trigger1 = root, anim = 175 && root, animelem = 7
anim = F0
ID = 8000
postype = p1
pos = 0, -8
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1


;==========<INITIALIZE>==========
;--- Before Config ---
[Statedef 5900]
type = S

[State 5900, Var Reset]
type = varrangeset
trigger1 = !roundsexisted
value = 0

[State 5900, Var Reset]
type = varrangeset
trigger1 = !roundsexisted
fvalue = 0

[State 5900, Palette]
type = remappal
trigger1 = 1
source = 1, 1
dest = 1, palno

[State 5900, End]
type = changestate
trigger1 = 1
value = 5901


;--- After Config ---
[Statedef 5902]
type = S

[State 5902, Turns Intro]
type = changestate
trigger1 = teammode = turns
trigger1 = !roundsexisted && roundno >= 2
value = 6900

[State 5902, End]
type = changestate
trigger1 = !time
value = ifelse(roundno = 1, 190, 0)


;==========<PREINTRO>==========
[Statedef 190]
type = S
ctrl = 0
velset = 0, 0

[State 190, Intro]
type = changestate
trigger1 = 1
value = ifelse(random < 333, 191, ifelse(random < 500, 192, 193))


;==========<INTRO 1>==========
[Statedef 191]
type = S
anim = 191

[State 191, Intro]
type = assertspecial
trigger1 = 1
flag = intro

[State 191, Lin-Lin]
type = helper
trigger1 = !time
trigger1 = !numhelper(6000)
helpertype = normal
stateno = 6015
ID = 6000
name = "Lin-Lin"
postype = p1
pos = ceil(-55 * const(size.xscale)), 0

[State 191, Hat]
type = explod
trigger1 = animelem = 4
anim = 6016
ID = 6016
sprpriority = 1
postype = p1
pos = ceil(-10 * const(size.xscale)), -113
vel = 0, -2
accel = 0, 0.34
removetime = 19
ownpal = 1
scale = const(size.xscale), const(size.yscale)

[State 191, Snd]
type = playsnd
trigger1 = animelem = 4
value = 4, 1
channel = 0

[State 191, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 7
channel = 1

[State 191, End]
type = changestate
trigger1 = !animtime
value = 0


;==========<INTRO 2>==========
[Statedef 192]
type = S
physics = N
anim = 192

[State 192, Intro]
type = assertspecial
trigger1 = 1
flag = intro

[State 192, Camera]
type = helper
trigger1 = !numhelper(7650)
helpertype = normal
stateno = 7650
ID = 7650
name = "Camera"
postype = p1
pos = 0, 0
facing = 1

[State 192, bound]
type = screenbound
trigger1 = 1
value = 0

[State 192, Pos]
type = posset
trigger1 = !time
x = 320 * facing

[State 192, Vel]
type = velset
trigger1 = animelemtime(2) < 0
x = -8

[State 192, Dust]
type = explod
trigger1 = (time % 9) = 5
trigger1 = animelemtime(2) < 0
anim = 7107
ID = 7107
sprpriority = -1
postype = p1
pos = 0, 0
removetime = -2
scale = 0.5 * const(size.xscale), 0.5
ownpal = 1

[State 192, Anim]
type = changeanim
trigger1 = time
trigger1 = numhelper(7650)
trigger1 = animelemtime(2) < 0
trigger1 = (helper(7650), rootdist x) <= 24
value = 192
elem = 2

[State 192, Vel]
type = velset
trigger1 = animelem = 2
x = (helper(7650), rootdist x) / -12.0

[State 192, Pos]
type = posset
trigger1 = numhelper(7650) && animelemtime(11) >= 0
x = ceil(helper(7650), pos x)

[State 192, Vel]
type = velset
trigger1 = numhelper(7650) && animelemtime(11) >= 0
x = 0

[State 192, Snd]
type = playsnd
trigger1 = animelem = 2
value = 3, 0
channel = 0

[State 193, Snd]
type = playsnd
trigger1 = animelem = 10
value = 0, 52

[State 193, Dust]
type = explod
trigger1 = animelem = 10
anim = 7102
ID = 7102
sprpriority = -2
postype = p1
removetime = -2
ownpal = 1
scale = 0.5, 0.5

[State 192, End]
type = changestate
trigger1 = !animtime
value = 0


;==========<INTRO 3 - COFFIN>==========;WIP
[Statedef 193]
type = S
anim = 193
sprpriority = 3

[State 193, Intro]
type = assertspecial
trigger1 = 1
flag = intro

[State 193, Camera]
type = helper
trigger1 = !numhelper(7650)
helpertype = normal
stateno = 7650
ID = 7650
name = "Camera"
postype = p1

[State 193, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 193, Pos]
type = posadd
trigger1 = !time
x = -20

[State 193, Coffin]
type = helper
trigger1 = !time
helpertype = normal
stateno = 6020
ID = 6020
name = "Coffin"
postype = p1
pos = 0, 0

[State 193, Lin-Lin]
type = helper
trigger1 = !time
trigger1 = !numhelper(6000)
helpertype = normal
stateno = 6027
ID = 6000
name = "Lin-Lin"
postype = p1
pos = ceil(36 * const(size.xscale)), 0
facing = -1

[State 193, Hide]
type = assertspecial
trigger1 = numhelper(6020)
trigger1 = helper(6020), stateno = 6020
flag = invisible

[State 193, Spr]
type = sprpriority
trigger1 = animelem = 8
value = 0

[State 193, Vel]
type = velset
trigger1 = animelem = 6
trigger1 = numhelper(7650)
x = (helper(7650), rootdist x) / (animelemtime(11))

[State 193, Pos]
type = posset
trigger1 = animelemtime(11) >= 0
trigger1 = numhelper(7650)
x = ceil(helper(7650), pos x)
y = 0

[State 193, Vel]
type = velset
trigger1 = animelem = 11
x = 0
y = 0

[State 193, Snd]
type = playsnd
trigger1 = animelem = 11
value = 0, 52

[State 193, Dust]
type = explod
trigger1 = animelem = 11
anim = 7102
sprpriority = -5
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 193, Snd]
type = playsnd
trigger1 = animelem = 12
value = 4, 4
channel = 0

[State 193, End]
type = changestate
trigger1 = !animtime
value = 0


;--- COFFIN ---
[Statedef 6020]
type = A
physics = N
anim = 6020
velset = 0, 0
sprpriority = 3

[State 6020, End]
type = changestate
trigger1 = root, stateno = 193
trigger1 = root, animelemtime(2) >= 0
trigger2 = root, stateno != 193
value = 6021


[Statedef 6021]
type = A
physics = N
anim = 6021
velset = 0, 0
sprpriority = 3

[State 6021, Shake]
type = envshake
trigger1 = !time
time = 4
ampl = 2
freq = 180

[State 6021, Sound]
type = playsnd
trigger1 = !time
value = 5, 20

[State 193, Left]
type = explod
trigger1 = !time
anim = 6022
ID = 6021
postype = p1
vel = -4, -2
accel = 0, 0.25
sprpriority = 4
scale = const(size.xscale), const(size.yscale)
removetime = 32

[State 193, Right]
type = explod
trigger1 = !time
anim = 6023
ID = 6021
postype = p1
vel = 4, -4
accel = 0, 0.25
sprpriority = -1
scale = const(size.xscale), const(size.yscale)
removetime = 32

[State 193, Top]
type = explod
trigger1 = !time
anim = 6024
ID = 6021
postype = p1
vel = 0, -8
accel = 0, 0.5
sprpriority = 4
scale = const(size.xscale), const(size.yscale)
removetime = 32

[State 193, Front]
type = explod
trigger1 = !time
anim = 6025
ID = 6021
postype = p1
vel = 4, -2
accel = 0, 0.25
sprpriority = 4
scale = const(size.xscale), const(size.yscale)
removetime = 32

[State 6021, Fade]
type = modifyexplod
trigger1 = numexplod
trigger1 = time = [16, 32]
ID = 6021
trans = addalpha
alpha = 256 - (16 * (time - 16)), (16 * (time - 16))

[State 6021, Remove]
type = removeexplod
trigger1 = time >= 32
trigger1 = numexplod

[State 6021, Fade]
type = trans
trigger1 = time >= 32
trans = addalpha
alpha = 256 - (8 * (time - 32)), (8 * (time - 32))

[State 6021, End]
type = destroyself
trigger1 = time >= 64


;====================<TURNS INTRO>====================
[Statedef 6900]
type = A
anim = 6900
velset = 0, 0
ctrl = 0

[State 6900, Intro]
type = assertspecial
trigger1 = 1
flag = intro

[State 6900, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 6900, Camera]
type = helper
trigger1 = !numhelper(7650)
helpertype = normal
stateno = 7650
ID = 7650
name = "Camera"
postype = p1

[State 6900, Pos]
type = posset
trigger1 = !time
x = (-320 + abs(pos x)) * facing

[State 6900, Vel]
type = velset
trigger1 = !time
x = (helper(7650), rootdist x) / -40.0
y = -10.25
[State 6900, Accel]
type = veladd
trigger1 = 1
y = 0.5

[State 6900, End]
type = changestate
trigger1 = time
trigger1 = vel y > 0 && (pos y > -vel y)
value = 6901


;--- Land ---
[Statedef 6901]
type = S
physics = S
anim = 6901
velset = 0, 0

[State 6901, Intro]
type = assertspecial
trigger1 = 1
flag = intro

[State 6901, Pos]
type = posset
trigger1 = !time
trigger1 = numhelper(7650)
x = ceil(helper(7650), pos x)

[State 6901, Pos]
type = posset
trigger1 = !time
y = 0

[State 6901, Snd]
type = playsnd
trigger1 = anim = 6901 && animelem = 7
value = 3, 5
channel = 0

[State 6901, Snd]
type = playsnd
trigger1 = !time
value = 0, 52
[State 6901, Dust]
type = explod
trigger1 = !time
anim = 7102
ID = 7102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 6901, End]
type = changestate
trigger1 = !animtime
value = 0


;====================<WIN POSE DECIDER>====================
[Statedef 180]
type = S

[State 180, Quote]
type = victoryquote
trigger1 = 1
value = 1 + (random % 12)

[State 180, win]
type = changestate
trigger1 = command = "/x" || command = "/y" || command = "/z"
value = ifelse(command = "/z", 185, ifelse(command = "/y", 181, 184))

[State 180, win]
type = changestate
trigger1 = command = "/a" || command = "/b" || command = "/c"
value = ifelse(command = "/c", 184, ifelse(command = "/b", 183, 182))

[State 180, winpose]
type = changestate
trigger1 = 1
value = ifelse(random < 200, 181, ifelse(random < 250, 182, ifelse(random < 333, 183, ifelse(random < 500, 184, 185))))


;==========<WIN 1>==========
[Statedef 181]
type = S
anim = 181

[State 181, Assert]
type = assertspecial
trigger1 = time < 60
flag = roundnotover

[State 181, Snd]
type = playsnd
trigger1 = animelem = 13
value = 4, 5
channel = 0


;==========<WIN 2>==========
[Statedef 182]
type = S
anim = 182

[State 182, Assert]
type = assertspecial
trigger1 = time < 60
flag = roundnotover

[State 182, Snd]
type = playsnd
trigger1 = animelem = 14
value = 4, 5
channel = 0


;==========<WIN 3>==========
[Statedef 183]
type = S
anim = 183

[State 183, Assert]
type = assertspecial
trigger1 = time < 60
flag = roundnotover

[State 183, Anim]
type = changeanim
trigger1 = !time
trigger1 = frontedgebodydist >= 100
value = 183
elem = 4

[State 183, Anim]
type = turn
trigger1 = !time
trigger1 = frontedgebodydist < 100

[State 183, Lin-Lin]
type = helper
trigger1 = !time
trigger1 = !numhelper(6000)
helpertype = normal
stateno = 6010
ID = 6000
name = "Lin-Lin"
postype = p1
pos = -1, -66

[State 183, Anim]
type = changeanim
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0 && numhelper(6000)
trigger1 = (helper(6000), anim = 6010) && (helper(6000), animelem = 6)
value = 183
elem = 5

[State 183, Snd]
type = playsnd
trigger1 = animelem = 8
value = 4, 6


;==========<WIN 4>==========
[Statedef 184]
type = S
anim = 184

[State 184, Assert]
type = assertspecial
trigger1 = time < 60
flag = roundnotover

[State 184, Snd]
type = playsnd
trigger1 = animelem = 5
value = 4, 9
channel = 0

[State 184, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 7
channel = 1

[State 184, Snd]
type = playsnd
trigger1 = animelem = 7 || animelem = 12 || animelem = 17 || animelem = 22
value = 1, 7
volumescale = 67
channel = 1


;==========<WIN 5 - WEAPONS FALL>==========
[Statedef 185]
type = S
anim = 185

[State 185, Assert]
type = assertspecial
trigger1 = time < 60
flag = roundnotover

[State 185, Weapons]
type = helper
trigger1 = numhelper(185) < 4
trigger1 = animelemtime(14) = [1, 4]
helpertype = normal
stateno = 6100
ID = 185
name = "Weapon"
postype = p1
pos = ifelse(animelemtime(14) = 1, 10, ifelse(animelemtime(14) = 2, -14, ifelse(animelemtime(14) = 3, 22, -26))), -36


;--- WEAPONS ---
[Statedef 6100]
type = A
physics = N
anim = 6100
velset = 0, 0
sprpriority = -1

[State 6100, Accel]
type = veladd
trigger1 = 1
y = 0.167

[State 6100, Snd]
type = playsnd
trigger1 = animelemtime(2) < 0 && vel y > 0 && (pos y > -vel y)
value = 5, 4
volumescale = 75
persistent = 0

[State 6100, Anim]
type = changeanim
trigger1 = !time
value = ifelse(random < 200, 6100, ifelse(random < 250, 6105, ifelse(random < 333, 6110, ifelse(random < 500, 6115, 6120))))

[State 6100, Vel]
type = velset
trigger1 = vel y > 0 && (pos y > -vel y)
trigger1 = root, anim = 175 && root, animelemtime(7) < 0
x = 0
y = 0

[State 6100, Pos]
type = posset
triggerall = pos y >= 0
trigger1 = root, anim = 175 && root, animelemtime(7) < 0
trigger2 = animelemtime(2) > 0 && vel y > 0
y = 0

[State 6100, End]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 6101


[Statedef 6101]
type = A
physics = N
velset = 0, 0
sprpriority = 1

[State 6101, Pos]
type = posset
trigger1 = !time
y = 0

[State 6101, Flip]
type = turn
trigger1 = !time
trigger1 = random < 500

[State 6101, Snd]
type = playsnd
trigger1 = !time
trigger1 = numhelper(185)
trigger1 = helper(185), ID = ID
value = 5, 4

[State 6101, Anim]
type = changeanim
trigger1 = !time
trigger1 = selfanimexist(anim + 1)
value = anim + 1

[State 6101, End]
type = destroyself
trigger1 = roundstate = [0, 2]


;==========<CONTINUE?>==========
[Statedef 5500]
type = S
ctrl = 0
velset = 0, 0

[State 5500, Anim]
type = changeanim
trigger1 = !time
value = 5500


;==========<FALL RECOVERY>==========
[Statedef 5200]
type = A
movetype = H
physics = N

[State 5200, Anim]
type = changeanim
trigger1 = anim = 5035 && !animtime
value = 5050

[State 5200, Accel]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[State 5200, End]
type = selfstate
trigger1 = vel y > 0 && pos y >= -10
value = 5201


[Statedef 5201]
type = S
movetype = I
physics = N
anim = 5200
ctrl = 0
facep2 = 1

[State 5201, Pos]
type = posset
trigger1 = 1
y = 0

[State 5201, Vel]
type = velset
trigger1 = !time
x = -8
y = 0

[State 5201, Vel]
type = velmul
trigger1 = 1
x = 0.9

[State 5201, Snd]
type = playsnd
trigger1 = animelem = 1
value = 5000, 0
channel = 0

[State 5201, Snd]
type = playsnd
trigger1 = !time
value = 0, 5200

[State 5201, Flash]
type = palfx
trigger1 = !time
add = 255, 255, 255
sinadd = -255, -255, -255, 20
time = 5

[State 5201, FX]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8200
ID = 8200
name = "Recover FX"
postype = p1
pos = 0, ceil(-16 * const(size.yscale))
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 5201, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 5201, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


[Statedef 5210]
type = A
movetype = I
physics = N
anim = 5210
ctrl = 0

[State 5210, Snd]
type = playsnd
trigger1 = animelem = 1
value = 3, 3
channel = 0

[State 5210, Snd]
type = playsnd
trigger1 = !time
value = 0, 5200

[State 5210, Flash]
type = palfx
trigger1 = !time
add = 255, 255, 255
sinadd = -255, -255, -255, 20
time = 5

[State 5210, FX]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8200
ID = 8200
name = "Recover FX"
postype = p1
pos = 0, ceil(-74 * const(size.yscale))
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 5210, Accel]
type = veladd
trigger1 = 1
y = const(movement.air.gethit.airrecover.yaccel)

[state 5210, Vel]
type = velmul
trigger1 = !time
x = const(velocity.air.gethit.airrecover.mul.x)
y = const(velocity.air.gethit.airrecover.mul.y)

[state 5210, Vel]
type = veladd
trigger1 = !time
x = const(velocity.air.gethit.airrecover.add.x)
y = const(velocity.air.gethit.airrecover.add.y)

[state 5210, Up]
type = veladd
trigger1 = !time
trigger1 = command = "holdup"
y = const(velocity.air.gethit.airrecover.up)

[state 5210, Down]
type = veladd
trigger1 = !time
trigger1 = command = "holddown"
y = const(velocity.air.gethit.airrecover.down)

[state 5210, Forward]
type = veladd
trigger1 = !time
trigger1 = command = "holdfwd"
x = const(velocity.air.gethit.airrecover.fwd)

[state 5210, Back]
type = veladd
trigger1 = !time
trigger1 = command = "holdback"
x = const(velocity.air.gethit.airrecover.back)

[State 5210, Turn]
type = turn
trigger1 = !time
trigger1 = p2dist x < 0

[State 5210, NHB]
type = nothitby
trigger1 = time < 14
value = SCA
time = 1

[State 5210, Ctrl]
type = ctrlset
trigger1 = time >= 14
value = 1

[State 5210, Land]
type = changestate
trigger1 = vel y > 0
trigger1 = vel y > 0 && (pos y > -vel y)
value = 52


;========================<RETREAT>==========================
[Statedef 5230]
type = L
physics = N
movetype = I
anim = 5230
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 5230, Vel]
type = velset
trigger1 = !time
x = ifelse(command = "holdfwd", 5.263, -5.263)

[State 5230, Vel]
type = velset
trigger1 = animelem = 6
x = 0

[State 5230, Push]
type = playerpush
trigger1 = animelemtime(6) < 0
value = 0

[State 5230, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;========================<TARGET AIR RESET>========================
[Statedef 1115040]
type = A
physics = N
movetype = H
velset = 0, 0

[State 1115040, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = gethitvar(hitshaketime) + ceil((-gethitvar(yvel) + ((gethitvar(yvel) ** 2) - 4 * (0.5 * gethitvar(yaccel)) * (pos y)) ** 0.5) / gethitvar(yaccel)) + 2

[State 1115040, End]
type = selfstate
trigger1 = 1
value = 5020


;==================================================================================================
;===========================================<STATE -2>=============================================
;==================================================================================================
[Statedef -2]

[State -2, Hit Detection]
type = varset
trigger1 = movecontact = 1 && var(30) < 0
var(30) = hitpausetime
ignorehitpause = 1

[State -2, HitSound]
type = playsnd
trigger1 = movecontact = 1 && var(30) = hitpausetime
trigger1 = movehit = 1 && var(31) >= 0
value = 2, var(31)
channel = 2
ignorehitpause = 1

[State -2, GuardSound]
type = playsnd
trigger1 = moveguarded = 1
trigger1 = var(30) = hitpausetime
value = 2, 0
channel = 2
ignorehitpause = 1

[State -2, GuardSound]
type = playsnd
triggerall = moveguarded = 1
triggerall = var(30) = hitpausetime
trigger1 = stateno = 200 || stateno = 210 || stateno = 220 || stateno = 225 || stateno = 250
trigger2 = stateno = 400 || stateno = 410 || stateno = 420
trigger3 = stateno = 600 || stateno = 610 || stateno = 620
trigger4 = stateno = 4200 || stateno = 4205 || stateno = 4210 || stateno = 4225 || stateno = 4240 || stateno = 4260
value = 2, 12
channel = 2
freqmul = 0.9 + (random / 5000.0)
ignorehitpause = 1

[State -2, Sparks Custom]
type = helper
triggerall = map(mysparks)
triggerall = movecontact = 1 && var(30) = hitpausetime
trigger1 = movehit = 1
trigger1 = var(33) = 8010 || var(33) = 8011 || var(33) = 8012 || var(33) = 8013 || var(33) = 8014 || var(33) = 8020 || var(33) = 8021 || var(33) = 8022 || var(33) = 8023 || var(33) = 8024
trigger2 = moveguarded = 1
trigger2 = var(34) = 8000 || var(34) = 8001
helpertype = normal
stateno = ifelse(moveguarded, var(34), var(33))
ID = 8000
name = "Spark"
postype = p1
facing = ifelse(p2dist x < 0, -1, 1)
pos = ceil(cond(p2dist x > (var(36) * const(size.xscale)), (var(36) * const(size.xscale)), cond(p2dist x > (var(35) * const(size.xscale)), p2dist x, (var(35) * const(size.xscale))))), ceil(var(37) * const(size.yscale))
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State -2, Blood Custom]
type = helper
trigger1 = map(blood)
trigger1 = map(mysparks)
trigger1 = movehit = 1
trigger1 = var(30) = hitpausetime
trigger1 = var(33) = 8020 || var(33) = 8021 || var(33) = 8022 || var(33) = 8023 || var(33) = 8024
helpertype = normal
stateno = ifelse(var(33) = [8022, 8024], 7052, ifelse(var(33) = 8021, 7051, 7050))
ID = 7050
name = "Spark"
postype = p1
facing = ifelse(p2dist x < 0, -1, 1)
pos = ceil(cond(p2dist x > (var(36) * const(size.xscale)), (var(36) * const(size.xscale)), cond(p2dist x > (var(35) * const(size.xscale)), p2dist x, (var(35) * const(size.xscale))))), ceil(var(37) * const(size.yscale))
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State -2, Sparks Screenpack]
type = explod
triggerall = !map(mysparks)
triggerall = movecontact = 1 && var(30) = hitpausetime
trigger1 = movehit = 1
trigger1 = var(33) = 8010 || var(33) = 8011 || var(33) = 8012 || var(33) = 8013 || var(33) = 8014 || var(33) = 8020 || var(33) = 8021 || var(33) = 8022 || var(33) = 8023 || var(33) = 8024
trigger2 = moveguarded = 1
trigger2 = var(34) = 8000 || var(34) = 8001
anim = Fifelse(moveguarded, 40, ifelse(var(33) = 8014 || var(33) = 8024, 3, ifelse(var(33) = 8012 || var(33) = 8013 || var(33) = 8022 || var(33) = 8023, 2, ifelse(var(33) = 8011 || var(33) = 8021, 1, 0))))
ID = 8000
postype = p1
facing = ifelse(p2dist x < 0, -1, 1)
pos = ceil(cond(p2dist x > (var(36) * const(size.xscale)), (var(36) * const(size.xscale)), cond(p2dist x > (var(35) * const(size.xscale)), p2dist x, (var(35) * const(size.xscale))))), ceil(var(37) * const(size.yscale))
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State -2, Blood Screenpack]
type = explod
trigger1 = map(blood)
trigger1 = !map(mysparks)
trigger1 = movehit = 1
trigger1 = var(30) = hitpausetime
trigger1 = var(33) = 8020 || var(33) = 8021 || var(33) = 8022 || var(33) = 8023 || var(33) = 8024
anim = Fifelse(var(33) = [8022, 8024], 12, ifelse(var(33) = 8021, 11, 10))
ID = 7050
postype = p1
facing = ifelse(p2dist x < 0, -1, 1)
pos = ceil(cond(p2dist x > (var(36) * const(size.xscale)), (var(36) * const(size.xscale)), cond(p2dist x > (var(35) * const(size.xscale)), p2dist x, (var(35) * const(size.xscale))))), ceil(var(37) * const(size.yscale))
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1
ignorehitpause = 1

[State -2, Counter FX]
type = helper
trigger1 = movehit = 1
trigger1 = movecountered = 1
trigger1 = map(counterhit)
trigger1 = var(30) = hitpausetime
trigger1 = hitdefattr != SCA, AT
helpertype = normal
stateno = 8290
ID = 8290
name = "Counter FX"
postype = p1
pos = ceil(cond(p2dist x > (var(36) * const(size.xscale)), (var(36) * const(size.xscale)), cond(p2dist x > (var(35) * const(size.xscale)), p2dist x, (var(35) * const(size.xscale))))), ceil(var(37) * const(size.yscale))
ownpal = 1
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1

[State -2, Counter Flag]
type = mapset
trigger1 = numenemy
map = "counterhit"
value = (enemynear, movetype = A)
ignorehitpause = 1

[State -2, Hit Detection]
type = varset
trigger1 = 1
var(30) = -1
[State -2, Hit Detection]
type = varrangeset
trigger1 = movetype = I
trigger2 = movetype = H && time
first = 30
last = 37
value = -1
ignorehitpause = 1

[State -2, P2 Facing]
type = targetfacing
triggerall = movecontact = 1 && numtarget
triggerall = !(target, hitfall) && (target, time <= 1)
trigger1 = !(target, hitshakeover)
trigger2 = target, stateno = [150, 155]
value = ifelse(p2dist x >= 0, -1, 1)
ignorehitpause = 1

[State -2, P2 Air Reset]
type = targetstate
trigger1 = numtarget = 1
trigger1 = target, stateno = 5020
trigger1 = target, prevstateno != 1115040
trigger1 = target, alive && !(target, hitfall)
value = 1115040
ignorehitpause = 1

[State -2, P2 Air Reset Trip Guard]
redirectID = enemynear, ID
type = ctrlset
trigger1 = numenemy
trigger1 = enemynear, ctrl = 0
trigger1 = enemynear, stateno = 52
trigger1 = enemynear, prevstateno = [5000, 5999];5040 really
value = 1
ignorehitpause = 1

[State -2, P2 Safe Fall]
redirectID = enemynear, ID
type = selfstate
trigger1 = numenemy
;trigger1 = enemynear, command = "recovery";currently broken in Ikemen
trigger1 = (enemynear, command = "x" + enemynear, command = "y" + enemynear, command = "z") >= 2 || (enemynear, command = "$D")
trigger1 = (enemynear, stateno = [5030, 5050]) || (enemynear, incustomstate)
trigger1 = enemynear, pos y >= enemynear, const(movement.air.gethit.groundrecover.ground.threshold)
trigger1 = enemynear, gethitvar(isbound) = 0
trigger1 = enemynear, vel y > 0
trigger1 = enemynear, hitfall
trigger1 = enemynear, movetype = H
trigger1 = enemynear, statetype = A
trigger1 = enemynear, gethitvar(fall.recover)
trigger1 = enemynear, dizzy = 0
trigger1 = enemynear, alive
value = 5200
ignorehitpause = 1

[State -2, Juggle Increase]
type = varadd
trigger1 = numenemy
trigger1 = enemynear, hitfall
trigger1 = enemynear, time = [0, 1]
trigger1 = enemynear, gethitvar(damage)
trigger1 = enemynear, pausetime = 0
var(15) = 1
ignorehitpause = 1

[State -2, Juggle Reset Single]
type = varset
triggerall = numenemy = 1 && var(15)
trigger1 = (enemy, statetype != A) && (enemy, stateno != 5080) && (enemy, time >= 1)
trigger2 = (enemy, movetype != H) || (enemy, stateno = [120, 155]) || (enemy, ctrl) || !(enemy, hitfall)
var(15) = 0
ignorehitpause = 1

[State -2, Juggle Reset Simul]
type = varset
triggerall = numenemy >= 2 && var(15)
trigger1 = (enemynear(0), statetype != A) && (enemynear(0), stateno != 5080) && (enemynear(0), time >= 1)
trigger1 = (((enemynear(0), pos x) - pos x) * facing) >= 0
trigger2 = (enemynear(0), movetype != H) || (enemynear(0), stateno = [120, 155]) || (enemynear(0), ctrl) || !(enemynear(0), hitfall)
trigger2 = (((enemynear(0), pos x) - pos x) * facing) >= 0
trigger3 = (enemynear(1), statetype != A) && (enemynear(1), stateno != 5080) && (enemynear(1), time >= 1)
trigger3 = (((enemynear(1), pos x) - pos x) * facing) = [0, 160]
trigger4 = (enemynear(1), movetype != H) || (enemynear(1), stateno = [120, 155]) || (enemynear(1), ctrl) || !(enemynear(1), hitfall)
trigger4 = (((enemynear(1), pos x) - pos x) * facing) = [0, 160]
var(15) = 0
ignorehitpause = 1

[State -2, Free Juggling]
type = varset
trigger1 = roundstate != 2
var(15) = 0
ignorehitpause = 1

[State -2, Super Cancel Juggle]
type = varset
triggerall = time <= 10
triggerall = prevstateno = [1000, 4999]
trigger1 = stateno = 2000 || stateno = 2002 || stateno = 3200 || stateno = 3400 || stateno = 3500
var(15) = 0
ignorehitpause = 1

[State -2, Dark Force KO]
type = velset
trigger1 = !alive
trigger1 = var(20) != 0
trigger1 = stateno = 5030 && time <= 1
x = gethitvar(xvel) * 2.0
y = gethitvar(yvel) - 5.0
ignorehitpause = 1

[State -2, Dark Force Timer]
type = varadd
trigger1 = var(20) > 0
var(20) = ifelse(var(20) = 1, -2, -1)
ignorehitpause = 1

[State -2, Dark Force Over]
type = varset
triggerall = var(20) > 0
trigger1 = standby
trigger2 = roundstate != 2
var(20) = -1
ignorehitpause = 1

[State -2, Dark Force Over]
type = varset
trigger1 = !alive
trigger1 = var(20)
var(20) = 0
ignorehitpause = 1

[State -2, Dark Force Over]
type = mapset
trigger1 = var(20) = 0
trigger1 = map(armorhittime)
map = "armorhittime"
value = 0
ignorehitpause = 1

[State -2, Dark Force Over]
type = mapset
trigger1 = var(20) = 0
trigger1 = map(armorhitvel)
map = "armorhitvel"
value = 0
ignorehitpause = 1

[State -2, Dark Force BG]
type = bgpalfx
trigger1 = stateno = 770 || var(20) != 0
time = 8
color = 0
mul = 192 + ceil(cos(gametime / 20.0) * 64), 64 + ceil(cos(gametime / 20.0) * 16), 0
ignorehitpause = 1

[State -2, Dark Force Warning]
type = palfx
triggerall = !(gametime % 2)
trigger1 = var(20) = [1, 60]
trigger2 = var(20) = -1 && stateno != 4510
time = 1
add = 96, 96, 96
ignorehitpause = 1

[State -2, Dark Force HitOverride]
type = hitoverride
trigger1 = var(20) != 0
attr = SCA, AA, AP, AT
time = 600
stateno = 4500
ignorehitpause = 1

[State -2, Dark Force Stateno]
type = mapset
trigger1 = var(20) != 0
trigger1 = movetype != H
trigger1 = stateno != 4500 && (stateno != [5000, 5199])
map = "armorstate"
value = stateno
ignorehitpause = 1

[State -2, Dark Force Gethit Vel]
type = posfreeze
trigger1 = map(armorhittime) > 0
value = 1
ignorehitpause = 1

[State -2, Dark Force Gethit Vel]
type = posadd
trigger1 = map(armorhittime) > 0
x = map(armorhitvel)
ignorehitpause = 1

[State -2, Dark Force Gethit Dust]
type = explod
trigger1 = map(armorhittime) > 0
trigger1 = pos y = 0
trigger1 = !(gametime % 4)
anim = f120
sprpriority = -5
postype = p1
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State -2, Dark Force Gethit VelMul]
type = mapset
trigger1 = map(armorhitvel)
map = "armorhitvel"
value = 0.85 * map(armorhitvel)
ignorehitpause = 1

[State -2, Dark Force Gethit Time]
type = mapadd
trigger1 = map(armorhittime) > 0
map = "armorhittime"
value = -1
ignorehitpause = 1

[State -2, Dark Force Gethit Over]
type = mapset
trigger1 = map(armorhittime) <= 0
map = "armorhitvel"
value = 0
ignorehitpause = 1

[State -2, Dizzy Off - Reset];placeholder until dizzy points are individually specified or you can turn them off altogether
type = mapset
trigger1 = 1
map = "dizzyoff"
value = 0
ignorehitpause = 1

[State -2, Dizzy Off - Check Conditions]
type = mapset
trigger1 = var(20)
map = "dizzyoff"
value = 1
ignorehitpause = 1

[State -2, Dizzy Off - Save Points]
type = mapset
trigger1 = !map(dizzyoff)
map = "dizzysave"
value = enemynear, dizzypoints
ignorehitpause = 1

[State -2, Dizzy Off - Save Points]
type = mapset
trigger1 = map(dizzyoff)
trigger1 = map(dizzysave) < enemynear, dizzypoints
map = "dizzysave"
value = enemynear, dizzypoints
ignorehitpause = 1

[State -2, Dizzy Off - Freeze Points]
redirectID = enemynear, ID
type = dizzypointsset
trigger1 = map(dizzyoff)
trigger1 = numenemy
trigger1 = (enemynear, dizzypoints) < map(dizzysave)
value = map(dizzysave)
ignorehitpause = 1

[State -2, Dizzy Off - Freeze Points]
redirectID = enemynear, ID
type = dizzypointsset
trigger1 = map(dizzyoff)
trigger1 = numenemy
trigger1 = enemynear, dizzypoints <= 0
value = enemynear, dizzypointsmax
ignorehitpause = 1

[State -2, Unthrowable Flag]
type = mapadd
trigger1 = map(unthrowable) > 0
trigger1 = numenemy
trigger1 = enemynear, stateno != 52 || enemynear, ctrl || enemynear, time >= 6
map = "unthrowable"
value = -1
ignorehitpause = 1

[State -2, Unthrowable Flag - Jump Start]
type = mapset
trigger1 = numenemy
trigger1 = enemynear, stateno = 40
trigger1 = enemynear, anim != [0, 29]
map = "unthrowable"
value = 1
ignorehitpause = 1

[State -2, Unthrowable Flag - Hurt]
type = mapset
triggerall = numenemy
triggerall = enemynear, anim != 5300
triggerall = enemynear, stateno != const(statedizzy)
trigger1 = enemynear, stateno = [150, 155]
trigger2 = enemynear, stateno = 51
trigger2 = enemynear, prevstateno = [140, 155]
trigger3 = enemynear, stateno = 5040
trigger4 = enemynear, stateno = 5120;just in case
trigger5 = enemynear, stateno = [5200, 5201]
trigger6 = enemynear, movetype = H
trigger6 = enemynear, statetype != A
trigger7 = enemynear, movetype = H
trigger7 = enemynear, statetype = A
trigger7 = enemynear, hitfall = 0
map = "unthrowable"
value = 3
ignorehitpause = 1

[State -2, Damage Scaling - Reset]
type = varset
trigger1 = numenemy
trigger1 = enemynear, movetype != H
trigger1 = enemynear, dizzy = 0
trigger1 = enemynear, stateno != enemynear, const(statedizzy)
var(42) = 0 + (var(43) := 0)
ignorehitpause = 1

[State -2, Damage Scaling - Attack Connected Flag]
type = varset
trigger1 = movecontact = 1
trigger1 = hitcount <= 1
var(43) = 1
ignorehitpause = 1

[State -2, Damage Scaling - Base Formula]
type = varset
trigger1 = 1
fvar(10) = ifelse(var(42) <= 0, 1, ifelse(var(42) >= 9, 0.1, 1 - 0.1 * var(42)))
ignorehitpause = 1

[State -2, Damage Scaling - Chain Combos]
type = varset
trigger1 = numtarget
trigger1 = p2movetype = H
trigger1 = stateno = [200, 699]
trigger1 = prevstateno = [200, 699]
trigger1 = ifelse((stateno = 200 || stateno = 400), (prevstateno != 200 && prevstateno != 400 && prevstateno != 430), 1)
trigger1 = ifelse((stateno = 230 || stateno = 430), prevstateno != 430, 1)
fvar(10) = 0.75 * fvar(10)
ignorehitpause = 1

[State -2, Damage Scaling - Custom Combos]
type = varset
trigger1 = var(20)
trigger1 = numenemy
fvar(10) = ifelse((enemynear, receiveddamage) <= 0, 1.0, ifelse((enemynear, receiveddamage) >= 350, 0.1, 1 - ((enemynear, receiveddamage) * 0.00257)))
ignorehitpause = 1

[State -2, Damage Scaling - Override Fall Defense Bonus]
type = varset
trigger1 = numenemy = 1
trigger1 = enemynear, gethitvar(fallcount) >= 1
trigger1 = enemynear, const(data.fall.defence_mul) = 1.50;default
fvar(10) = fvar(10) / ((2.0 / 3.0) ** enemynear, gethitvar(fallcount))
ignorehitpause = 1

[State -2, Damage Scaling - Add Guts]
type = varset
trigger1 = numenemy
trigger1 = enemynear, receiveddamage >= (enemynear, lifemax * 0.50)
fvar(10) = fvar(10) * ifelse(enemynear, receiveddamage >= (enemynear, lifemax * 0.85), 0.75, ifelse(enemynear, receiveddamage >= (enemynear, lifemax * 0.70), 0.90, 0.95))
ignorehitpause = 1

[State -2, Damage Scaling - Root Multiplier]
type = attackmulset
trigger1 = 1
value = fvar(10) * ifelse(map(counterhit), 1.2, 1)
ignorehitpause = 1

[State -2, Reset Senpuubu Count]
type = varset
trigger1 = var(52) && statetype != A
var(52) = 0

[State -2, Remove Houtengeki FX]
type = removeexplod
trigger1 = numexplod(1400) && anim != 1410
ID = 1400
[State -2, Remove Pursuit FX]
type = removeexplod
trigger1 = numexplod(1455) && anim != 1450
ID = 1455

[State -2, Drop Target]
type = targetdrop
triggerall = numtarget = 1
trigger1 = target, stateno = 5040
trigger2 = target, stateno = [5200, 5210]
ignorehitpause = 1

[State -2, Dizzy Voice]
type = playsnd
trigger1 = time = 1
trigger1 = anim = 5300
value = 5000, 0
channel = 0

[State -2, Voice Pos]
type = sndpan
trigger1 = 1
channel = 0
pan = 0
ignorehitpause = 1

[State -2, Debug]
type = displaytoclipboard
trigger1 = 1
text = "Damage = %.1f%% Juggle = %d Unthrowable = %d"
params = fvar(10) * 100, var(15), (map(unthrowable) != 0)
ignorehitpause = 1

[State -2, Debug]
type = appendtoclipboard
trigger1 = 1
text = "\nBy PotS - https://network.mugenguild.com/pots/"
ignorehitpause = 1


;==================================================================================================
;===========================================<STATE -3>=============================================
;==================================================================================================
[Statedef -3]

[State -3, Turning Threshold]
type = assertspecial
trigger1 = roundstate = 2
trigger1 = backedgebodydist > 0
trigger1 = p2dist x >= -const(size.ground.back)
flag = noautoturn

[State -3, Infinite Prevention]
redirectID = enemynear, ID
type = hitfallset
trigger1 = numenemy
trigger1 = teammode != simul
trigger1 = enemynear, hitfall = 0
trigger1 = enemynear, movetype = H
trigger1 = enemynear, statetype != A
trigger1 = enemynear, gethitvar(hitcount) >= 50
trigger1 = stateno != [3000, 4999]
trigger1 = !var(20)
value = 1
ignorehitpause = 1

[State -3, ProjContact Reset]
type = varset
triggerall = var(18)
trigger1 = stateno != 1000 && stateno != 1050 && stateno != 1200 && stateno != 1220 && stateno != 1300 && stateno != 1320 && stateno != 3200 && stateno != 3400
trigger2 = stateno = 1000 && animelemtime(4) < 0
trigger3 = stateno = 1050 && animelemtime(4) < 0
trigger4 = stateno = 1200 && animelemtime(4) < 0
trigger5 = stateno = 1220 && animelemtime(4) < 0
trigger6 = stateno = 1300 && animelemtime(4) < 0
trigger7 = stateno = 1320 && animelemtime(4) < 0
trigger8 = stateno = 3200 && animelemtime(4) < 0
trigger9 = stateno = 3400 && animelemtime(5) < 0
var(18) = 0

[State -3, ProjContact Timer]
type = varadd
trigger1 = var(18)
var(18) = 1

[State -3, Projectile Flag]
type = mapset
trigger1 = 1
map = "projflag"
value = 0
ignorehitpause = 1

[State -3, Projectile Flag]
type = mapset
triggerall = map(projflag) != 1
trigger1 = stateno != 1000 && numhelper(1005)
trigger1 = helper(1005), stateno = 1005
trigger2 = stateno != 1050 && numhelper(1055)
trigger2 = helper(1055), stateno = 1055
trigger3 = stateno != 1200 && numhelper(1205)
trigger3 = helper(1205), stateno = 1205
trigger4 = stateno != 1220 && numhelper(1225)
trigger4 = helper(1225), stateno = 1205
trigger5 = stateno != 1300 && numhelper(1305)
trigger5 = helper(1305), stateno = 1305
trigger6 = stateno != 1320 && numhelper(1325)
trigger6 = helper(1325), stateno = 1325
trigger7 = stateno != 3200 && numhelper(3204)
trigger7 = helper(3204), stateno = 3204
trigger8 = stateno != 3400 && numhelper(3410)
trigger8 = helper(3410), stateno = 3410
trigger9 = var(20) > 0
map = "projflag"
value = 1
ignorehitpause = 1

[State -3, Cancel Reset]
type = varset
trigger1 = movetype = H
trigger2 = movereversed != [1, 2]
var(6) = 0
ignorehitpause = 1
[State -3, Cancel Check]
type = varset
triggerall = stateno = [200, 699]
trigger1 = (stateno = [200, 699]) && time <= 2 && !AIlevel
trigger1 = prevstateno != [200, 699]
trigger2 = stateno = 200
trigger3 = stateno = 210
trigger3 = animelemtime(5) < 0
trigger3 = (movecontact + movereversed) && (prevstateno != [200, 699])
trigger4 = stateno = 220
trigger4 = anim = 221 && animelemtime(5) < 0
trigger4 = (movecontact + movereversed) && (prevstateno != [200, 699])
trigger5 = stateno = 230
trigger5 = animelemtime(5) < 0
trigger5 = (movecontact + movereversed) && (prevstateno != [200, 699])
trigger6 = stateno = 400
trigger7 = stateno = 430
trigger8 = stateno = 440
trigger8 = animelemtime(4) < 0
trigger8 = (movecontact + movereversed) && (prevstateno != [200, 699])
trigger9 = stateno = 600
trigger9 = animelemtime(4) < 0
trigger9 = (movecontact + movereversed)
trigger10 = stateno = 630
trigger10 = animelemtime(4) < 0
trigger10 = (movecontact + movereversed) && (prevstateno != [200, 699])
var(6) = 1
ignorehitpause = 1

[State -3, Super Cancel Reset]
type = varset
trigger1 = movetype = H
trigger2 = movereversed != [1, 2]
var(7) = 0
ignorehitpause = 1
[State -3, Super Cancel Check]
type = varset
triggerall = stateno = [200, 1999]
trigger1 = var(6)
trigger2 = stateno = 1000 && var(18)
trigger2 = (anim = 1000 && animelemtime(10) < 0) || animelemtime(8) < 0
trigger3 = stateno = 1050
trigger3 = animelemtime(10) < 0 && var(18)
trigger4 = stateno = 1300
trigger4 = animelemtime(8) < 0 && var(18)
trigger5 = stateno = 1320
trigger5 = animelemtime(8) < 0 && var(18)
var(7) = 1
ignorehitpause = 1

[State -3, Super Cancel Flag Reset]
type = varset
trigger1 = var(21)
trigger1 = (stateno != [3000, 4999]) || movetype = H
var(21) = 0
ignorehitpause = 1
[State -3, Hyper Cancel Flag Reset]
type = varset
trigger1 = var(22)
trigger1 = (stateno != [3000, 4999]) || movetype = H
var(22) = 0
ignorehitpause = 1

[State -3, Movement Afterimage]
type = afterimage
triggerall = time = 1
trigger1 = stateno = 50 && var(3) = 3
trigger2 = stateno = 720 || stateno = 725
time = 2
timegap = 1
framegap = 4
length = 9
palbright = 0, 0, 0
palcontrast = 128, 128, 128
palpostbright = 0, 0, 0
paladd = 0, 0, 0
palmul = 0.9, 0.9, 0.9
trans = add1

[State -3, ES Snd]
type = playsnd
triggerall = time = 1
trigger1 = stateno = 1050 || stateno = 1120|| stateno = 1220 || stateno = 1320 || stateno = 1460
value = 7, 6
[State -3, ES Flash]
type = palfx
triggerall = time = [0, 25]
triggerall = !(gametime % 2)
trigger1 = stateno = 1050 || stateno = 1120|| stateno = 1220 || stateno = 1320 || stateno = 1460
time = 1
color = 0
mul = 256, 224, 0
add = 96, 96, 96
ignorehitpause = 1

[State -3, EX Flash]
type = palfx
triggerall = time > 0
trigger1 = stateno = 2000
trigger1 = time >= 43
trigger2 = stateno = 3200
trigger2 = time >= 43
trigger3 = stateno = 3400
trigger3 = time >= 43
trigger4 = stateno = 3501
time = 1
mul = 256 + ceil(cos(gametime / 10.0 * pi) * 128), 256 + ceil(sin(gametime / 10.0 * pi) * 128), 256 + ceil(-cos(gametime / 10.0 * pi) * 128)
color = 0
ignorehitpause = 1
[State -3, EX Flash]
type = palfx
triggerall = time > 0
triggerall = ((gametime % 20) = [8, 9]) || ((gametime % 20) = [18, 19])
trigger1 = stateno = 2000
trigger1 = time >= 43
trigger2 = stateno = 3200
trigger2 = time >= 43
trigger3 = stateno = 3400
trigger3 = time >= 43
trigger4 = stateno = 3501
time = 1
color = 256
ignorehitpause = 1

[State -3, AfterImagePersist]
type = afterimagetime
trigger1 = stateno = 50 || (stateno = [600, 699])
trigger1 = var(3) = 3 && vel y < -1
trigger2 = stateno = 720 || stateno = 725
time = 2
ignorehitpause = 1

[State -3, Scary Supers]
type = attackdist
trigger1 = stateno = [2000, 4999]
value = 320

[State -3, Corner Push]
type = varset
trigger1 = fvar(5)
trigger1 = abs(fvar(5)) < 1.0
fvar(5) = 0
[State -3, Corner Push]
type = varset
trigger1 = fvar(5)
trigger1 = numtarget
trigger1 = target, Hitover || (target, gethitvar(hitshaketime) > 0 && target, time <= 0)
fvar(5) = 0
[State -3, Corner Push]
type = varset
trigger1 = movecontact = 1 && numtarget
fvar(5) = target, gethitvar(xvel)
ignorehitpause = 1
[State -3, Corner Push]
type = posadd
triggerall = fvar(5)
triggerall = numtarget
triggerall = !hitpausetime && target, gethitvar(hitshaketime) <= 0
triggerall = (target, statetype = S || target, statetype = C) && !(target, gethitvar(yvel)) && !(target, hitfall)
trigger1 = target, frontedgebodydist <= abs(target, vel x)
trigger1 = (target, gethitvar(xvel) * target, facing) > 0
trigger2 = target, backedgebodydist <= abs(target, vel x)
trigger2 = (target, gethitvar(xvel) * target, facing) < 0
x = ifelse(target, frontedgebodydist <= 0, -1, 1) * (target, facing) * fvar(5)
[State -3, Corner Push]
type = varset
trigger1 = numtarget
trigger1 = target, gethitvar(hitshaketime) <= 0
fvar(5) = fvar(5) * 0.85

[State -3, Underground Juggling - OTG only]
redirectID = enemynear, ID
type = statetypeset
trigger1 = !(teammode = simul)
trigger1 = numenemy
trigger1 = enemynear, movetype = H
trigger1 = enemynear, statetype = A
trigger1 = enemynear, pos y > 0
trigger1 = enemynear, vel y > 0
trigger1 = (enemynear, stateno = [5020, 5109]) || (enemynear, incustomstate)
statetype = L
ignorehitpause = 1

[State -3, Underground Juggling - Fix Position]
redirectID = enemynear, ID
type = posset
trigger1 = numenemy
trigger1 = enemynear, pos y > 0
trigger1 = enemynear, time <= 0
trigger1 = enemynear, movetype = H
trigger1 = !(enemynear, hitshakeover)
y = 0
ignorehitpause = 1

[State -3, Jump Reset]
type = varset
trigger1 = var(3)
trigger1 = stateno != 40 && statetype != A
var(3) = 0

[State -3, Force Crossup]
type = width
triggerall = p2statetype != L
trigger1 = statetype = A && var(3) = 3
trigger2 = stateno = 100
trigger2 = animelemtime(7) >= 0 && animelemtime(10) < 0
edge = -2, 0
ignorehitpause = 1

[State -3, Shin P2BodyDist X]
type = mapset
trigger1 = numenemy
trigger1 = p2dist x <= (const(size.ground.front) + ifelse(enemynear, facing != facing, enemynear, const(size.ground.front), enemynear, const(size.ground.back)))
trigger1 = p2dist x >= (-const(size.ground.back) - ifelse(enemynear, facing != facing, enemynear, const(size.ground.back), enemynear, const(size.ground.front)))
map = "p2bodydistx"
value = 0
ignorehitpause = 1
[State -3, Shin P2BodyDist X]
type = mapset
trigger1 = numenemy
trigger1 = p2dist x > 0
trigger1 = p2dist x > (const(size.ground.front) + ifelse(enemynear, facing != facing, enemynear, const(size.ground.front), enemynear, const(size.ground.back)))
map = "p2bodydistx"
value = p2dist x - (const(size.ground.front) + ifelse(enemynear, facing != facing, enemynear, const(size.ground.front), enemynear, const(size.ground.back)))
ignorehitpause = 1
[State -3, Shin P2BodyDist X]
type = mapset
trigger1 = numenemy
trigger1 = p2dist x < 0
trigger1 = p2dist x < (-const(size.ground.back) - ifelse(enemynear, facing != facing, enemynear, const(size.ground.back), enemynear, const(size.ground.front)))
map = "p2bodydistx"
value = p2dist x - (-const(size.ground.back) - ifelse(enemynear, facing != facing, enemynear, const(size.ground.back), enemynear, const(size.ground.front)))
ignorehitpause = 1

[State -3, Variable Height]
type = playerpush
triggerall = statetype = A
triggerall = movetype != H && numenemy
triggerall = !(vel y > 0 && (pos y > -vel y))
triggerall = (vel x > 0 && (map(p2bodydistx) = [-vel x, 0])) || (vel x < 0 && (map(p2bodydistx) = [0, -vel x]))
trigger1 = p2statetype = S
trigger1 = (p2dist y - vel y) > (enemynear, const(size.height) + 13 - ifelse((stateno = [100, 106]), 16, 32))
trigger2 = p2statetype = C
trigger2 = (p2dist y - vel y) > (enemynear, const(size.height) - 13 - ifelse((stateno = [100, 106]), 16, 32))
trigger3 = p2statetype = L
trigger3 = (p2dist y - vel y) > (12 - ifelse((stateno = [100, 106]), 16, 32))
value = 0
ignorehitpause = 1

[State -3, GetHit Snd]
type = playsnd
triggerall = alive && time = 1
triggerall = stateno = 5000 || stateno = 5010
trigger1 = gethitvar(animtype) >= 2 && random < 500
trigger2 = gethitvar(animtype) = 1 && random < 375
trigger3 = gethitvar(animtype) = 0 && random < 250
value = 5000, (random % 2)
channel = 0
ignorehitpause = 1

[State -3, GetHit Snd]
type = playsnd
triggerall = alive && time = 1
trigger1 = (stateno = 5000 || stateno = 5010) && numenemy
trigger1 = gethitvar(fall) || (enemynear, hitdefattr = SCA, SA, HA)
trigger2 = (stateno = 5020 || stateno = 5070 || stateno = 5080)
trigger3 = (stateno = 5050 || stateno = 5100) && (prevstateno != [5000, 5199])
value = 5000, (random % 2)
channel = 0
ignorehitpause = 1

[State -3, Cheap KO]
type = assertspecial
trigger1 = stateno = [5000, 5010]
trigger1 = (prevstateno = [130, 131]) || (prevstateno = [140, 141]) || (prevstateno = [150, 153])
flag = nokosnd
ignorehitpause = 1

[State -3, Cheap KO]
type = changestate
trigger1 = !alive
trigger1 = stateno = [5000, 5010]
trigger1 = (prevstateno = [130, 131]) || (prevstateno = [140, 141]) || (prevstateno = [150, 153])
value = 5950
ignorehitpause = 1

[State -3, Reset Super Finish Var]
type = varset
trigger1 = var(23)
trigger1 = roundstate < 3
var(23) = 0

[State -3, Super Finish]
type = helper
triggerall = winKO
triggerall = roundstate = 3
triggerall = !numhelper(8600)
trigger1 = numhelper(2025)
trigger1 = helper(2025), var(18)
trigger1 = var(23) := 2000
trigger2 = numhelper(3204)
trigger2 = helper(3204), var(18)
trigger2 = var(23) := 3200
trigger3 = stateno = 3400 && (movecontact ||var(18))
trigger3 = var(23) := 3400
trigger4 = numhelper(3410)
trigger4 = helper(3410), var(18)
trigger4 = var(23) := 3400
trigger5 = stateno = 3501 && numtarget
trigger5 = var(23) := 3500
trigger6 = movehit = [1, 4]
trigger6 = stateno = [4200, 4299]
trigger6 = var(23) := 900
helpertype = normal
stateno = 8600
ID = 8600
name = "Super Finish"
postype = left
pos = 160, -120
ownpal = 1
ignorehitpause = 1
pausemovetime = 999
supermovetime = 999

[State -3, Victory Camera]
type = mapset
trigger1 = roundstate != 4
map = "victorycam"
value = 0

[State -3, Victory Camera]
type = mapset
trigger1 = winKO
trigger1 = stateno > 180
trigger1 = roundstate = 4
trigger1 = camerazoom <= 1
trigger1 = teammode = single || teammode = turns
map = "victorycam"
value = 1

[State -3, Victory Camera]
type = zoom
trigger1 = map(victorycam)
scale = (gamewidth / 320.0)
lag = 0.95
pos = pos x / (gamewidth / 320.0) * camerazoom, 0

[State -3, Victory BGM]
type = mapset
map = "winbgm"
trigger1 = roundstate != -1
value = 0

[State -3, Victory BGM]
type = mapadd
map = "winbgm"
trigger1 = roundstate = -1
trigger1 = teamleader = playerno
trigger1 = matchover
trigger1 = alive
trigger1 = win
value = 1

[State -3, Victory BGM];Not working
type = assertspecial
trigger1 = map(winbgm) = [1, 5]
flag = nomusic

[State -3, Victory BGM]
type = playbgm
trigger1 = map(winbgm) = 6
bgm = "llwin.mp3" 
loop = 0
volume = 100

[State -3, Antifreeze]
type = changestate
triggerall = !ctrl
triggerall = time >= 300
triggerall = roundstate = 2
trigger1 = pos y > 0 && screenpos y > gameheight
trigger2 = !selfanimexist(anim)
value = 5040

[State -3, Antifreeze]
type = targetstate
triggerall = numtarget = 1
triggerall = movetype != A
triggerall = target, time >= 300
triggerall = target, incustomstate
trigger1 = !numpartner
trigger2 = numpartner
trigger2 = partner, numtarget
trigger2 = (partner, target, ID) != (target, ID)
value = 51


;========================================<IKEMEN ENGINE FIXES>========================================
;Probably temporary

[State -3, OTG Position Fix]
redirectID = enemynear, ID
type = posset
trigger1 = numenemy
trigger1 = enemynear, pos y
trigger1 = enemynear, stateno = [5080, 5081]
y = 0
ignorehitpause = 1

[State -3, Drop Target];ReversalDef bug
type = targetdrop
trigger1 = numtarget
trigger1 = target, movetype != H
trigger1 = target, movereversed = 0

[State -3, Dizzy HitFall Reset]
redirectID = enemynear, ID
type = hitfallset
trigger1 = numenemy
trigger1 = enemynear, dizzy
trigger1 = enemynear, hitfall
trigger1 = enemynear, stateno = enemynear, const(statedizzy)
value = 0
ignorehitpause = 1

[State -3, No Redizzy]
type = mapset
trigger1 = numenemy
trigger1 = enemynear, dizzy
map = "redizzy"
value = 1
ignorehitpause = 1

[State -3, No Redizzy]
redirectID = enemynear, ID
type = dizzypointsset
trigger1 = map(redizzy)
value = enemynear, dizzypointsmax
ignorehitpause = 1

[State -3, No Redizzy]
type = mapset
trigger1 = numenemy
trigger1 = enemynear, movetype != H
map = "redizzy"
value = 0
ignorehitpause = 1

[State -3, Dizzy NHB];like classic games plus it bypasses the dizzy juggle issues
redirectID = enemynear, ID
type = nothitby
triggerall = numenemy
triggerall = enemynear, alive
triggerall = enemynear, stateno != const(statedizzy)
trigger1 = enemynear, dizzy
trigger2 = enemynear, dizzypoints <= 0
value = SCA
time = 2
ignorehitpause = 1

[State -3, Dizzy Points Regen Fix]
type = targetdizzypointsadd
trigger1 = numtarget
trigger1 = target, gethitvar(damage)
trigger1 = (target, dizzypoints - target, gethitvar(dizzypoints)) >= target, dizzypointsmax
value = -10
ignorehitpause = 1

[State -3, Allow Win Pose Selection]
type = assertspecial
trigger1 = !AIlevel
trigger1 = roundstate = [3, 4]
flag = postroundinput

[State -3, Allow Win Pose Selection]
type = assertspecial
trigger1 = !AIlevel
trigger1 = roundstate = [3, 4]
trigger1 = command = "/a" || command = "/b" || command = "/c" || command = "/x" || command = "/y" || command = "/z" || command = "/s"
trigger1 = command != "a" || command != "b" || command != "c" || command != "x" || command != "y" || command != "z" || command != "s"
flag = roundnotskip
